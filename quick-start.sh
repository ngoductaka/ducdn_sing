#!/bin/bash

# Design System Quick Start Script
# This script helps you get started with the design system

set -e

echo "🎨 Design System - Quick Start"
echo "================================"
echo ""

# Check if pnpm is installed
if ! command -v pnpm &> /dev/null; then
    echo "❌ pnpm is not installed"
    echo "📦 Installing pnpm globally..."
    npm install -g pnpm
    echo "✅ pnpm installed successfully"
    echo ""
fi

# Check Node version
NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 18 ]; then
    echo "❌ Node.js version must be >= 18.0.0"
    echo "   Current version: $(node -v)"
    echo "   Please upgrade Node.js and try again"
    exit 1
fi

echo "✅ Node.js version: $(node -v)"
echo "✅ pnpm version: $(pnpm -v)"
echo ""

# Install dependencies
echo "📦 Installing dependencies..."
pnpm install

echo ""
echo "✅ Dependencies installed successfully!"
echo ""

# Build all packages
echo "🔨 Building all packages..."
pnpm build

echo ""
echo "✅ All packages built successfully!"
echo ""

# Summary
echo "🎉 Setup Complete!"
echo "================================"
echo ""
echo "Next steps:"
echo ""
echo "  1. Start Storybook:"
echo "     pnpm storybook"
echo ""
echo "  2. Open http://localhost:6006 in your browser"
echo ""
echo "  3. Read the documentation:"
echo "     - PROJECT_SUMMARY.md - Complete overview"
echo "     - GETTING_STARTED.md - Detailed guide"
echo "     - CONTRIBUTING.md - How to contribute"
echo ""
echo "Available commands:"
echo "  pnpm dev              - Run all packages in watch mode"
echo "  pnpm build            - Build all packages"
echo "  pnpm storybook        - Start Storybook"
echo "  pnpm lint             - Lint all packages"
echo "  pnpm type-check       - Run TypeScript checks"
echo "  pnpm changeset        - Create a changeset"
echo ""
echo "Happy coding! 🚀"
