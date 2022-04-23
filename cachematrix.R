## Put comments here that give an overall description of what your
## functions do
## In this assignment, I am focusing on calculating and caching the inverse of a matrix

## Write a short comment describing this function
## Step 1: Set the first function input "x" as a matrix
## Step 2: Determined my working value "t" as a null
## Step 3: To test I used this sample: (rnorm(32),4,4) 

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
  set <- function(y) {
          x <<- y
          i <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) i <<- inverse
  getinverse <- function() i
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function
## Considering the above, I used cacheSolve get the cache data or return the original function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        i <- x$getinverse()
  if (!is.null(i)) {
          message("getting cached data")
          return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}
