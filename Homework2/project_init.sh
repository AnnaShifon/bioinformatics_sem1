#!/bin/bash

if [ $# -eq 0 ]; then
    echo "No project name provided"
    exit 1
fi

PROJECT_NAME=$1
mkdir "$PROJECT_NAME"
mkdir "$PROJECT_NAME/data"
mkdir "$PROJECT_NAME/scripts"
mkdir "$PROJECT_NAME/results"
touch "$PROJECT_NAME/data/raw_data.txt"
chmod 600 "$PROJECT_NAME/data/raw_data.txt"

echo '#!/bin/bash' > "$PROJECT_NAME/scripts/run_analysis.sh"
echo "echo \"Hello from $1\"" >> "$PROJECT_NAME/scripts/run_analysis.sh"

chmod +x "$PROJECT_NAME/scripts/run_analysis.sh"

