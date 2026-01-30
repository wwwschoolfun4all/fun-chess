#!/bin/bash

# Fun Chess Docker Deployment Script
echo "🚀 Deploying Fun Chess Website with Docker..."

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "❌ Docker is not running. Please start Docker first."
    exit 1
fi

# Build the image
echo "📦 Building Docker image..."
docker build -t fun-chess:latest .

# Run locally for testing
echo "🧪 Running container locally..."
docker run -d -p 8080:80 --name fun-chess-local fun-chess:latest

echo "✅ Website is running at http://localhost:8080"
echo ""
echo "🌐 To deploy for public access:"
echo "1. Push to Docker Hub:"
echo "   docker tag fun-chess:latest yourusername/fun-chess:latest"
echo "   docker push yourusername/fun-chess:latest"
echo ""
echo "2. Deploy to cloud:"
echo "   - AWS: docker run -d -p 80:80 yourusername/fun-chess"
echo "   - Google Cloud Run: gcloud run deploy"
echo "   - Azure Container Instances: az container create"
echo ""
echo "🎮 Your Fun Chess website is ready!"
