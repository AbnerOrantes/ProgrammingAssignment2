## Hello I am Abner Orantes. Current Student of R
## This functions are supposed to calculate de Inverse of a matrix

## The first function create a Matrix on cache to this process faster

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
            x <<- y
            s <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
    
}


## This second function Caluclates de Solve but first checks if it was already calculated

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    s <- x$getsolve()
    if(!is.null(s)) {
        message("getting cached data")
        return(s)
    }
    data <- x$get()
    s <- solve(data, ...)
    x$setsolve(s)
    s
}
