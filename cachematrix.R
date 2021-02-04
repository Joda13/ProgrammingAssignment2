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
}

## example