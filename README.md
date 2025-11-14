# Verb embodiment project from Schilling et al. (2025)

Our analyses are available on the `verb_embodiment_analyses.Rmd` file! From there, you can read in the supplemental `.R` scripts: `clean_ratings.R`, `mb_cdi_verbs.R`, and `mb_cdi_admin_data.R`.

- `clean_ratings.R` cleans the raw verb embodiment ratings file

- `mb_cdi_verbs.R` extracts all verbs from the MB-CDI Words & Sentences Long Form (Marchman et al., 2023) and adds verb norm data, including:
  - Our embodiment ratings (Schilling et al., 2025)
  - Prior embodiment ratings (Sidhu et al., 2014)
  - Concreteness ratings (Brysbaert et al., 2014)
  - Imageability ratings (Cortese & Fugett, 2004)
  - Log of word frequency in child-directed speech (MacWhinney, 2000)

-  `mb_cdi_admin_data.R` extracts all verb production data from the MB-CDI Words & Sentences Long Form administrations with typically developing, monolingual North American English-speaking children ages 16-3 months in the Wordbank repository (Frank et al., 2017)

Under the "Multilevel Modeling" section, you'll find many generalized linear mixed-effects models that are pre-baked to save time. You can download the model `.rds` files from our main folder. 

Thanks for your interest, and please feel free to reach out to us via email at lschilling@g.harvard.edu if you have any questions!

**References**

Bates, D., Mächler, M., Bolker, B., & Walker, S. (2015). Fitting linear mixed-effects models using lme4. _Journal of Statistical Software, 67_(1), 1–48. https://doi.org/10.18637/jss.v067.i01

Brysbaert, M., Warriner, A. B., & Kuperman, V. (2014). Concreteness ratings for 40 thousand generally known English word lemmas. _Behavior Research Methods, 46_(3), 904–911. https://doi.org/10.3758/s13428-013-0403-5

Cortese, M. J., & Fugett, A. (2004). Imageability ratings for 3,000 monosyllabic words. _Behavior Research Methods, Instruments, & Computers, 36_(3), 384–387. https://doi.org/10.3758/BF03195585

De Boeck, P., & Wilson, M. (Eds.). (2004). _Explanatory item response models: A generalized linear and nonlinear approach_. Springer New York. https://doi.org/10.1007/978-1-4757-3990-9

Frank, M. C., Braginsky, M., Yurovsky, D., & Marchman, V. A. (2017). Wordbank: An open repository for developmental vocabulary data. _Journal of Child Language, 44_(3), 677–694. https://doi.org/10.1017/S0305000916000209

MacWhinney, B. (2000). _The CHILDES Project: Tools for analyzing talk: The database_ (3rd ed.). Lawrence Erlbaum Associates Publishers.

Marchman, V. A., Dale, P. S., & Fenson, L. (2023). _MacArthur-Bates Communicative Development Inventories user’s guide and technical manual_ (3rd ed.). Brookes Publishing. 

Sidhu, D. M., Kwan, R., Pexman, P. M., & Siakaluk, P. D. (2014). Effects of relative embodiment in lexical and semantic processing of verbs. _Acta Psychologica, 149_, 32–39. https://doi.org/10.1016/j.actpsy.2014.02.009

