## Put comments here that give an overall description of what your
## functions do

## Creates square matrix, randomly assigned values using Poisson, finally finds and caches the inverse of matrix

mmakeCacheMatrix <- function(x = matrix()) {
  t<-x^2
  m<-matrix(rpois(t,20),x,x)
  
  i <- NULL
  set <- function(y) {
    m <<- y
    i <<- NULL
  }
  get<- function() m
  setinverse <- solve(m)
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
