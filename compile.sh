#!/bin/bash

# Name of the main file without extension
MAIN_FILE="main"

# Folder to store the generated files
OUTPUT_FOLDER="out"

# Desired name for the final PDF
FINAL_PDF_NAME="musterarbeit_max_mustermann.pdf"

# Define patterns for generated files
generated_files_patterns=(
    "*.aux" "*.bbl" "*.blg" "*.log" "*.out" "*.toc" "*.lof" "*.lot"
    "*.fdb_latexmk" "*.fls" "*.synctex.gz"
)

# Clean up all previously generated files in the project directory
echo "Cleaning up previously generated files..."
for pattern in "${generated_files_patterns[@]}"; do
    find . -type f -name "$pattern" -exec rm -f {} + 2>/dev/null
done

echo "Cleanup complete. Starting build process..."

# Run the commands to compile the LaTeX document and generate the PDF
pdflatex $MAIN_FILE.tex
bibtex $MAIN_FILE.aux
pdflatex $MAIN_FILE.tex
pdflatex $MAIN_FILE.tex

# Create the output folder if it doesn't already exist
mkdir -p $OUTPUT_FOLDER

# Move all generated auxiliary files from the root directory
echo "Moving generated files to '$OUTPUT_FOLDER' folder..."
find . -type f \( \
    -name "*.aux" -o \
    -name "*.bbl" -o \
    -name "*.blg" -o \
    -name "*.log" -o \
    -name "*.out" -o \
    -name "*.toc" -o \
    -name "*.lof" -o \
    -name "*.lot" -o \
    -name "*.fdb_latexmk" -o \
    -name "*.fls" -o \
    -name "*.synctex.gz" \) -exec mv -t $OUTPUT_FOLDER {} + 2>/dev/null

# Rename the generated PDF file
if [ -f "$MAIN_FILE.pdf" ]; then
    mv -f "$MAIN_FILE.pdf" "$FINAL_PDF_NAME"
    echo "Renamed PDF to '$FINAL_PDF_NAME'."
else
    echo "Error: PDF file '$MAIN_FILE.pdf' not found!"
fi

echo "Cleanup complete. All auxiliary files are in the '$OUTPUT_FOLDER' folder. Generated PDF: $FINAL_PDF_NAME"
