  
## I simply changed "m" to "i", so that it makes more sense
## as "inverse", and changed "solve" to "inverse"

## Creates a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {
	i <- NULL
	set <- function(y){
		x <<- y
		i <<- NULL
	}
	get <- function() x
	setInverse <- function(inverse) i <<- inverse
	getInverse <- function() i
	list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## Creates the inverse of the matrix returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	i <- x$getinverse()
	if(!is.null(i)) {
                message("getting cached data")
                return(i)
	}
	data <- x$get()
	i <- solve(data, ...)
	i
}
