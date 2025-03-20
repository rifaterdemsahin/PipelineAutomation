#!/bin/bash
# chmod +x ./create_real_files.sh;./create_real_files.sh
touch 1.1.1_objective_XXX.md
echo "Objective:" >> 1.1.1_objective_XXX.md
touch 1.2.1_objective_XXX.md
echo "Objective:" >> 1.2.1_objective_XXX.md
touch 1.3.1_objective_XXX.md
echo "Objective:" >> 1.3.1_objective_XXX.md

# Move the files into the directory
mv 1.1.1_objective_XXX.md 1.2.1_objective_XXX.md 1.3.1_objective_XXX.md 1_🌍_Real/
