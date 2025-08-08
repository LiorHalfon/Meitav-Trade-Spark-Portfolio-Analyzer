#!/bin/bash

# Meitav Trade Spark Portfolio Analyzer - First Time Setup Script
# This script creates a virtual environment, activates it, and installs required packages

set -e  # Exit on any error

echo "🚀 Starting first time setup for Meitav Trade Spark Portfolio Analyzer..."

# Check if Python 3 is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Error: Python 3 is not installed. Please install Python 3 and try again."
    exit 1
fi

# Check if pip is installed
if ! command -v pip3 &> /dev/null; then
    echo "❌ Error: pip3 is not installed. Please install pip and try again."
    exit 1
fi

# Create virtual environment
echo "📦 Creating virtual environment..."
python3 -m venv venv

# Activate virtual environment
echo "🔧 Activating virtual environment..."
source venv/bin/activate

# Upgrade pip to latest version
echo "⬆️ Upgrading pip..."
pip install --upgrade pip

# Check if requirements.txt exists
if [ ! -f "requirements.txt" ]; then
    echo "⚠️ Warning: requirements.txt not found. Creating a basic one..."
    cat > requirements.txt << EOF
# Add your project dependencies here
# Example:
# pandas>=1.3.0
# numpy>=1.21.0
# pyspark>=3.0.0
EOF
    echo "📝 Created requirements.txt template. Please add your dependencies and run this script again."
else
    # Install packages from requirements.txt
    echo "📚 Installing packages from requirements.txt..."
    pip install -r requirements.txt
    echo "✅ All packages installed successfully!"
fi

echo ""
echo "🎉 Setup completed successfully!"
echo ""
echo "To activate the virtual environment in the future, run:"
echo "    source venv/bin/activate"
echo ""
echo "To deactivate the virtual environment, run:"
echo "    deactivate"
echo ""
echo "Happy coding! 🐍✨"