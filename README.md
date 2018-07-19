## Exploring Brain Structure Taxonomy with Stan

This is my submission for StanCon Helsinki on exploring
brain structure taxonomy with stan.

To recompile the rmarkdown file, first clone this repository

```
git clone https://github.com/cfhammill/2018-04-15_exploring-brain-structure-taxonomy
cd 2018-04-15_exploring-brain-structure-taxonomy
```

Recompiling the rmarkdown document requires tidyverse and our package
`hierarchyTrees`. 

install `hierarchyTrees` and its dependencies
(assuming `devtools` is installed) you can run:

```
make depends
```

alternatively:

```
git clone https://github.com/cfhammill/hierarchyTrees
R CMD INSTALL hierarchyTrees/
```

To recompile the rmarkdown document. Assuming `hierarchyTrees`
is installed:

```
touch brain-structure-taxonomy.Rmd
make 
```


### Install issues

This package depends on `rstanarm` which via `lme4`
depends on `nloptr` which requires developer header for `NLopt`. If you have 
difficulty installing `hierarchyTrees` please try:

Ubuntu:

```
sudo apt-get install libnlopt-dev
```

MacOS:

```
brew install nlopt
```

If this option fails install according to `NLopt`'s instructions

https://nlopt.readthedocs.io/en/latest/NLopt_Installation/

### Extra data

Not all the data used in this analysis is included in this git repository.
Particularly the `stanfit` for the effect diffusion tree is quite large (~3G).
The document can be rendered happily without it, and most summary data
is provided by the serialized R data files in this repository. However,
if you'd like to play with the full fitted model it can be downloaded from:

http://repo.mouseimaging.ca/repo/chammill/real-data-edt.rds
