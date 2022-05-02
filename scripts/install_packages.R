### install packages ###

# install pacman package if not installed -----------------------------------------------
suppressWarnings(if (!require("pacman")) install.packages("pacman"))

# load packages and install if not installed --------------------------------------------
<<<<<<< Updated upstream
pacman::p_load(tidyverse, broom, readr, here,
=======
<<<<<<< Updated upstream
pacman::p_load(tidyverse, broom, readr, here
=======
pacman::p_load(tidyverse, broom,
>>>>>>> Stashed changes
>>>>>>> Stashed changes
               install = TRUE,
               update = FALSE)

# show loaded packages ------------------------------------------------------------------
cat("loaded packages\n")
print(pacman::p_loaded())
