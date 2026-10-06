structure_name <- data

# scalars
sc1 <- 1
sc2 <- 50
sc3 <- 10324

# vectors
vc1 <- c(1,2,3)
vc2 <- c(sc1, sc2, sc3)
vc3 <- 1:10
vc4 <- c(1:10)
# both vc3 and vc4 work 
vc5 <- 1000:1009

# factors 
fc1 <- "a"
fc2 <- factor(c("a","b"))
# dan code:
fc3 <- factor(c(1,3), 
              levels = 1:3, 
              labels = c("cat", "platypus", "dog"))
fc3

# we technically have the names, but in fc3 we also show R we only have value 1,3 of that - I don't really see the point
fc4 <- factor(c("cat", "platypus", "dog"))
fc4     

fc5 <- factor(c("a","b","c","d","e","f","g","h","i","j"))

# dataframes
df1 <- data.frame(vc4, vc5, fc5)

# list, you can put whatever you want
list1 <- list(sc1, vc1, fc1, df1)
list1

# check data structure
str(df1)
str(list1)

# show column names
names(df1)

# look at my data with my eyeballs - View with capital View - wtf
View(df1)
# only first 6 rows
head(df1)
# only last 6 rows
tail(df1)
# how many elements
length(df1)
# how many rows
nrow(df1)
# how many columns
ncol(df1)
# how many dimensions
dim(df1)

summary(df1)

# change stuff
vc1[1] <- 20
vc1
# show variable 1 to 3
vc1[1:3]
# don't show number 3
vc1[-1]
# index by logic, for whatever reason
vc5[c(TRUE, TRUE, FALSE, TRUE, TRUE, FALSE, TRUE, TRUE, FALSE, TRUE)]

df1
# show row number 4, column number 2
df1[4,2]

# reassign row number 4, column number 2
df1[4,2] <- 1111
df1

# only show row, leave column blank
df1[4,]
# only show column, leave row blank
df1[,2]

# show column by name 
df1[, "vc5"]

# use extract
df1$fc5

# pull data frame out of list, by number in list, use two brackets
list1[[4]]



### FUNCTIONS!

sum(vc5)

# sum values in columns - colSums - i have cat variables so doesnt work
colSums(df1)
rowSums(df1)

# is x same as y?
4 == 4
4 == 5

# is x not equal as y?
4 != 4
4 != 5

# greater than smaller than
1 < 3 
1 > 3

# greater / smaller or equal
1 <= 3 
1 >= 3

# is value in vector
110 %in% vc3
vc3
10 %in% vc3

# & and, so you can how 2 statements and ask for true or false for both AMAZING
4 < 3 & 3 < 2
4 > 3 & 3 > 2

# or sign | <- not a /
4 > 3 | 3 > 2

