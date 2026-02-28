https://rprogrammingjournalizquierdo.blogspot.com/

data("mtcars")

head(mtcars)

str(mtcars)

head(mtcars)

str(mtcars)

summary(mtcars)

plot(mtcars$mpg, mtcars$hp)

methods(summary)
methods(plot)

method <- getS3method("summary", "data.frame")

my_list <- list(a = 1, b = 2)
summary(my_list)

methods(summary)

s3_obj <- list(name = "Myself", age = 29, GPA = 3.5)
class(s3_obj) <- "student_s3"

print.student_s3 <- function(x) {
  cat("Student Name:", x$name, "\n")
  cat("Age:", x$age, "\n")
  cat("GPA:", x$GPA, "\n")
}

print(s3_obj)
class(s3_obj)


setClass("student_s4",
         slots = c(name = "character",
                   age = "numeric",
                   GPA = "numeric"))

s4_obj <- new("student_s4",
              name = "Myself",
              age = 29,
              GPA = 3.5)

setMethod("show", "student_s4",
          function(object) {
            cat("Student Name:", object@name, "\n")
            cat("Age:", object@age, "\n")
            cat("GPA:", object@GPA, "\n")
          })

print(s4_obj)
class(s4_obj)

