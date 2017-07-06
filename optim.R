# @Encode: utf-8
# @Date: July 6th 2017
# @Title: Optimization

# A dome of 'optim' funciton

# Dome.1
  # Objective function
  fr <- function(x) {   
    ## Rosenbrock Banana function
    x1 <- x[1]
    x2 <- x[2]
    100 * (x2 - x1 * x1)^2 + (1 - x1)^2
  }
  # Gradient of 'fr'
  grr <- function(x) {
    ## Gradient of 'fr'
    x1 <- x[1]
    x2 <- x[2]
    c(-400 * x1 * (x2 - x1 * x1) - 2 * (1 - x1),
      200 *      (x2 - x1 * x1))
  }
  # Method.1
  # If not define the gr, "finite-difference approximation"  method will use
  optim(par = c(-1.2,1), fn = fr) 
  # Method.2
  optim(par = c(-1.2,1), fn = fr, gr = grr) 
  
  
