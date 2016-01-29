
#Preparation of user-friendly mtcars dataset

library(datasets)

mc <- mtcars
mc$am <- as.factor(mc$am); levels(mc$am) <- c("Automatic", "Manual")
mc$cyl <- as.factor(mc$cyl);  
mc$vs <- as.factor(mc$vs); levels(mc$vs) <- c("V Engine", "S Engine")
mc$gear <- as.factor(mc$gear)
mc$carb <- as.factor(mc$carb)

#make field names more user-friendly
names(mc) <- c(
    "MPG", 
    "Cylinders", 
    "Displacement", 
    "Horsepower", 
    "RearAxleRatio",
    "Weight",
    "QuarterMileTime",
    "vsEngine", 
    "Transmission", 
    "Gears", 
    "Carburetors"
    )

#list of factor variables to be used in user interface
fvar <- names(mc)[sapply(names(mc), FUN=function(x) is.factor(mc[,x]))]
