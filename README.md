
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tidyvoteny

<!-- badges: start -->

<!-- badges: end -->

**Please note:** that we only have nyc results right now and we are
working on updating the database to counties including: Nassau, Suffolk,
Rockland, Westchester, Albany, Monroe, Erie, Niagara, Onondaga, and
Ulster.

New York State local election resutls in a tidy data frame. It includes
election year, election type, assembly district,election district,
Office Title, Office Political District, Election District Status,
county, congressional district and senate district overlay. All data was
obtained through local county websites.

## Installation

You can install the released version of tidyvoteny from Github
[tidyvoteny](https://jorgep17.github.io/tidyvoteny/) with:

``` r
install.packages("devtools")
devtools::install.github("jorgep17/tidyvoteny")
```

## Visualize a set to familiarize yourself with the data:

``` r
devtools::install_github("jorgep17/tidyvoteny")
#> Skipping install of 'tidyvoteny' from a github remote, the SHA1 (a2dcbe99) has not changed since last install.
#>   Use `force = TRUE` to force installation
library(tidyvoteny)
head(nycdb)
#>   AD ED County  Status   Event      Party            Office District key
#> 1 23  1 Queens IN-PLAY PE_2019 Democratic District Attorney   Queens   1
#> 2 23  2 Queens IN-PLAY PE_2019 Democratic District Attorney   Queens   1
#> 3 23  3 Queens IN-PLAY PE_2019 Democratic District Attorney   Queens   1
#> 4 23  4 Queens IN-PLAY PE_2019 Democratic District Attorney   Queens   1
#> 5 23  5 Queens IN-PLAY PE_2019 Democratic District Attorney   Queens   1
#> 6 23  6 Queens IN-PLAY PE_2019 Democratic District Attorney   Queens   1
#>        Unit.Name elect_dist council_district senate_district cong_district
#> 1 Public Counter      23001               32              15             5
#> 2 Public Counter      23002               32              15             5
#> 3 Public Counter      23003               32              15             5
#> 4 Public Counter      23004               32              15             5
#> 5 Public Counter      23005               32              15             5
#> 6 Public Counter      23006               32              15             5
#>   muni_dist variable votes
#> 1      1305    Tally   103
#> 2      1305    Tally    96
#> 3      1305    Tally    66
#> 4      1305    Tally    11
#> 5      1305    Tally    90
#> 6      1305    Tally    81
```

## Pivot the Results Database

``` r
library(tidyvoteny)
# here we determine our district number is '15' and we want to see election results broken down for the 2018 Governor Primary by Congressional District. 
target = "15"
formula =  cong_district~Unit.Name

#install.packages("data.table")
library(data.table)
library(dplyr)
#> 
#> Attaching package: 'dplyr'
#> The following objects are masked from 'package:data.table':
#> 
#>     between, first, last
#> The following objects are masked from 'package:stats':
#> 
#>     filter, lag
#> The following objects are masked from 'package:base':
#> 
#>     intersect, setdiff, setequal, union

# 2018 Governor ####
nycdb %>% 
  dcast.data.table(subset = .(Event == "PE_2018"
                              & Office == "Governor"), 
                   formula = formula, 
                   fun.aggregate = sum,
                   value.var = "votes")
#>     cong_district Absentee / Military Affidavit Andrew M. Cuomo
#>  1:            10                3241      1010           53368
#>  2:            11                1850       242           28584
#>  3:            12                3268      1047           50989
#>  4:            13                2520      1182           66872
#>  5:            14                1699       563           41559
#>  6:            15                1046       794           50991
#>  7:            16                1206       314           29498
#>  8:             3                 416        53            7894
#>  9:             5                1896       519           59430
#> 10:             6                1740       314           32556
#> 11:             7                1517       986           41389
#> 12:             8                1893      1204           66856
#> 13:             9                2475      1154           68861
#>     Cynthia E. Nixon Manually Counted Emergency Public Counter Scattered
#>  1:            41822                         19          93779       474
#>  2:            12143                          1          39589       187
#>  3:            48016                         81          95918       323
#>  4:            32873                          1          97634       270
#>  5:            19245                          4          59745       155
#>  6:             8324                         23          58268       125
#>  7:             6749                         97          35086        93
#>  8:             2658                          0          10345        55
#>  9:             9664                          0          67367       164
#> 10:            13743                          0          45112       161
#> 11:            36535                          2          76723       230
#> 12:            29128                         14          94250       193
#> 13:            39282                         31         106319       356
```
