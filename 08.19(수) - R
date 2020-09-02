#1번
custlist = data.frame(c(3, 2, 7, 1),
                      c("seoul", "busan", "inchon", NA),
                      c(3, 2, 1, 5))

#2번
names(custlist) = c("prchs", "location", "years") 

#3번
str(custlist)

#4번
names(custlist)

#5번
custlist %>% head(2)

#6번
nrow(custlist)

#7번
custlist$name = c("jon", "may", "kim", "park")

#8번
custlist = rbind(custlist, c(4, "busan", 2, "yoon"), c(5, "busan", 4, "choi"))

#9번
point = c(32, 21, 11, 33, 0, 0)
plot(point)

#10번
length(point)

#11번
str(point)

#12번
is(point)

#13번
mean(point)

#14번
median(point)

#15번
max(point)

#16번
range(point)

#17번
point1 = c(point, point+5)

#18번
is.na(custlist$location)

#19번
custlist %>% filter(!is.na(custlist$location))

#20번
custlist$age = rep(c(23,27), times=3)

#21번
plot(custlist$age, col='blue')

#22번
custlist = rename(custlist, c("name" = "lastname"))

#23번
custlist$firstname = c("tim", "ma", "mo", "ne", "sh", "ih")

#24번
custlist$fullname = paste(custlist$firstname, custlist$lastname)

#25번
custlist %>% arrange(age)

#26번
custlist %>% arrange(desc(age))

#27번
custlist %>% filter(custlist$age >= 24)

#28번
custlist %>% filter(custlist$fullname == "sh yoon")

#29번
custlist %>% filter(custlist$age >= 25 & custlist$years < 3)

#30번
custlist %>% filter(custlist$location %in% c("busan", "inchon"))

#31번
nrow(custlist %>% filter(custlist$location %in% c("busan", "inchon")))

#32번
custlist$age = ifelse(custlist$fullname == "mo kim", 24, custlist$age)

#33번
custlist$isOld = ifelse(custlist$age >= 24, "old", "young")

#34번
custlist %>% arrange(desc(age)) %>% select(fullname) %>% head(2)

#35번
custlist$location = ifelse(is.na(custlist$location), "unknown", custlist$location)

#36번
locpop = data.frame(location = c("seoul", "busan", "inchon"),
                    custpop = c(101, 98, 78))

#37번
custlist1 = left_join(custlist, locpop, by = "location")
    



# 1번
bnk01 = read.csv("./bank_fa.csv")

# 2번
bnk0101 = data.frame(bnk01$job, bnk01$marital)

# 3번
bnk0102 = bnk01 %>% filter(bnk01$marital == "married")    

# 4번
nrow(bnk01 %>% filter(balance > 20000))

# 5번
balance_plot = bnk01$balance
plot(sort(balance_plot))    

# 6번
nrow(bnk01 %>% filter(balance < 1000))

# 7번
bnk01 %>% filter(loan == "yes" & age>=20 & age<30)  %>% summarise(mean(balance))

# 8번
bnk01 %>% filter(y == "yes")  %>% summarise(mean(age))        

# 9번
bnk01 %>% filter(y == "no")  %>% summarise(mean(balance))   

# 10번
bnk01 %>% filter(y == "yes")  %>% summarise(mean(balance))   

# 11번
bnk01$agegroup <- cut(bnk01$age, 
                      breaks = c(10,20,30,40,50,60,70,80,90,100),
                      include.lowest = TRUE, 
                      right = FALSE, 
                      labels = c('10대','20대','30대','40대','50대','60대','70대','80대','90대')
)

# 12번
bnk01$job_kd = paste(substr(bnk01$job, 1, 3))




#3-1번
hire = read.csv("./101_DT_1DA7001S_M.csv")

#3-2번
names(hire)[4] = "term201910"

#3-3번
hire = hire[, 1:4]

#3-4번
hire %>% filter(hire$성별 == "계")

#3-5번
whole = nrow(hire)
man = nrow(hire %>% filter(hire$성별 %in% c("남자", "농가남자", "비농가남자")))
man = nrow(hire %>% filter(hire$성별 %in% c("여자", "농가여자", "비농가여자")))
hire %>% summarise(man_hire = man/whole*100, woman_hire = woman/whole*100)

#3-6번
library(readxl)
car = read_excel(path = "./자동차등록대수현황_연도별.xlsx", col_names = TRUE)

#3-7번
library(plotly)
pie(table(car), title="자동차등록대수현황황")
    
    
