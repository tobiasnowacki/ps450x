# head                   package:utils                   R Documentation               
                            
# Return the First or Last Part of an Object
                                          
# Description:                
                            
#      Returns the first or last parts of a vector, matrix, table, data
#      frame or function.  Since ‘head()’ and ‘tail()’ are generic
#      functions, they may also have been extended to other classes.
                                                               
# Usage:
                                                               
#      head(x, ...)
#      ## Default S3 method:
#      head(x, n = 6L, ...)


data(Seatbelts)
df <- as.data.frame(Seatbelts)
head(df, n = 6)


#   DriversKilled drivers front rear   kms PetrolPrice         
# 1           107    1687   867  269  9059   0.1029718
# 2            97    1508   825  265  7685   0.1023630
# 3           102    1507   806  319  9963   0.1020625
# 4            87    1385   814  407 10955   0.1008733         
# 5           119    1632   991  454 11823   0.1010197
# 6           106    1511   945  427 12391   0.1005812
#   VanKilled law
# 1        12   0
# 2         6   0
# 3        12   0
# 4         8   0
# 5        10   0
# 6        13   0

str(df)

# 'data.frame':   192 obs. of  8 variables:                    
#  $ DriversKilled: num  107 97 102 87 119 106 110 106 107 134 ...                                                          
#  $ drivers      : num  1687 1508 1507 1385 1632 ...          
#  $ front        : num  867 825 806 814 991 ...               
#  $ rear         : num  269 265 319 407 454 427 522 536 405 437 ...                                                        
#  $ kms          : num  9059 7685 9963 10955 11823 ...
#  $ PetrolPrice  : num  0.103 0.102 0.102 0.101 0.101 ...
#  $ VanKilled    : num  12 6 12 8 10 13 11 6 10 16 ...
#  $ law          : num  0 0 0 0 0 0 0 0 0 0 ...

class(df)
# [1] "data.frame"  

class(df$drivers)
# [1] "numeric" 

dim(df)
# [1] 192   8   


ex_vec <- c(1L, 2L, 3L)
ex_vec
# [1] 1 2 3  
class(ex_vec)
# [1] "integer"  
ex_vec <- as.character(ex_vec)
ex_vec
# [1] "1" "2" "3" 
class(ex_vec)
# [1] "character"  


ex_list <- list("ABC", c(2, 4, 6), c("DEF", "GHI"))
ex_list
# [[1]]                                                        
# [1] "ABC"                                                    

# [[2]]
# [1] 2 4 6                                                    

# [[3]]                                                        
# [1] "DEF" "GHI"

ex_mat <- matrix(1:9, nrow = 3, ncol = 3)
ex_mat
#      [,1] [,2] [,3]                                          
# [1,]    1    4    7
# [2,]    2    5    8
# [3,]    3    6    9

ex_df <- data.frame(col1 = 1:3, col2 = c("A", "B", "C"), col3 = c(T, F, F))
ex_df
#   col1 col2  col3                                            
# 1    1    A  TRUE
# 2    2    B FALSE
# 3    3    C FALSE

ex_df$col1
#[1] 1 2 3     

ex_df[, c("col1", "col2")]     
#   col1 col2                                                  
# 1    1    A
# 2    2    B
# 3    3    C   

names(ex_df)
#[1] "col1" "col2" "col3"

# Merging examples
dfA <- data.frame(V1 = c(1, 2, 3), V2 = c("A", "B", "C"))
dfB <- data.frame(V2 = c("B", "C", "A"), V3 = c("Banana", "Canteloupe", "Apple"))

dfbind <- cbind(dfA, dfB)
dfM <- merge(dfA, dfB, by = c("V2"))