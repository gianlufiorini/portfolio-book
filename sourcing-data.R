board <- pins::board_folder("pins/", versioned = TRUE)

if (!pins::pin_exists(board, 'osloairbnb')) {

  if (!dir.exists("data/")){
    dir.create("data/")
  }

  # Define a standard browser User-Agent
  headers <- c("User-Agent" = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36")

  # Download the file using the header
  download.file(
    url = "https://data.insideairbnb.com/norway/oslo/oslo/2026-06-30/data/listings.csv.gz",
    destfile = "data/listings.csv.gz",
    headers = headers,
    mode = 'wb'
  )


  dat <- read_csv(gzfile("data/listings.csv.gz"))

  pins::pin_write(board, dat, "osloairbnb", type = "csv")
  
  rm(list = c("dat", "headers"))
}