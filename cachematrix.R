# These functions will cache the inverse of a matrix

## "makeCacheMatrix" builds the matrix to cache the later inverse matrix

makeCacheMatrix <- function(x = matrix()) {
    inv_matr <- NULL
    set <- function(y){
        x <<- y
        inv_matr <<- NULL
        }
    get <- function() x
    setInverse <- function(inverse) inv_matr <<- inverse
    getInverse <- function() inv_matr 
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## "cacheSolve" builds the inverse matrix

cacheSolve <- function(x, ...) {
    ## Return a matrix "inv_matr" that is the inverse of "x"
    inv_matr <- x$getInverse()
    if(!is.null(inv_matr)){
        message("getting cached data")
        return(inv_matr)}
    matr <- x$get()
    inv_matr <- solve(matr, ...)
    x$setInverse(inv_matr)
    inv_matr
    }


## example

expl_matr <- matrix(rnorm(49), 7, 7)
inv_matr_1 <- makeCacheMatrix(expl_matr)
cacheSolve(inv_matr_1)
