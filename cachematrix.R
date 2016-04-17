## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}
## Write a short comment describing this function

> makeCacheMatrix <- function(x = matrix()) {
       inv <- NULL
      set <- function(y) {
             x <<- y
             inv <<- NULL
         }
      get <- function() x
       setInverse <- function(inverse) inv <<- inverse
       getInverse <- function() inv
       list(set = set, get = get,setInverse = setInverse,
                       getInverse = getInverse)
   }
> 
  > ##This function creates a special "matrix" object that can cache its inverse




makeCacheMatrix() <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
  x <<- y
  inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv<<- inverse 
  getinverse <- function() inv
  list(set = set, get = get,
  setinverse = setinverse,
  getinverse = getinverse)
}

> cacheSolve <- function(x, ...) {
  
   inv <- x$getInverse()
  if (!is.null(inv)) {
  message(" getting cache data")
  return(inv)
  }
  matrix <- x$get()
  inv <- solve(matrix, ...)
  x$setInverse(inv)
   inv
   }
