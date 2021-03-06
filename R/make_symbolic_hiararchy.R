make_symbolic_hiararchy <- function(hier=c(),full=FALSE) {
  # Function for creating symbolic naming vector e.g. A1 A2 B1 C1 C2 C3
  # for hier=c(2,1,3)
  # used for colnames in sales dataframe
  if (length(hier)>0){
    str_hier <- c()
    if (full==TRUE){
      # Add the higher level hierarchy names first
      str_hier = c(str_hier,"Top")
      str_hier = c(str_hier,LETTERS[1:length(hier)])
    }
    # make the lower level hierarchy names
    for (i in 1:length(hier)){
      str_hier = c(str_hier, paste0(LETTERS[i],c(1:hier[i])))
    }
    return(str_hier)
  } else {
    print("A vector representing the hierarchy is required.")
  }
}
