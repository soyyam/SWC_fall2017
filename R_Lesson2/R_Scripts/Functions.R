# As we've seen in our print statements, we can use paste or paste0 to concatenate strings.
# Write a function called fence that takes two parameters called original and wrapper and 
# returns a new string that has the wrapper character at the beginning and end of the 
# original.
# Example function call and output:
#   
#   fence('name', '---')
# ---name---

fence <- function(original,wrapper){
  print(paste0(wrapper,original,wrapper))
}

fence('name','---')
