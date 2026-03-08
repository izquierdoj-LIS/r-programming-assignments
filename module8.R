#https://rprogrammingjournalizquierdo.blogspot.com/

student6 <- read.csv(
  file.choose(),
  header = TRUE,
  stringsAsFactors = FALSE
)

head(student6)
str(student6)

install.packages("plyr")

library(plyr)

names(student6)
colnames(student6)

gender_mean <- ddply(
  student6,
  "Sex",
  summarise,
  GradeAverage = mean(Grade, na.rm = TRUE)
)

gender_mean

write.table(
  gender_mean,
  file = "gender_mean.txt",
  sep = "\t",
  row.names = FALSE
)

i_students <- subset(
  student6,
  grepl("i", Name, ignore.case = TRUE)
)

i_students

write.csv(
  i_students$Name,
  file = "i_students.csv",
  row.names = FALSE,
  quote = FALSE
)

write.csv(
  i_students,
  file = "i_students_full.csv",
  row.names = FALSE
)

file.exists("gender_mean.txt")
file.exists("i_students.csv")
file.exists("i_students_full.csv")
