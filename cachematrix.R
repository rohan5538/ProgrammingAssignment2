## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Caching the Inverse of a Matrix:
## Matrix inversion is usually a costly computation and there may be some 
## benefit to caching the inverse of a matrix rather than compute it repeatedly.
## Below are a pair of functions that are used to create a special object that 
## stores a matrix and caches its inverse.

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {

}
makeVector <- function(x = numeric()) { ##define the arguement with model matrix
m <- NULL ##the value of matrix inverse
set <- function(y) { ##assign a new variable with function(y)
x <<- y ##value of matrix
m <<- NULL ##if it is a new matrix, reset value to NULL
}
get <- function() x ##assign a new variable with function(x)
setmean <- function(mean) m <<- mean ##assign a new variable with (function(mean), reset value m to mean
getmean <- function() m ## get the value of m where is called
list(set = set, get = get, ## you need this to run the function within the list
setmean = setmean,
getmean = getmean)
}

## This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
}
