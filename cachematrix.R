##Acting as a pair the first function creates a square matrix and its inverse.  
## The second returns the inverse from its cache.

## Creates square matrix, randomly assigned values using Poisson, finally finds and caches the inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
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

## uses the cache of matrix and its inverse found in makeCacheMatrix

cacheSolve <- function(x, ...) {
		## Return a matrix that is the inverse of 'x'
  m <- x$setinverse
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setinverse(m)
  m
}
