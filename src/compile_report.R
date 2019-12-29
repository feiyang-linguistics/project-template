# Compile report & poster to html & pdf
rmarkdown::render("report/poster.Rmd")
rmarkdown::render("report/report.Rmd")

pagedown::chrome_print("report/poster.html")
pagedown::chrome_print("report/report.html")