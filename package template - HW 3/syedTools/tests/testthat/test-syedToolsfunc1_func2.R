context("Homework functions")

test_that("func1 computes mean, var, sd", {
         x <- 1:10
         var1<-function(x){(1/length(x))*sum((x-mean(x))^2)}
         x_list<-list(mean=mean(x),var=var1(x),sd=sqrt(var1(x)))
         expect_identical(func1(x), x_list)
         })

test_that("func2 computes mean, var, sd", {
  x <- 1:10
  var1<-function(x){(1/length(x))*sum((x-mean(x))^2)}
  x_list<-list(mean=mean(x),var=var1(x),sd=sqrt(var1(x)))
  expect_identical(func2(x), x_list)
  save<-try(func2(NA),silent=TRUE)
  expect_identical(as.character(attr(save,"condition")),"Error: is.numeric(x) is not TRUE\n")
})


# func7 <- function(x, func, interval){
#   
#   f7 <- function(theta, x)
#   {sum(func(theta, x))}
#   
#   oout<- optimize(f7, maximum = TRUE, interval, x=x)
#   return(oout$maximum)
# 
# test_that("func7 computes the maximum likelihood estimate as in question 7 of hw1"{
#   
#})