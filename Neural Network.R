

#sigmoid function
sigmoid<-function(a){
  1/(1+exp(-a))
}

# binary activation
activation<-function(x){
  if (x>=0){
    1
  } else{
    0
  }
}

#input
input <- function(x,b,w) {
  b+sum(x*w)
  
} 
#the ouput that the neuron will give with sigmoid activation
output_sigmoid <- function(x,b,w) {
  sigmoid(input(x,b,w))
}

#the ouput that the neuron will give with binary activation
output_binary <- function(x,b,w) {
  activation(input(x,b,w))
}

#The final neural network
Network <- function(variable_input) {
x <-output_binary(variable_input,-10,c(20,20))
y <-output_binary(variable_input,30,c(-20,-20))

output_binary(c(x,y),-30,c(20,20))
}
#trying the neural network for different inputs
Network(c(1,1))
Network(c(1,0))
Network(c(0,1))
Network(c(0,0))


