#!/bin/bash

echo "🔍 Ona Secret Demo Verification"
echo "=================================="
echo

# Check if secret is set
if [ -n "$MY_PRIVATE_SECRET" ]; then
    echo "✅ MY_PRIVATE_SECRET is available"
    echo "   Length: ${#MY_PRIVATE_SECRET} characters"
    echo "   First 3 chars: ${MY_PRIVATE_SECRET:0:3}..."
else
    echo "❌ MY_PRIVATE_SECRET is not set"
    echo "   Please add it to Ona Project settings"
fi

echo
echo "📋 Build-time artifacts:"
if [ -f "/tmp/secret-demo.log" ]; then
    echo "✅ Build log exists"
    cat /tmp/secret-demo.log
else
    echo "❌ Build log not found"
fi

echo
echo "🛠️ Demo script:"
if [ -x "/usr/local/bin/demo-secret" ]; then
    echo "✅ Demo script is executable"
else
    echo "❌ Demo script not found or not executable"
fi

echo
echo "🎯 To rebuild with your secret:"
echo "   1. Set MY_PRIVATE_SECRET in Ona Project settings"
echo "   2. Run: Ona environment devcontainer rebuild"
echo "   3. Watch the build logs and startup output"