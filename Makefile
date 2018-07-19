.PHONY: depends

brain-structure-taxonomy.html: brain-structure-taxonomy.Rmd
	Rscript -e "rmarkdown::render(\"brain-structure-taxonomy.Rmd\")"

depends:
	Rscript -e "devtools::install_github(\"cfhammill/hierarchyTrees\", upgrade_dependencies = FALSE)"
