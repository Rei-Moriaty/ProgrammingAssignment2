## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#This function will create a vector which will contain following function
#set:-To set values the matrix
#get:-To get value the matrix
#setinverse:- set value for inverse of matrix
#getinverse:- to get value for inevrse of matrix

makeCacheMatrix <- function(x = matrix()) {
  i<-NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function
#This function will the return the inverse fo matrix


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(m)
  i
}
