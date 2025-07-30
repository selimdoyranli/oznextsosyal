#!/bin/bash

echo "🚀 Setting up oznextsosyal - Türkçe Mastodon Web İstemcisi"
echo "=================================================="

# Check if Node.js version is correct
REQUIRED_NODE="22.17.1"
CURRENT_NODE=$(node --version | cut -d'v' -f2)

if [ "$CURRENT_NODE" != "$REQUIRED_NODE" ]; then
    echo "⚠️  Node.js version mismatch!"
    echo "   Required: $REQUIRED_NODE"
    echo "   Current:  $CURRENT_NODE"
    echo "   Please run: nvm use"
    exit 1
fi

echo "✅ Node.js version is correct: $CURRENT_NODE"

# Install dependencies
echo "📦 Installing dependencies..."
if command -v pnpm &> /dev/null; then
    echo "Using pnpm..."
    pnpm install
elif command -v npm &> /dev/null; then
    echo "Using npm..."
    npm install --legacy-peer-deps
else
    echo "❌ Neither pnpm nor npm found. Please install one of them."
    exit 1
fi

echo ""
echo "🎉 Setup complete!"
echo ""
echo "📋 Configuration Summary:"
echo "   • Default Server: mastoturk.org"
echo "   • Default Language: Türkçe (tr-TR)"
echo "   • App Name: oznextsosyal"
echo ""
echo "🚀 To start the development server:"
echo "   npm run dev"
echo "   or"
echo "   pnpm dev"
echo ""
echo "🌐 The app will be available at: http://localhost:5314"
echo ""
echo "📝 Note: This is a fork of Elk customized for Turkish users"
echo "   and mastoturk.org server integration." 
