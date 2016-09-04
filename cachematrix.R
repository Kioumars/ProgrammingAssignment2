## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix function:

makeCacheMatrix <- function(x = matrix()) {
  solve = NULL
  
  set = function(y) {
    x <<- y
    solve <<- NULL
  }
  
  get = function() x
  
  setsolve = function(solve) solve <<- solve 
  getsolve = function() solve
  
  list(set=set, get=get, setsolve=setsolve, getsolve=getsolve)
}


## cacheSolve function

cacheSolve <- function(x, ...) {
  sol = x$getsolve()
  
  if (!is.null(sol)){
    
    message("getting cached data")
    
    return(sol)
  }
  
  
  data = x$get()
  sol = solve(data, ...)
  
  x$setsol(sol)
  return(sol)
        ## Return a matrix that is the inverse of 'x'
}
