#!/bin/bash

echo "🚀 oznextsosyal Deployment Script"
echo "=================================="

# Check if running as root
if [ "$EUID" -eq 0 ]; then
    echo "❌ Please don't run this script as root"
    exit 1
fi

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker is not installed. Please install Docker first."
    exit 1
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose is not installed. Please install Docker Compose first."
    exit 1
fi

echo "✅ Docker and Docker Compose are available"

# Create necessary directories
echo "📁 Creating directories..."
mkdir -p oznextsosyal-storage
mkdir -p ssl

# Set proper permissions for storage
echo "🔐 Setting permissions..."
sudo chown 911:911 ./oznextsosyal-storage

# Check if SSL certificates exist
if [ ! -f "./ssl/oznextsosyal.com.crt" ] || [ ! -f "./ssl/oznextsosyal.com.key" ]; then
    echo "⚠️  SSL certificates not found in ./ssl/"
    echo "   Please add your SSL certificates:"
    echo "   - ./ssl/oznextsosyal.com.crt"
    echo "   - ./ssl/oznextsosyal.com.key"
    echo ""
    echo "   Or use Let's Encrypt to generate them."
    echo ""
    read -p "Continue without SSL? (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        exit 1
    fi
    # Use HTTP only
    echo "🌐 Using HTTP only (no SSL)"
    docker-compose -f docker-compose.oznextsosyal.yml up --build -d oznextsosyal
else
    echo "🔒 SSL certificates found, starting with HTTPS..."
    docker-compose -f docker-compose.oznextsosyal.yml up --build -d
fi

echo ""
echo "🎉 Deployment completed!"
echo ""
echo "📋 Service Status:"
docker-compose -f docker-compose.oznextsosyal.yml ps

echo ""
echo "🌐 Access URLs:"
if [ -f "./ssl/oznextsosyal.com.crt" ]; then
    echo "   HTTPS: https://oznextsosyal.com"
    echo "   HTTP:  http://oznextsosyal.com (redirects to HTTPS)"
else
    echo "   HTTP:  http://localhost:3000"
fi

echo ""
echo "📊 Logs:"
echo "   docker-compose -f docker-compose.oznextsosyal.yml logs -f"

echo ""
echo "🛑 To stop services:"
echo "   docker-compose -f docker-compose.oznextsosyal.yml down"

echo ""
echo "🔄 To update:"
echo "   git pull"
echo "   ./deploy.sh" 
