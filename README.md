lastfmr
================

[![Build Status](https://travis-ci.org/juyeongkim/lastfmr.svg?branch=master)](https://travis-ci.org/juyeongkim/lastfmr) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/juyeongkim/lastfmr?branch=master&svg=true)](https://ci.appveyor.com/project/juyeongkim/lastfmr) [![codecov](https://codecov.io/gh/juyeongkim/lastfmr/branch/master/graph/badge.svg)](https://codecov.io/gh/juyeongkim/lastfmr) [![CRAN\_Status\_Badge](http://www.r-pkg.org/badges/version/lastfmr)](https://cran.r-project.org/package=lastfmr) ![](http://cranlogs.r-pkg.org/badges/lastfmr?color=yellow) ![](http://cranlogs.r-pkg.org/badges/grand-total/lastfmr?color=yellowgreen)

`lastfmr` is an R interface to [Last.fm](http://www.last.fm/api). This is a port of Greg Hirson's [`RLastFM`](https://cran.r-project.org/package=RLastFM) (last updated 2010-08-10). There were some updates on API methods since his last update, so I added new methods and removed old ones. I also used json instead of xml.

Get API Key
-----------

-   [Create an API account](http://www.last.fm/api/account/create) from Last.fm Web Services
-   Copy and save the API key somewhere safe

Installation
------------

``` r
# install.packages("devtools")
devtools::install_github("juyeongkim/lastfmr")

library(lastfmr)
lastkey <- "YOUR_API_KEY_HERE"
```

Examples
--------

### Get user's top 5 artists

``` r
top5 <- user_getTopArtists("platyjus", limit = 5, api_key = lastkey)

str(top5)
```

    ## List of 2
    ##  $ artist:'data.frame':  5 obs. of  7 variables:
    ##   ..$ name      : chr [1:5] "Leon Bridges" "::M∆DE::IN::HEIGHTS::" "Andrew Bird" "The Lumineers" ...
    ##   ..$ playcount : chr [1:5] "260" "246" "160" "158" ...
    ##   ..$ mbid      : chr [1:5] "" "72c9f2ac-12ca-4a2a-ae79-6b19bd1e5b73" "081b133e-ce74-42ba-92c1-c18234acb532" "bfcb6630-9b31-4e63-b11f-7b0363be72b5" ...
    ##   ..$ url       : chr [1:5] "https://www.last.fm/music/Leon+Bridges" "https://www.last.fm/music/::M%E2%88%86DE::IN::HEIGHTS::" "https://www.last.fm/music/Andrew+Bird" "https://www.last.fm/music/The+Lumineers" ...
    ##   ..$ streamable: chr [1:5] "0" "0" "0" "0" ...
    ##   ..$ image     :List of 5
    ##   .. ..$ :'data.frame':  5 obs. of  2 variables:
    ##   .. .. ..$ #text: chr [1:5] "https://lastfm-img2.akamaized.net/i/u/34s/4e867d7c2077fe42e03df7d9d1e7ac78.png" "https://lastfm-img2.akamaized.net/i/u/64s/4e867d7c2077fe42e03df7d9d1e7ac78.png" "https://lastfm-img2.akamaized.net/i/u/174s/4e867d7c2077fe42e03df7d9d1e7ac78.png" "https://lastfm-img2.akamaized.net/i/u/300x300/4e867d7c2077fe42e03df7d9d1e7ac78.png" ...
    ##   .. .. ..$ size : chr [1:5] "small" "medium" "large" "extralarge" ...
    ##   .. ..$ :'data.frame':  5 obs. of  2 variables:
    ##   .. .. ..$ #text: chr [1:5] "https://lastfm-img2.akamaized.net/i/u/34s/2b45cccc6ca247a6c78cca6ace9c2114.png" "https://lastfm-img2.akamaized.net/i/u/64s/2b45cccc6ca247a6c78cca6ace9c2114.png" "https://lastfm-img2.akamaized.net/i/u/174s/2b45cccc6ca247a6c78cca6ace9c2114.png" "https://lastfm-img2.akamaized.net/i/u/300x300/2b45cccc6ca247a6c78cca6ace9c2114.png" ...
    ##   .. .. ..$ size : chr [1:5] "small" "medium" "large" "extralarge" ...
    ##   .. ..$ :'data.frame':  5 obs. of  2 variables:
    ##   .. .. ..$ #text: chr [1:5] "https://lastfm-img2.akamaized.net/i/u/34s/73dba10b71674e029b3ddc0692899e0b.png" "https://lastfm-img2.akamaized.net/i/u/64s/73dba10b71674e029b3ddc0692899e0b.png" "https://lastfm-img2.akamaized.net/i/u/174s/73dba10b71674e029b3ddc0692899e0b.png" "https://lastfm-img2.akamaized.net/i/u/300x300/73dba10b71674e029b3ddc0692899e0b.png" ...
    ##   .. .. ..$ size : chr [1:5] "small" "medium" "large" "extralarge" ...
    ##   .. ..$ :'data.frame':  5 obs. of  2 variables:
    ##   .. .. ..$ #text: chr [1:5] "https://lastfm-img2.akamaized.net/i/u/34s/03e320dd70c0577c42c459eac0063c16.png" "https://lastfm-img2.akamaized.net/i/u/64s/03e320dd70c0577c42c459eac0063c16.png" "https://lastfm-img2.akamaized.net/i/u/174s/03e320dd70c0577c42c459eac0063c16.png" "https://lastfm-img2.akamaized.net/i/u/300x300/03e320dd70c0577c42c459eac0063c16.png" ...
    ##   .. .. ..$ size : chr [1:5] "small" "medium" "large" "extralarge" ...
    ##   .. ..$ :'data.frame':  5 obs. of  2 variables:
    ##   .. .. ..$ #text: chr [1:5] "https://lastfm-img2.akamaized.net/i/u/34s/79c9b637803a79ce4aeaede8ec93da38.png" "https://lastfm-img2.akamaized.net/i/u/64s/79c9b637803a79ce4aeaede8ec93da38.png" "https://lastfm-img2.akamaized.net/i/u/174s/79c9b637803a79ce4aeaede8ec93da38.png" "https://lastfm-img2.akamaized.net/i/u/300x300/79c9b637803a79ce4aeaede8ec93da38.png" ...
    ##   .. .. ..$ size : chr [1:5] "small" "medium" "large" "extralarge" ...
    ##   ..$ @attr     :'data.frame':   5 obs. of  1 variable:
    ##   .. ..$ rank: chr [1:5] "1" "2" "3" "4" ...
    ##  $ @attr :List of 5
    ##   ..$ user      : chr "platyjus"
    ##   ..$ page      : chr "1"
    ##   ..$ perPage   : chr "5"
    ##   ..$ totalPages: chr "119"
    ##   ..$ total     : chr "594"

``` r
top5$artist$name
```

    ## [1] "Leon Bridges"                  "::M∆DE::IN::HEIGHTS::"        
    ## [3] "Andrew Bird"                   "The Lumineers"                
    ## [5] "Trent Reznor and Atticus Ross"

### Get album information

``` r
fearfun <- album_getInfo("Father John Misty", "Fear Fun", api_key = lastkey)

str(fearfun)
```

    ## List of 9
    ##  $ name     : chr "Fear Fun"
    ##  $ artist   : chr "Father John Misty"
    ##  $ mbid     : chr "da07a173-bf3d-4e7e-995d-ce473ce83030"
    ##  $ url      : chr "https://www.last.fm/music/Father+John+Misty/Fear+Fun"
    ##  $ image    :'data.frame':   6 obs. of  2 variables:
    ##   ..$ #text: chr [1:6] "https://lastfm-img2.akamaized.net/i/u/34s/d9839e4cfadb49909637e9b6e39caa95.png" "https://lastfm-img2.akamaized.net/i/u/64s/d9839e4cfadb49909637e9b6e39caa95.png" "https://lastfm-img2.akamaized.net/i/u/174s/d9839e4cfadb49909637e9b6e39caa95.png" "https://lastfm-img2.akamaized.net/i/u/300x300/d9839e4cfadb49909637e9b6e39caa95.png" ...
    ##   ..$ size : chr [1:6] "small" "medium" "large" "extralarge" ...
    ##  $ listeners: chr "217420"
    ##  $ playcount: chr "4429644"
    ##  $ tracks   :List of 1
    ##   ..$ track:'data.frame':    12 obs. of  6 variables:
    ##   .. ..$ name      : chr [1:12] "Funtimes in Babylon" "Nancy From Now On" "Hollywood Forever Cemetery Sings" "I'm Writing a Novel" ...
    ##   .. ..$ url       : chr [1:12] "https://www.last.fm/music/Father+John+Misty/_/Funtimes+in+Babylon" "https://www.last.fm/music/Father+John+Misty/_/Nancy+From+Now+On" "https://www.last.fm/music/Father+John+Misty/_/Hollywood+Forever+Cemetery+Sings" "https://www.last.fm/music/Father+John+Misty/_/I%27m+Writing+a+Novel" ...
    ##   .. ..$ duration  : chr [1:12] "246" "229" "190" "215" ...
    ##   .. ..$ @attr     :'data.frame':    12 obs. of  1 variable:
    ##   .. .. ..$ rank: chr [1:12] "1" "2" "3" "4" ...
    ##   .. ..$ streamable:'data.frame':    12 obs. of  2 variables:
    ##   .. .. ..$ #text    : chr [1:12] "0" "0" "0" "0" ...
    ##   .. .. ..$ fulltrack: chr [1:12] "0" "0" "0" "0" ...
    ##   .. ..$ artist    :'data.frame':    12 obs. of  3 variables:
    ##   .. .. ..$ name: chr [1:12] "Father John Misty" "Father John Misty" "Father John Misty" "Father John Misty" ...
    ##   .. .. ..$ mbid: chr [1:12] "172053e5-a7fb-4548-a64d-c53858b5e775" "172053e5-a7fb-4548-a64d-c53858b5e775" "172053e5-a7fb-4548-a64d-c53858b5e775" "172053e5-a7fb-4548-a64d-c53858b5e775" ...
    ##   .. .. ..$ url : chr [1:12] "https://www.last.fm/music/Father+John+Misty" "https://www.last.fm/music/Father+John+Misty" "https://www.last.fm/music/Father+John+Misty" "https://www.last.fm/music/Father+John+Misty" ...
    ##  $ tags     :List of 1
    ##   ..$ tag:'data.frame':  5 obs. of  2 variables:
    ##   .. ..$ name: chr [1:5] "2012" "best of 2012" "availableonemusic" "rock" ...
    ##   .. ..$ url : chr [1:5] "https://www.last.fm/tag/2012" "https://www.last.fm/tag/best+of+2012" "https://www.last.fm/tag/availableonemusic" "https://www.last.fm/tag/rock" ...

``` r
fearfun$tracks$track[c("name", "duration")]
```

    ##                                    name duration
    ## 1                   Funtimes in Babylon      246
    ## 2                     Nancy From Now On      229
    ## 3      Hollywood Forever Cemetery Sings      190
    ## 4                   I'm Writing a Novel      215
    ## 5  O I Long to Feel Your Arms Around Me      143
    ## 6              Misty's Nightmares 1 & 2      193
    ## 7             Only Son of the Ladiesman      249
    ## 8                 This Is Sally Hatchet      237
    ## 9        Well, You Can Do It Without Me      163
    ## 10     Now I'm Learning to Love the War      261
    ## 11                        Tee Pees 1-12      197
    ## 12           Everyman Needs a Companion      302

### Shiny App: lastfm explorer (work in progess)

<https://juyeongkim.shinyapps.io/lastfm-explorer/>
