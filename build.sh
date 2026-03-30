#!/bin/bash

# CCRM Build Script
echo "Building Campus Course & Records Manager..."

# Create build directory
mkdir -p build

# Compile Java sources
echo "Compiling Java sources..."
javac -d build -sourcepath src/main/java src/main/java/edu/ccrm/cli/CommandLineInterface.java

if [ $? -eq 0 ]; then
    echo "✓ Compilation successful!"
    echo "To run the application:"
    echo "  java -ea -cp build edu.ccrm.cli.CommandLineInterface"
else
    echo "✗ Compilation failed!"
    exit 1
fi
