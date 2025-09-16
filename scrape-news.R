library("httr2")

date <- Sys.Date() 

req <- request("https://newsapi.org/v2/everything") |>
  req_url_query(
    q = '`"data science"`',
    from = date,
    pageSize = 10,
    apiKey = Sys.getenv("NEWSAPIKEY")
  )
  
req_perform(req, path = paste0("data/", date, ".json"))
