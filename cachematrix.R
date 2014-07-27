
## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
        solve(x)
}


## This function computes the inverse of the special "matrix" returned by 
# `makeCacheMatrix` above. If the inverse has already been calculated (and the 
# matrix has not changed), then `cacheSolve` should retrieve the inverse from 
# the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        y <- makeCacheMatrix(x)
        ## Check if it has already been calculated
        if (x == y) {
            solve(makeCacheMatrix())
        }
}

