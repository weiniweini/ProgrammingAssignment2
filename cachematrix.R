## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Make a special matrix object that can cach its inverse 
makeCacheMatrix <- function(o = matrix()) {
        
        ## Initialize the inverse property 
        i <- NULL 
        
        ## To set the matrix 
        set <- function( matrix ) {
                o <<- matrix
                i <<- NULL
}
        ## To get the matrix
        get <- function() {
                ## Return the matrix
                o
}
        ## To set the inverse of the matrix
       setInverse <- function(inverse) {
               i <<- inverse
}
        ## To get the inverse of the matrix
        getInverse <- function() {
                ## Return the inverse property 
                i
        }
        ## Return a list of the methonds 
        list(set = set, get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}
## Compute the inverse of the special matrix
cacheSolve <- function(x, ...) {
        
        ## Return a matrix that is the inverse of 'x'
        o <- x$getInverse(
                
        ## return the inverse if its already set
        if( !is.null(m) ) {
                message("getting cached data")
                return(o)
        }
        ## get the matrix 
        data <- x$get()
        o <- solve(data) %*% data
        
        x$setInverse(o)
        
        o
 }               
               
         


           
             
