# [데이터 유형]
# mode() - 변수 유형 확인
# is.변수유형 - 해당 변수가 내가 원하는 변수 유형이 맞는지 확인
x_data01 = 1
x_data02 = "문자"
x_data03 = FALSE
x_data04 = 1-2i
mode(x_data01) #nemeric   (숫자형)
mode(x_data02) #character (문자형)
mode(x_data03) #logical   (논리형)
mode(x_data04) #complex   (복소수형)
is.character(x_data1) #FALSE
is.character(x_data2) #TURE



# [벡터]
# c(), seq(), rep()
# 벡터 안에 값은 여러개 넣을 수 있지만, 대표값은 하나밖에 못가진다.
# 대표값은 우선순위에 따라 결정된다.
# 대표값 순서 : 문자형 -> 복소수형 -> 수치형 -> 논리형
    # c()
    # 일반적인 벡터 생성.
    x_vector01 = c(1, "love", TRUE, 2+3i)
    x_vector02 = c(10,20,30)
    x_vector03 = c(70,80,90)
    x_vector04 = c(x_vector02,x_vector03)
    # seq()
    # 순차 벡터 생성.
    x_seq01 = seq(from=1, to=10, by=2)
    x_seq02 = seq(from=1, to=10, length=5)
    # rep()
    # 반복 벡터 생성.
    x_rep01 = rep(c("a","b"), times=5)
    x_rep02 = rep(c("a","b"), each=5)
    x_rep03 = rep(c("a","b"), times=3, each=2)



# [형변환]
# as.유형() - 변환이 성공하지 못하면 NA 로 출력
as.numeric(x_data1)      # 1
as.character(x_data1)    #"1"



# [Names() - 벡터의 원소에 이름 부여]
# 이름이 없는 상태로 names 함수를 수행하면 Null 출력
x_vector01 = c(1, "love", TRUE, 2+3i)
names(x_vector01) = c("a", "b", "c", "d")
names(x_vector01)



# [벡터에서 일부 원소 추출]
x_vector01 = c(1, "love", TRUE, 2+3i)
x_vector01[1]
x_vector01[c(2,4)]



# [벡터 연산]
    # 벡터의 길이가 동일한 경우 두 벡터끼리 연산 가능.
    # 만약 벡터의 길이가 동일하지 않다면
    # 길이가 더 긴 벡터가 상대 벡터를 재사용함.
    # 연산은 가능하나 경고가 출력된다.
    x_vector02 = c(10,20,30)
    x_vector03 = c(70,80,90)
    x_vector04 = c(x_vector02,x_vector03)
    x_vector_sum01 = x_vector02 + x_vector03
    x_vector_sum02 = x_vector02 + x_vector04



# [factor(x, levels, labels, ordered) - 요인 생성함수]
    # x         : 벡터 지정
    # levles    : 그룹화 시킬 벡터를 지정.
    # labels    : levels에서 그룹화 시킨 그룹의 이름 지정.
    # ordered   : lebels의 순서. TRUE.
x_factor_data = c("A", "B", "C", "D", "E", "F")
x_factor = factor(x_factor_data,
                  levels=c("A", "B", "C", "D", "E", "F"), 
                  labels=c("첫 번째", "두 번째", "세 번째", "네 번째", "다섯 번째", "여섯 번째"))
x_factor = factor(x_factor_data, ordered=TRUE)
x_factor


# [행렬 병합 방법]
    # rbind()   - 가로로 행렬 병합.
    # cbind()   - 세로로 행렬 병합.
    # matrix()  - 옵션에 따라 행렬 생성.
    x_vector02 = c(10,20,30)
    x_vector03 = c(70,80,90)
    rbind(x_vector02, x_vector03)
    cbind(x_vector02, x_vector03)
    x_matrix01 = matrix(1:4, nrow=2, ncol=2)
    x_matrix02 = matrix(1:4, nrow=2, ncol=2, byrow=TRUE)


# [array(x, dim) - 벡터 생성]
    # dim   : 차원을 정의.
    #       : 차원이 원소의 개수를 초과할 경우
    #       : 기존 원소를 재사용하여 차원을 채움.
    x_array01 = array(1:10)
    x_array02 = array(1:10, dim=c(2,5))
    x_array03 = array(1:10, dim=c(3,3,4))



# [리스트] 
    # 단순한 요소가 아닌 형태를 전부 요소로 가질 수 있는 구조.
    # 형태 - vector, factor, matrix, array, dataFrame 등
    list_data01 = 1:5
    list_data02 = matrix(1:6, nrow=2, ncol=3)
    x_list = list(list_data01, list_data02)
        x_list[1]     # list의 첫 번째 원소(결과타입: 리스트)
        x_list[[1]]   # list의 첫 원소의 내용(결과타입: 벡터)


        
# [데이터프레임 data.fame()]
    # 기본적인 구조는 행렬(matrix)과 동일.
    # 행렬(matirx)는 한 가지 타입만 가질 수 있지만
    # 데이터프레임은 다양한 타입의 데이터를 가질 수 있다.
    # 단, 하나의 열은 하나의 타입만 반환.
    # 외부 데이터를 읽어올 시 데이터프레임으로 저장됨.
        # springsAsFactors  : 데이터 유형이 문자형인 경우
        #                   : 기본적으로 데이터프레임이 아닌 요인으로 변경됨.
        #                   : 이를 원치 않을경우 False로 지정.
        x_id        = 1:5
        x_age       = c(29,32,47,35,23)
        x_gender    = c("F","M","M","F","F")
        x_height    = c(163,177,172,152,169)
        x_DF01 = data.frame(x_id, x_age, x_gender, x_height)
        x_DF02 = data.frame(x_id, x_age, x_gender, x_height, stringsAsFactors = TRUE)
            nrow(x_DF01)       # 행의 개수
            ncol(x_DF02)       # 열의 개수
            rownames(x_DF01)   # 별도의 이름이 없으면 숫자1 부터 순서대로 출력.
            colnames(x_DF01)
            dim(x_DF01)        # 몇행 몇열인지 출력.
            dimnames(x_DF01)   # 행열의 각 이름을 출력.
            str(x_DF01)        # 지정된 데이터의 구조 출력.


            
# [패키지 다운로드 install.packages()]
install.packages("ggplot2")
install.packages("readxl")
install.packages("openxlsx")
library(ggplot2)
library(openxlsx)
library(readxl)



# [외부 파일 읽어오기]
    # 경로설정
    setwd("c:/R/edu01")
        # 구분자가 공백인 경우
        Category_space=read.table(file="./fdsa.txt", header=TRUE, sep="")
        
        # 구분자가 콤마인 경우
        Category_comma=read.csv(file="./comma.txt", header=TRUE, sep=",")
        
        # CSV 파일 읽는 경우
        Category_csv=read.csv(file="./인구주택총조사2015.CSV", header=TRUE, sep=",")

    # 저장하기
        # 일반적인 저장방법
        ebook = save(Category_excel, file="./ebook.Rdata")
        
        # 텍스트 데이터 저장방법
        write.table(iris, file="./iris.txt", sep=",")
        write.table(ebook, file="./ebook.txt", sep=",", row.names=FALSE)
        write.table(ebook, file="./ebook.xlsx")

    # 불러오기
    eload(file="./ebook.rdata")

    # 데이터 보기
    View(ebook)
    head(ebook, n=10)
    tail(ebook, n=10)




        
# 예제
english = c(90,80,60,70)
math= c(50,60,100,20)
class = c(1,1,2,2)
xTable = cbind(english,math,class)
xTable


# 예제
gender = c("남자","여자","남자")
age = c(26, 42, 35)
grade = c(3.8, 4.2, 2.6)
sal = c("2,700만원", "4,000만원", "3,500만원")
person = data.frame(gender, age, grade, sal)
mean(age)
mean(grade)


# 예제
a1=diamonds[,2]                          # 두 번째 컬럼
a2=diamonds[, c(2,3,7)]                  # 2,3,7 번째 컬럼
a3=diamonds[, 7:10]                      # 7부터 10까지 컬럼
a4=diamonds[, seq(from=2, to=10, by=2)]  # 2부터 10까지 2배수 컬럼


# 예제
b1=diamonds[, "cut"]
b2=diamonds[, grep("^c", colnames(diamonds))]
b3=diamonds[, grep("c", colnames(diamonds))]
b4=diamonds[, grep("$c", colnames(diamonds))]


# 예제
c1=diamonds[diamonds$cut == "fair",]
c2=diamonds[(diamonds$cut == "fair")&(diamonds$price>=18000),]
c3=diamonds[(diamonds$cut == "fair")|(diamonds$price>=18000),]
