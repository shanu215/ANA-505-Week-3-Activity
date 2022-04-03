#This code chunk identifies my working directory 
#and sets it to where I want to save and fetch files
#TASK: fill in between the parentheses if needed. 
#If not needed, make the two lines a comment
getwd()
setwd("C:/mydata")

#This brings the 'women' data into my environment from Base R (Run this)
women

#This code saves the women data as a dataframe with a new name
#TASK: Save the women dataset with a new name
new_women <-data.frame(women)

#This code chunk allows me to see the top 2 rows of my data
#TASK: Write the function that returns the top rows
head(new_women, n=2)

#This code chunk shows me the internal structure 
#Task: Write the function that shows the number of rows, columns, column names, class of columns   
nrow(new_women)
ncol(new_women)
colnames(new_women) 
class(colnames(new_women))

#This code chunk shows me some basic summary stats
#Such as Min, Max, Mean. Quartiles...
#Task: Write the function that gives summary stats
summary(new_women)

#This allows me to apply the function to just one certain column
#Task: Write the function to return the Mean of just the height column
mean(new_women$height)

#This allows me to save one column as its own object ('values' in the Environment)
#Task: Write the function to create an object for just the Weight column 
#and write the function to create an object for just the Height column 
#(these should show as values in the environment window, not as datasets)

heightnewwom <- c(58,59,60,61,62,63,64,65,66,67,68,69,70,71,72)
weightnewwom <- c(115,117,120,123,126,129,132,135,139,142,146,150,154,159,164)

#This takes the individual objects ('values' in the Environment) and creates a dataframe
#I can see the Data in the Environment 
#Task: Write the function to create a data.frame from the height and weight values you just created
### Create Data Frame


dfnewwomen <- data.frame(heightnewwom, weightnewwom)
print (dfnewwomen)

#This code chunk creates a subset from my dataset
#Note that the subset only appears in the Console (not the Environment)
#Task: Write the function to create a subset of the data where the height is > 65
#If I wanted to save the subset, I would need to name it as done in the code above
newdata <- subset(women, heightnewwom > 65)
print(newdata)

#This shows me how many rows are in my dataset and
#TASK: Write the function that returns the number of rows
nrow(women)

#This shows me how many columns are in my dataset
#TASK: Write the function that returns the number of columns
ncol(women)

#This also shows me how many rows and columns with just one function
#TASK: Write the function that returns the number of rows and columns with just one command
str(dfnewwomen)

#This code will install the ggplot2 package
#TASK: Write the function that installs the ggplot2 package
install.packages("ggplot2")  
  
#This code calls the ggplot2 package so I can use its functions
#Task: Write the function that 'calls' the ggplot2 package
# Load ggplot2
library("ggplot2")

#This produces a scatter plot of the height and weight columns
#Task: replace the dataset name and column names in the plot function below 
#to produce a scatter plot of height and weight
ggplot(women, aes(x=heightnewwom, y=weightnewwom)) + 
  geom_point()

#Optional 'Just for fun' TASK: Change the arguments for the geom point and see what happens to the plot
ggplot(women, aes(x=heightnewwom, y=weightnewwom)) + 
  geom_point(shape = 21, colour = "black", fill = "white", size = 5, stroke = 5)
