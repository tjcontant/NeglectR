
# NeglectR

<!-- badges: start -->
<!-- badges: end -->

The goal of NeglectR is to ...

## Installation

You can install the development version of NeglectR like so:

``` r
# install.packages("devtools")
devtools::install_github("adhamrishmawi1/NegletR")
```

## Example

For example, say we want to modify all logical columns so that FALSE and TRUE are replaced with the numbers zero and one, respectively. This change can be achieved by using the `as.numeric` function. In the following chunk of code, we implement this change using `df_apply`.

``` r
library(NeglectR)
df_apply(.data = presidents, .fun =  as.numeric, .filt = is.logical)
```

