#!/bin/bash
# chmod +x ./create_journey_files.sh;./create_journey_files.sh

# 🛠️ Setup instructions
touch 2.1.1_setup.md
echo "# 🛠️ Setup instructions" >> 2.1.1_setup.md
echo "##" >> 2.1.1_setup.md
echo "Prompt:" >> 2.1.1_setup.md
echo "- Write all the setup steps without the commands [in the code space]" >> 2.1.1_setup.md
echo "- Use the [+] for completed lines, [-] for not completed lines" >> 2.1.1_setup.md
echo "- Use emojis" >> 2.1.1_setup.md

# 📜 Commands documentation
touch 2.2.1_commands.md
echo "# 📜 Commands documentation" >> 2.2.1_commands.md
echo "##" >> 2.2.1_commands.md
echo "Prompt:" >> 2.2.1_commands.md
echo "- Add all the commands needed for this setup in the [codebase]" >> 2.2.1_commands.md
echo "- Use the [+] for completed lines, [-] for not completed lines" >> 2.2.1_commands.md
echo "- Use emojis" >> 2.2.1_commands.md

# 🎨 Journey diagram
touch 2.3.1_journey.drawio
echo "# 🎨 Journey diagram" >> 2.3.1_journey.drawio

# ✅ To-do list
touch 2.4.1_todos.md
echo "# ✅ To-do list" >> 2.4.1_todos.md
echo "##" >> 2.4.1_todos.md
echo "Prompt:" >> 2.4.1_todos.md
echo "- Write all the todos needed to complete the project [in the codebase]" >> 2.4.1_todos.md
echo "- Use the [+] for completed lines, [-] for not completed lines" >> 2.4.1_todos.md
echo "- Use emojis" >> 2.4.1_todos.md

# 🐞 Debugging steps
touch 2.5.1_debugging.md
echo "# 🐞 Debugging steps" >> 2.5.1_debugging.md
echo "##" >>  2.5.1_debugging.md
echo "Prompt:" >> 2.5.1_debugging.md
echo "- Write all the debugging methods and tools needed to complete the project [in the codebase]" >> 2.5.1_debugging.md
echo "- Use the [+] for completed lines, [-] for not completed lines" >> 2.5.1_debugging.md
echo "- Use emojis" >> 2.5.1_debugging.md

# 💬 Prompt examples
touch 2.6.1_prompts.md
echo "# 💬 Prompt examples" >> 2.6.1_prompts.md
echo "##" >>  2.6.1_prompts.md
echo "Prompt:" >> 2.6.1_prompts.md
echo "- Write all the prompts needed to complete the project [in the codebase]" >> 2.6.1_prompts.md
echo "- Use the [+] for completed lines, [-] for not completed lines" >> 2.6.1_prompts.md
echo "- Use emojis" >> 2.6.1_prompts.md

# 📁 File management
touch 2.7.1_files.md
echo "# 📁 File management" >> 2.7.1_files.md
echo "##" >>   2.7.1_files.md
echo "Prompt:" >> 2.7.1_files.md
echo "- Write all necessary files needed to complete the project [in the codebase]" >> 2.7.1_files.md
echo "- Use the [+] for completed lines, [-] for not completed lines" >> 2.7.1_files.md
echo "- Use emojis" >> 2.7.1_files.md

# 🦆 Rubber duck conversations
touch 2.8.1_rubberduck.md
echo "##" >> 2.8.1_rubberduck.md
echo "# 🦆 Rubber duck conversations" >> 2.8.1_rubberduck.md
echo "Prompt:" >> 2.8.1_rubberduck.md
echo "- Write all rubberducking needed to complete the project [in the codebase]" >> 2.8.1_rubberduck.md
echo "- Use the [+] for completed lines, [-] for not completed lines" >> 2.8.1_rubberduck.md
echo "- Use emojis" >> 2.8.1_rubberduck.md

echo " time to move the files to the folders "
# Move the files into the directory
mv 2.1.1_setup.md 2.2.1_commands.md 2.3.1_journey.drawio 2.4.1_todos.md 2.5.1_debugging.md 2.6.1_prompts.md 2.7.1_files.md 2.8.1_rubberduck.md 2_✈️_Journey/
