# Drug Use by Age Package

This package provides some function usefull to understand the story behind " How Baby Boomers Get High". " 
Some functions insert inside are usefull to visualize and analyse the data. 
In addiction

Source: National Survey on Drug Use and Health from the Substance Abuse and Mental Health Data Archive.

## Installation

```R
# first install the R package "devtools" if not installed
devtools::install_github('unimi-dse/0425048f')
```

## Dataset

The package provides a dataset containing the data about 13 drugs across 17 age groups. The data is taken by the following website: "https://github.com/fivethirtyeight/data/tree/master/drug-use-by-age""

```R
# dataset documentation
?Progettofgr::druguse
```

## Usage

```R
# load the package
require(Progettofgr)
```

### Plotvisualization

The function `plotvisualization(druguse)` provide a pie chart showing the drug use by crack frequency. Type `?plotvisualization` for a complete description of the function and its arguments. 

__Note__: The function requires the argument druguse insede. This argument represent the data frame used  to compute the visualization 



# load the package
require(progettofgr)
```



