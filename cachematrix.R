## Put comments here that give an overall description of what your
## functions do

## Matrix inversion is usually a costly computation and there may 
# be some benefit to caching the inverse of a matrix rather than 
# compute it repeatedly. The next two functions are used to cache
# the inverse of a matrix 

## Write a short comment describing this function

# set the value of the matrix
# get the matrix value
# set the value of the inverse of the matrix 
# get the value of the inverse of the matrix 

makeCacheMatrix <- function(x = matrix()) {
  inv <-  NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
    
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse 
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## Write a short comment describing this function

# The function above returns the inverse of the matrix.

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
