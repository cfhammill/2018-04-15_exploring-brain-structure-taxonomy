## Exploring Brain Structure Taxonomy with Stan

This is my submission for StanCon Helsinki on exploring
brain structure taxonomy with stan.

To recompile the rmarkdown file, first clone this repository

```
git clone https://github.com/cfhammill/2018-04-15_stancon-helsinki-submission
cd 2018-04-15_stancon-helsinki-submission
```

Recompiling the rmarkdown document requires tidyverse and my package
`hierarchyTrees`. To install `hierarchyTrees` and its dependencies
(assuming `devtools` is installed) you can run:

```
## Warning this runs devtools install which may update packages
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
make 
```
