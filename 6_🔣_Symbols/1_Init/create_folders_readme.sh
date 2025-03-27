#!/bin/bash
# Create folders with README files inside each folder
# chmod +x ./create_folders_readme.sh;./create_folders_readme.sh

echo "📁 CREATING MAIN FOLDERS AND README FILES"

# Define folder names and their respective README content
declare -A folders=(
  ["1_🌍_Real"]="# The Job That Starts with Objective and Key Results\n\n*Sets goals and objectives, aligning tasks with measurable results.*\n\n**Action:** Aim > Goals"
  ["2_✈️_Journey"]="# Visual Story Explained with Steps\n\n*A self-learning guide from beginner to skilled in visual and linear storytelling.*\n\n**Action:** Feel > Experience"
  ["3_🌳_Environments"]="# The Roadmap and Use Cases\n\n*A roadmap with learning modules and real-world use cases to apply new skills.*\n\n**Action:** Create > Runtimes"
  ["4_🌌_Imaginary"]="# What You Learn on the Road\n\n*Tracks concepts, theories, and skills acquired, promoting continuous growth.*\n\n**Action:** Capture > Screenshots"
  ["5_📐_Formulas"]="# The Guides That Are Mentioned\n\n*Essential guides and formulas for understanding and solving project challenges.*\n\n**Action:** GPT > Learn from it"
  ["6_🔣_Symbols"]="# Code That Is Implemented\n\n*Includes code snippets and examples to demonstrate each concept practically.*\n\n**Action:** Execute > Code"
  ["7_🌀_Semblance"]="# Errors Found in the Process\n\n*Documents mistakes and solutions, making errors valuable learning opportunities.*\n\n**Action:** Fix > Errors"
)

# Create folders and add README.md to each with formatted content
for folder in "${!folders[@]}"; do
  mkdir -p "$folder"  # Create the folder
  echo -e "${folders[$folder]}" > "$folder/README.md"  # Create README.md with formatted content
  echo "✅ Created $folder with README.md"
done

# Create the main README.md file
cat > README.md << 'EOF'
# Self Learning Project Template
## Goal : Fill the skills gaps by self learning while leveraging technology

## 📚 Documentation for the Folder Structure

| Section         | Description                                                                                                      | Action                |
|-----------------|------------------------------------------------------------------------------------------------------------------|-----------------------|
| **1_🌍_Real**         | *The Job That Starts with Objective and Key Results* - Sets goals and objectives, aligning tasks with measurable results. | Aim > Goals   |
| **2_✈️_Journey** | *Visual Story Explained with Steps* - A self-learning guide from beginner to skilled in visual storytelling.            | Feel > Experience |
| **3_🌳_Environments** | *The Roadmap and Use Cases* - A roadmap with learning modules and real-world use cases to apply new skills.            | Create > Runtimes |
| **4_🌌_Imaginary**    | *What You Learn on the Road* - Tracks concepts, theories, and skills acquired, promoting continuous growth.            | Capture > Screenshots |
| **5_📐_Formulas**     | *The Guides That Are Mentioned* - Essential guides and formulas for understanding and solving project challenges.     |  GPT > Learn from it |
| **6_🔣_Symbols**      | *Code That Is Implemented* - Includes code snippets and examples to demonstrate each concept practically.              |  Execute > Code   |
| **7_🌀_Semblance**    | *Errors Found in the Process* - Documents mistakes and solutions, making errors valuable learning opportunities.       |  Fix > Errors   |

## 👥 Collaborators

## 🔄 Prompts:
### 🎯 Objectives
- Develop a comprehensive self-learning framework that:
  - Maps learning stages to Lacan's triad concepts
  - Provides clear metrics for progress tracking
  - Includes practical validation methods
- Establish a systematic process to:
  - Identify current skill levels
  - Define target competencies 
  - Create actionable learning plans
  - Measure skill development
- Build a portfolio of real-world projects that:
  - Demonstrate applied knowledge
  - Solve actual business problems
  - Follow industry best practices
  - Include detailed documentation

### 📊 Key Results
- Implement folder structure mapping to Lacan's concepts
- Track progress through clear documentation and examples
- Validate learning through hands-on implementation
- Capture errors and solutions for continuous improvement

### 📝 Format Requirements
- Use clear markdown structure and headings
- Include relevant emojis for visual organization
- Add concise single-line comments for clarity
- Maintain consistent formatting throughout
- Eliminate redundant information

### ✅ Quality Checks
- Verify grammar and spelling
- Validate markdown syntax
- Ensure documentation completeness
- Test all code examples
- Review for duplicate content

## 🔧 PromptFixer:
- Act as a prompt engineer, review the prompt and ask your questions, write a better version of the prompt
EOF

echo "✅ Created main README.md"

# Create the initialization folder for symbols
mkdir -p "6_🔣_Symbols/1_Init"
echo "✅ Created 6_🔣_Symbols/1_Init directory"

# Move this script to the symbols/init folder
cp "$0" "6_🔣_Symbols/1_Init/"
echo "✅ Copied script to 6_🔣_Symbols/1_Init/"

echo "🎉 Folder structure created successfully with README.md files!"