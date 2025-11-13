# Verb embodiment project from Schilling et al. (2025)

Our analyses are available on the `verb_embodiment_analyses.Rmd` file! From there, you can read in the supplemental .R scripts: clean_ratings.R, mb_cdi_verbs.R, and mb_cdi_admin_data.R.

- clean_ratings.R cleans the raw verb embodiment ratings file

- mb_cdi_verbs.R extracts all verbs from the MB-CDI Words & Sentences Long Form (Marchman et al., 2023) and adds all verb norm data, including:
  - Our embodiment ratings (Schilling et al., 2025)
  - Prior embodiment ratings (Sidhu et al., 2014)
  - Concreteness ratings (Brysbaert et al., 2014)
  - Imageability ratings (Cortese & Fugett, 2004)
  - Log of word frequency in child-directed speech (MacWhinney, 2000)

-  mb_cdi_admin_data.R extracts all verb production data from the MB-CDI Words & Sentences Long Form administrations with typically developing, monolingual North American English-speaking children ages 16-3 months in the Wordbank repository (Frank et al., 2017)

Under the "Multilevel Modeling" section, you'll find many generalized linear mixed-effects models that are pre-baked to save time. You can download the model .RDS files from our main folder. 

Thanks for your interest, and please feel free to reach out to us via email at lschilling@g.harvard.edu if you have any questions!
