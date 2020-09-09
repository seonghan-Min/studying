# [빈도와 백분율]
    # 빈도 = 해당 요소의 총 개수( Count ).
        # 명령어 : Table()
        # Sort 함수로 오름차순, 내림차순을 결정할 수 있다.
        # 이 때 Default 값은 내림차순 (False) 이다.
        table(diamonds$cut)
        table(diamonds$color)
        table(diamonds$clarity)
        sort(table(diamonds$cut), decreasing=TRUE)
        sort(table(diamonds$color), decreasing=TRUE)
        sort(table(diamonds$clarity), decreasing=TRUE)
    # 백분율 = 전체 대비 빈도의 비율.
        # 명령여 : Prop.table()
        # round 함수를 사용하여 백분율을 반올림 할 수 있다.
        # 이 때 digits 로 원하는 소숫점 자리 수 까지 볼 수 있다.
        prop.table(table(diamonds$cut))*100
        prop.table(table(diamonds$color))*100
        prop.table(table(diamonds$clarity))*100
        round(prop.table(table(diamonds$cut))*100, digits=1)
        round(prop.table(table(diamonds$color))*100, digits=1)
        round(prop.table(table(diamonds$clarity))*100, digits=1)
    # prettyR Package
        # PrettyR 에 내포된 freq() 함수를 사용.
        # '%' 는 백분율을 의미.
        # '$!NA' 는 결측치를 제외한 값으로 구한 유효백분율을 의미.
        library(prettyR)
        freq(diamonds$cut)


        
# [이상치 정제]
    # 이상치 제거
        # 이상치 포함된 데이터 생성
        outlier = data.frame(sex = c(1,2,1,3,2,1), score = c(5,4,3,4,2,6))
        table(outlier$sex)
        table(outlier$score)    
        
        # 결측 처리
        outlier$sex = ifelse(outlier$sex == 3, NA, outlier$sex)
        outlier$score = ifelse(outlier$score > 5, NA, outlier$score)
        
        # 결측치 제외 분석
        outlier %>%
            filter(!is.na(sex) & !is.na(score)) %>%
            group_by(sex) %>%
            summarise(mean_score = mean(score))

    # 극단적인 이상치 제거
        # 변수로 상자 지정
        boxplot(mpg$hwy)
        
        # 위에서 그린 상자의 통계치 출력
        boxplot(mpg$hwy)$stats
        
        # 결측 처리
        mpg$hwy = ifelse(mpg$hwy < 12 | mpg$hwy >37, NA, mpg$hwy)
        table(is.na(mpg$hwy))        
        
        # 결측치 제외 분석
        mpg %>%
            group_by(drv) %>%
            summarise(mean_hwy = mean(hwy, na.rm = T))

    # 예제
        # 이상치 포함 데이터 생성
        mpg = as.data.frame(ggplot2 :: mpg)
        mpg[c(10,14,58,93), "drv"] = "K"
        mpg[c(29,43,129,203), "cty"] = c(3,4,39,42)    
        
        # drv 이상치 데이터 확인
        table(is.na(mpg$drv))
        mpg$drv = ifelse(mpg$drv %in% c("4", "f", "r"), mpg$drv, NA)    
        
        # 상자 그림 생성 및 통계치 산출
        boxplot(mpg$cty)$stats
        mpg$cty = ifelse(mpg$cty < 9 | mpg$cty > 26, NA, mpg$cty)    
        
        # 결측치 제외 분석
        mpg %>%
            filter(!is.na(drv) & !is.na(cty)) %>%
            group_by(drv) %>%
            summarise(mean_cty = mean(cty))
