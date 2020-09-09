install.packages("foreign")
library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)


# 파일 불러오기
raw_welfare = read.spss(file="koweps_hpc10_2015_beta1.sav",
                        to.data.frame = T)

    # 파일 확인
    welfare = raw_welfare
    head(welfare)
    tail(welfare)
    dim(welfare)
    str(welfare)
    summary(welfare)
    
    # 컬럼명 Rename
    welfare = rename(welfare,
                     sex = h10_g3,
                     birth = h10_g4,
                     marriage = h10_g10,
                     religion = h10_g11,
                     income = p1002_8aq1,
                     code_job = h10_eco9,
                     code_region = h10_reg7)



#####
## 나이와 월급의 관계
    # 나이 변수 검토
    class(welfare$birth)
    summary(welfare$birth)
    qplot(welfare$birth)
    
    # 나이 변수 전처리
    welfare$birth = ifelse(welfare$birth == 9999, NA, welfare$birth)
    table(is.na(welfare$birth))

    # 파생변수 만들기
    welfare$age = 2015 - welfare$birth + 1
    summary(welfare$age)
    qplot(welfare$age)
    
    # 나이 및 월급 관계 분석
    age_income = welfare %>% 
        filter(!is.na(income)) %>%
        group_by(age) %>%
        summarise(mean_income = mean(income))
    head(age_income)

    # 그래프 그리기기
    ggplot(data = age_income, aes(x = age, y = mean_income)) + geom_line()

    

#####
## 연령대에 따른 월급 차이
    # 연령대 변수 전처리
    welfare = welfare %>%
        mutate(ageg = ifelse(age<30, "young",
                             ifelse(age<=59, "middle", "old")))
    table(welfare$ageg)
    qplot(welfare$ageg)
    
    # 연령대 따른 월급 분석
    ageg_income = welfare %>%
        filter(!is.na(income)) %>%
        group_by(ageg) %>%
        summarise(mean_income = mean(income))
    ageg_income

    # 그래프 만들기
    ggplot(data = ageg_income, aes(x=ageg, y=mean_income)) + geom_col() + scale_x_discrete(limits = c("young", "middle", "old"))
    
    
    
#####
## 직업 별 월급 차이
    # 직업변수 검토 및 전처리
    class(welfare$code_job)
    table(welfare$code_job)    
    list_job = read_excel("Koweps_Codebook.xlsx", col_names = T, sheet=2)    
    welfare = left_join(welfare, list_job, id="code_job")
    welfare %>%
        filter(!is.na(code_job)) %>%
        select(code_job, job) %>%
        head(10)

    # 직업별 월급 차이 분석
    job_income = welfare %>%
        filter(!is.na(job) & !is.na(income)) %>%
        group_by(job) %>%
        summarise(mean_income = mean(income))
    head(job_income)
    
    # 내림차순 정렬 및 TOP10 추출
    top10 = job_income %>%
        arrange(desc(mean_income)) %>%
        head(10)
    top10
    
    # 그래프 제작
    ggplot(data = top10, aes(x=reorder(job, mean_income), y = mean_income)) + geom_col() + coord_flip()
    
    
    
#####
## 성별 직업 빈도
    # 성별 직업 빈도 분석
    job_male = welfare %>%
        filter(!is.na(job) & sex =="male") %>%
        group_by(job) %>%
        summarise(n = n()) %>%
        arrange(desc(n)) %>%
        head(10)
        
    job_female = welfare %>%
        filter(!is.na(job) & sex =="female") %>%
        group_by(job) %>%
        summarise(n = n()) %>%
        arrange(desc(n)) %>%
        head(10)
    
    # 그래프 그리기
    ggplot(data = job_male, aes(x = reorder(job, n), y = n)) + geom_col() + coord_flip()
    ggplot(data = job_female, aes(x = reorder(job, n), y = n)) + geom_col() + coord_flip()
    
    

#####
## 종교 유무에 따른 이혼율
    # 종교 변수 전처리
    class(welfare$religion)
    table(welfare$religion)    
    welfare$religion = ifelse(welfare$religion == 1, "yes", "no")    
    qplot(welfare$religion)    
    
    # 혼인 상태 전처리
    class(welfare$marriage)
    table(welfare$marriage)    
    welfare$group_marriage = ifelse(welfare$marriage == 1, "marriage",
                             ifelse(welfare$marriage == 3, "divorce", NA))        
    table(welfare$group_marriage)    
    table(is.na(welfare$group_marriage))    
    qplot(welfare$group_marriage)    
    
    # 종교유무에 따른 이혼률 분석
    religion_marriage = welfare %>%
        filter(!is.na(group_marriage)) %>%
        group_by(religion, group_marriage) %>%
        summarise(n = n()) %>%
        mutate(tot_group = sum(n)) %>%
        mutate(pct = round(n/tot_group*100, 1))
    
    religion_marriage = welfare %>%
        filter(!is.na(group_marriage)) %>%
        count(religion, group_marriage) %>%
        group_by(religion) %>%
        mutate(pct = round(n/sum(n)*100, 1))
        
    # 이혼 추출
    divorce = religion_marriage %>%
        filter(group_marriage == "divorce") %>%
        select(religion, pct)
    
    # 그래프 그리기
    ggplot(data = divorce, aes(x=religion, y=pct)) + geom_col()
    
    
    
#####
## 연령대별 이혼율
    # 표 만들기
    ageg_marriage = welfare %>%
        filter(!is.na(group_marriage)) %>%
        group_by(ageg, group_marriage) %>%
        summarise(n = n()) %>%
        mutate(tot_group = sum(n)) %>%
        mutate(pct = round(n/tot_group*100, 1))

    ageg_marriage = welfare %>%
        filter(!is.na(group_marriage)) %>%
        count(ageg, group_marriage) %>%
        group_by(ageg) %>%
        mutate(pct = round(n/sum(n)*100, 1))
    
    # 그래프 만들기
    ageg_divorce = ageg_marriage %>%
        filter(ageg !="young" & group_marriage == "divorce") %>%
        select(ageg, pct)
    ggplot(data = ageg_divorce, aes(x=ageg, y=pct)) + geom_col()
    
    
    
#####
## 연령대 및 종교 유무에 따른 이혼율 표
    # 각 상태별 비율표 만들기
    ageg_religion_marriage = welfare %>%
        filter(!is.na(group_marriage) & ageg !="young") %>%
        count(ageg, religion, group_marriage) %>%
        group_by(ageg, religion) %>%
        mutate(pct = round(n/sum(n)*100, 1))

    # 이혼율 표
    df_divorce = ageg_religion_marriage %>%
        filter(group_marriage == "divorce") %>%
        select(ageg, religion, pct)
        
    # 그래프
    ggplot(data = df_divorce, aes(x=ageg, y=pct, fill=religion)) + geom_col(position = "dodge")
