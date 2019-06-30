
<!-- README.md is generated from README.Rmd. Please edit that file -->
tidyvoteny
==========

<!-- badges: start -->
<!-- badges: end -->
New York State local election resutls in a tidy data frame. It includes election year, election type, assembly district,election district, Office Title, Office Political District, Election District Status, county, congressional district and senate district overlay. All data was obtained through local county websites.

Installation
------------

You can install the released version of tidyvoteny from [CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("tidyvoteny")
```

Example
-------

This is a basic example which shows you how to solve a common problem:

``` r
library(tidyvoteny)

knitr::kable(head(nycdb))
```

|   AD|   ED| County   | Status  | Event    | Party | Office          | District |  key| Unit.Name                           |  elect\_dist|  council\_district|  senate\_district|  cong\_district|  muni\_dist| variable |  votes|
|----:|----:|:---------|:--------|:---------|:------|:----------------|:---------|----:|:------------------------------------|------------:|------------------:|-----------------:|---------------:|-----------:|:---------|------:|
|   65|    1| New York | IN-PLAY | SP\_2019 | NA    | Public Advocate | NYC      |    1| Public Counter                      |        65001|                  1|                26|              10|        1001| Tally    |    137|
|   65|    1| New York | IN-PLAY | SP\_2019 | NA    | Public Advocate | NYC      |    1| Manually Counted Emergency          |        65001|                  1|                26|              10|        1001| Tally    |      0|
|   65|    1| New York | IN-PLAY | SP\_2019 | NA    | Public Advocate | NYC      |    1| Absentee / Military                 |        65001|                  1|                26|              10|        1001| Tally    |      5|
|   65|    1| New York | IN-PLAY | SP\_2019 | NA    | Public Advocate | NYC      |    1| Affidavit                           |        65001|                  1|                26|              10|        1001| Tally    |      0|
|   65|    1| New York | IN-PLAY | SP\_2019 | NA    | Public Advocate | NYC      |    1| Melissa Mark-Viverito (Fix the MTA) |        65001|                  1|                26|              10|        1001| Tally    |     24|
|   65|    1| New York | IN-PLAY | SP\_2019 | NA    | Public Advocate | NYC      |    1| Michael A. Blake (For The People)   |        65001|                  1|                26|              10|        1001| Tally    |      9|
