#!/bin/bash

# Script to run your Jekyll homepage locally using Docker
# Usage: ./run-local.sh

echo "🚀 Starting your homepage locally..."
echo ""

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "❌ Docker is not running!"
    echo "Please start Docker Desktop and try again."
    exit 1
fi

echo "✅ Docker is running"
echo ""

# Navigate to the project directory
cd "$(dirname "$0")"

echo "📦 Pulling latest Docker image (if needed)..."
docker compose pull

echo ""
echo "🔧 Starting Jekyll server..."
echo ""
echo "Your homepage will be available at: http://localhost:8080"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

# Start the server
docker compose up
