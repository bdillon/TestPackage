#' A Function to clean a single input string by removing punctuation and numbers and tokenizing it.
#'
#' @param string A single input string such as "This is a cool function!"
#' @return A vector contain all valid tokens in the original input string
#' @export

TokenizeString <- function(string){
  temp <- tolower(string)
  temp <- stringr::str_replace_all(temp,"[^a-zA-Z\\s:\\?\\!]", " ")
  temp <- stringr::str_replace_all(temp,"[\\s]+", " ")
  temp <- stringr::str_split(temp, " ")[[1]]
  indexes <- which(temp == "")
  if(length(indexes) > 0){
    temp <- temp[-indexes]
  }
  return(temp)
}
