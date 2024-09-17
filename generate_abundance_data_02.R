generate_abundance_data <- function(student_id){
  # Set the seed for reproducibility (optional)
  set.seed(student_id)
  # Generate a list of 20 vectors, each containing 50 random integers between 0 and 20
  random_vectors <- replicate(20, sample(0:50, 10, replace = TRUE))
  # assign  name to each vector
  species <- c("kapok", "mahogany", "brazilnut", "rubber", "eucalyptus", "teak", "rosewood",
               "balsa", "coconut", "fig", "ironwood", "ebony", "wildmango", "cinchona",
               "africanteak", "rattan", "dipterocarp", "clove", "sandalwood", "banana")

  for(i in 1:20){
    if(i == sample(1:20, 1)){
      assign(paste0(species[i]), as.character(random_vectors[,i]), inherits = TRUE)
      } else {
        assign(paste0(species[i]), random_vectors[,i], inherits = TRUE)
      }
    }
}
