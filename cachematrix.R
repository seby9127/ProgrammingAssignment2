## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  matrixinverse <- NULL                             ## initialize a variable as NULL that will have value of matrix inverse 
  first <- function(y) {                            ## define the first function to assign new value 
    x <<- y                                         
  matrixinverse<<- NULL                             ## if there is a new matrix, reset matrixinverse to NULL
  }
  second <- function() x                            ## define the second fucntion that returns value of the matrix argument
  
  firstinverse <- function(inverse) matrixinverse <<- inverse  ## assigns value of matrixinverse 
  secondinverse <- function() matrixinverse                     ## gets the value of matrixinverse where called
  list(first = first, second = second, firstinverse = firstinverse, secondinverse = secondinverse) 

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matrixinverse <- x$secondinverse()                #values returned to matrixinverse
  if(!is.null(matrixinverse)) {                     #if not NULL returns same matrixinverse 
    message("has cached data")
    return(matrixinverse)
  }
  data <- x$second()
  inv <- solve(data, ...)
  x$firstinverse(matrixinverse)
  matrixinverse
}
