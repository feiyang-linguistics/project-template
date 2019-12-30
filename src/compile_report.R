# Compile report & poster to html & pdf
rmarkdown::render("report/poster.Rmd")
rmarkdown::render("report/report.Rmd")

pagedown::chrome_print("report/poster.html", output = "../G25_poster.pdf")
pagedown::chrome_print("report/report.html", output = "../G25_report.pdf")