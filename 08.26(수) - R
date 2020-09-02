# 교차분석
    # 데이터 타입
        # 범주형 : 각각의 항목이 명목적으로 지정된 값 모임.
            # ex) 월별, 질병 유무 ...
        # 연속형 : 단위가 계속해서 증가하는 값 모임.
            # ex) 키, 몸무게 ...
    # 적합도 분석 : 범주형 변수가 1개일 때.(카이제곱(X^2))
        # 변수들 사이에 차이가 있는지를 확인.
        # P가 0.05보다 큰지 작은지 여부 확인.
    # 독립성 검정 : 범주형 변수가 2개 이상일 때.
        # <예제>
        # 요일 별 휴대폰 a/s 처리 건수
        # 귀무가설 : 요일별 처리 건수 차이는 없다.
        # 대립가설 : 요일별 처리 건수 차이는 있다.
        
        # 경로설정
        setwd("c:/R/Test")
        
        # 데이터 불러오기
        service = read.csv("service.csv", header=T)
        serviceFreq = c(table(service[1]))
        
        # 데이터 백분율 계산
        round(prop.table(table(service[1]))*100,1)
        
        # 교차분석 (카이테스트)
        chisq.test(serviceFreq)
        
        # 결론
        # p-value = 0.4799 > 0.05 이므로 대립가설 기각하고 귀무가설 채택.
    


# T-Test
    # 평균을 기반으로 한다.
        # 독립변수 = 영향을 주는 변수.
        # 종속변수 = 영향을 받는 변수.
    # Var-Test(등분산검정) 을 통해 P 값의 여부를 먼저 확인.
        # P-value가 0.05 이상이면 T-Test
        # P-value가 0.05 이하이면 wilcox-Test 수행.
    # 테스트 유형
        # One-Sample
            # 기준점이 반드시 필요.
            # 기준점을 토대로 차이를 분석.
            # ex) 전국 Toeic 평균점수와 학원 Toeic 평균점수 비교.
                # <예제>
                # B회사에서 판매중인 아이스크림의 무게는 320g 이다.
                # 하지만 소비자들은 이 아이스크림의 무게가 320g이 아니라고 주장.
                # 따라서 소비자단체는 아이스크림의 무게를 검사하고자 한다.
                
                # 경로 설정.
                setwd("c:/R/ch07")
                
                # 데이터 불러오기
                ost = read.csv('./01.OST.csv', header = T)
                ost = round(ost, 2) #소수점 처리
                
                # 통계치 확인
                library(psych)
                describe(ost)
                
                # 그래프 생성
                opar = par(no.readonly = T)
                par(mfrow=c(1,2))
                boxplot(ost)
                hist(ost$weight,
                     breaks = 10,
                     col    = "red",
                     xlab   = "무게", ylab="개수",
                     ylim   = c(0,25),
                     main   = "아이스크림 무게에 대한 히스토그램 및 정규분포")
                
                # 통계분석
                t.test(ost,
                       alternative = c("two.sided"),
                       mu = 320.0,
                       conf.level = 0.95)
                
                # 결론
                # P-Value = 2.2e-16 < 0.05 으로 해당 결과는 통계적으로 유의하다.
                # 아이스크림의 평균 무게는 x = 295.44 로
                # 320g 보다 12.25g이 적다.
                
                
        # 독립표본
            # 두 집단에 대해 비교.
            # 비교가 상대적.
            # 두 집단의 데이터 수량이 달라도 상관없음.
            # 등분산검정(var.test)를 통해 귀무가설(T.test) / 대립가설(wilcox) 결정.
                # <예제>
                # 타이어를 교체하고자 한다.
                # A사 타이어와 B사 타이어 중 수명이 긴 타이어는 무엇인가?
                    
                # 경로 설정
                setwd("c:/R/ch07")
                
                # 데이터 불러오기
                ist = read.csv('./02.IST.csv', header=T)
                ist$t_group = factor(ist$t_group, 
                                     levels = c(1, 2), 
                                     labels = c('A Tire', 'B Tire'))
                ist = round(ist, 2) # 소수점 처리
                
                # 그룹별 평균 도출
                tapply(t_time, t_group, summary)
            
                # 변수 요약통계 확인
                library(psych)
                describeBy(t_time, t_group, mat = T)
                
                # 그래프 생성
                opar = par(no.readonly = T)
                layout(matrix(c(1, 1, 2, 3), 2, 2, byrow = T))
                boxplot(t_time ~ t_group)
                hist(t_time[t_group == 'A Tire'])
                hist(t_time[t_group == 'B Tire'])
                
                # 통계분석
                var.test(t_time ~ t_group, data = ist)  #P-Value = 0.4192 > 0.05
                t.test(t_time ~ t_group,
                       data = ist,
                       alternative = c("two.sided"),
                       var.equal = TRUE,
                       conf.level = 0.95)
                
                # 결론
                # 등분산검정 결과 p-value가 0.05보다 큰 0.42로 T.test 수행.
                # 두 회사의 타이어에는 통계적으로 유의한 차이 존재.
                # B사 타이어의 수명이 더 길다.
   
                    
        # 대응표본
            # 전과 후를 비교.
            # 전후 비교를 통해 분석.
            # 비교 집단의 데이터 수량이 반드시 같아야함.
                # <예제>
                # 3개월 안에 살이 빠지는 다이어트 의약품.
                # 3개월 전후 체중비교.
                # 약은 효과가 있는가?
                
                # 경로 설정
                setwd("c:/R/ch07")
                
                # 데이터 불러오기
                pst = read.csv('./03.PST.csv', header=T)
                pst = round(pst, 2) # 소수점 처리
                dif = c(pst$post-pst$pre)
                
                # 변수 요약통계 확인
                library(psych)
                describe(pst)
                describe(dif)
                
                # 그래프 생성
                opar = par(no.readonly = T) # 화면 분할
                layout(matrix(c(1, 2, 3, 3), 2, 2, byrow = TRUE))
                hist(pst$pre, main = "사전 몸무게")
                hist(pst$post, main = "사후 몸무게")
                boxplot(dif, main = "몸무게 차이")
                
                # 통계분석
                t.test(pst$post, pst$pre, 
                       alternative = c("two.sided"),
                       paired = TRUE,
                       conf.level = 0.95)
                
                # 결론
                # P-Value = 0.00176 < 0.05 이므로 유의미한 모델임.
                # 섭취 전과 섭취 후는 통계적으로 유의한 차이 존재.
                # 다이어트 약 섭취 후 몸무게가 t = 3.63 만큼 감소.


# ANOVA 분석
    # <예제>
    # 프랜차이즈가 강동, 강서, 강남, 강북 4 곳에 위치.
    # 고객조사 실시 결과 가장 만족도가 낮은 매장은?
        
        # 경로 설정
        setwd("c:/R/ch08")
        
        # 데이터 불러오기
        owaData = read.csv('./04.OWA.csv', header = T)
        owaData$group = factor(owaData$group,
                               levels = c(1:4),
                               labels = c("강남", "강서", "강동", "강북"))
        
        # 기본 통계치 확인
        library(psych)
        describeBy(owaData$score, owaData$group, mat=T)

        # 그래프 그리기
        install.packages("ggplot2")
        library(ggplot2)
        ggplot(owaData, aes(x=score)) +
            geom_histogram(binwidth = 10) +
            facet_grid(.~group) +
            ggtitle("매장별 만족도") +
            theme_classic()
        
        # 통계분석
        install.packages("car")
        library(car)
        bartlett.test(score ~ group, data=owaData)
        leveneTest(score ~ group, data=owaData, center = mean)
        
        
    # <예제>
    # 6개월 어학 프로그램.
    # 참여자 대상으로 참여전 / 3개월 / 6개월 후 테스트 진행.
    # 프로그램 효과는 있었는가? 있었다면 언제부터 있었는가?
        
        # 경로 설정
        setwd("c:/R/ch08")
        
        # 데이터 불러오기
        rmaData = read.csv('./05.RMA.csv', header = T)
        rmaData$group = factor(rmaData$time,
                               levels = c(1:3),
                               labels = c("사전", "3개월", "6개월"))
        str(rmaData)
        
