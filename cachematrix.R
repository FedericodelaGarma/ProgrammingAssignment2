## Functions that cache the inverse of a matrix

## First create a "matrix" and store it in local memory
## cache and list all the functions inside of one

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function (y){
                x <<- y
                inv <<- NULL
        }
        get <- function() return(x)
        setinv <- function(inverse) inv <<- inverse
        getinv <- function() inv
        list(set=set, get=get, setinv=setinv, getinv= getinv)
}

## Then invert using function solve()
## Do it once and store it for future use
## This way, if it is already in memory, just take it
## and don't calculate it again

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if (!is.null(inv)){
                message ("Getting stored info")
                return(inv)
        }
        new <- x$get()
        inv <- solve(new)
        inv
}
