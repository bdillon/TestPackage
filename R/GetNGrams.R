#' A Function to clean a single input string by removing punctuation and numbers and tokenizing it.
#'
#' @param words A vector of strings that represents a tokenized document
#' @param n The size of the n-gram window
#' @export

GetNGrams <- function(words,n){
  ngram.vector <- rep(NA,length(words)-(n-1))
  for (i in 1:length(ngram.vector)){
    ngram.vector[i] <- paste(words[i:(i+(n-1))],collapse=" ")
  }
  return(ngram.vector)
}
