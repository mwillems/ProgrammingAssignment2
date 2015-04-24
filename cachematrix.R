## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  
##set
set <- function(y) {
  x <<- y
  inv <<- NULL
} 

##get
get <- function() {x}

##setinv
setinv <- function (inver) inv<<- inver

##getinv
getinv <- function() inv

list (get=get, set=set, setinv=setinv, getinv= getinv)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  
  # return inverted matrix from cache if it exists
  # else create the matrix in working environment
  if (!is.null(inv)) {
    message("getting cached data")
    
    # display matrix in console
    return(inv)
  }
  
  else {
  # create matrix since it does not exist
  matrix <- x$get()
  
    # set and return inverse of matrix
    inv <- solve(matrix, ...)
    # set inverted matrix in cache
    x$setinv(inv)
}
  
  # display matrix in console
  return (inv)
}

##MWI le 21/04/2015
