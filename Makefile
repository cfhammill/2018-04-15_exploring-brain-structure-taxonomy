.PHONY: depends

brain-structure-taxonomy.html: brain-structure-taxonomy.Rmd real-data-h2lmer.rds real-data-hlmer.rds real-data-lmer.rds real-data-results.rda simulation_results.rds
	Rscript -e "rmarkdown::render(\"brain-structure-taxonomy.Rmd\")"

depends:
	Rscript -e "devtools::install_github(\"cfhammill/hierarchyTrees\", upgrade_dependencies = FALSE)"

real-data-h2lmer.rds:
	wget "repo.mouseimaging.ca/repo/chammill/stancon_helsinki_files/real-data-h2lmer.rds"

real-data-hlmer.rds:
	wget "repo.mouseimaging.ca/repo/chammill/stancon_helsinki_files/real-data-hlmer.rds"

real-data-lmer.rds:
	wget "repo.mouseimaging.ca/repo/chammill/stancon_helsinki_files/real-data-lmer.rds"

real-data-ept.rds:
	wget "repo.mouseimaging.ca/repo/chammill/stancon_helsinki_files/real-data-ept.rds"

simulation_results.rds:
	wget "repo.mouseimaging.ca/repo/chammill/stancon_helsinki_files/simulation_results.rds"

real-data-results.rda:
	wget "repo.mouseimaging.ca/repo/chammill/stancon_helsinki_files/real-data-results.rda"
