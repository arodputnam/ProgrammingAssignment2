## Put comments here that give an overall description of what your
## functions do


 # set the matrix
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }

  # get the matrix
  get <- function() {
    x
  }
  
  # set the inverse of the matrix
  setInverse <- function(inverse) {
    inv <<- inverse
  }
  
  # get the inverse of the matrix
  getInverse <- function() {
    inv
  }

  # return a list of functions
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)


## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}

#### makeCacheMatrix function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
}
 

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

#### cacheSolve function computes the inverse of the special "matrix" returned by makeCacheMatrix
cacheSolve <- function(x, ...) {
  inv <- x$getInverse()
  
  # if the inverse is already computed, retrieve it from the cache
  if (!is.null(inv)) {
    message("Getting cached data")
    return(inv)
  }
  
  # otherwise, compute the inverse
  mat <- x$get()
  inv <- solve(mat, ...)
  
  # set the inverse in the cache
  x$setInverse(inv)
  
  inv
}
