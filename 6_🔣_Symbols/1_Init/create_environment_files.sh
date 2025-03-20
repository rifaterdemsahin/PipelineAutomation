#!/bin/bash
# chmod +x ./create_environment_files.sh;./create_environment_files.sh
echo "CREATING ENVIRONMENT FOLDERS"
touch 3.1.1_environment_XXX.md
echo "environment: XXX Prompt: Write Pros and Cons" >> 3.1.1_environment_XXX.md
touch 3.2.1_environment_XXX.md
echo "environment: XXX Prompt: Write Pros and Cons" >>3.2.1_environment_XXX.md
touch 3.3.1_environment_XXX.md
echo "environment: XXX Prompt: Write Pros and Cons" >> 3.3.1_environment_XXX.md

# Move the files into the directory
mv 3.1.1_environment_XXX.md 3.2.1_environment_XXX.md 3.3.1_environment_XXX.md 3_🌳_Environments/


