# 🔐 Demo: Devcontainer Build with Secrets

[![Run in Ona](https://ona.com/run-in-ona.svg)](https://app.ona.com/#https://github.com/Siddhant-K-code/demo-devcontainer-build-with-secrets)

A demonstration project showing how [Ona Project secrets](https://ona.com/docs/ona/projects/project-secrets#project-secrets) work with devcontainer builds, highlighting the security distinction between build-time and runtime secret availability.

## 🎯 What This Demo Shows

This project demonstrates **Ona's secure secret handling** in devcontainer environments:

- ✅ **Build Time**: Secrets are **NOT available** (security feature)
- ✅ **Runtime**: Secrets are **injected by Ona** into the running environment
- ✅ **Security**: Secrets never become part of Docker image layers

## 🚀 Quick Start

1. **Click the "Run in Ona" button above** to open this project in Ona
2. **Add a project secret**:
   - Go to Project Settings → Environment Variables
   - Add `MY_PRIVATE_SECRET` with any demo value (e.g., "my-demo-secret-123")
3. **Rebuild the devcontainer**:
   ```bash
   gitpod environment devcontainer rebuild
   ```
4. **Watch the demo** - you'll see the secret behavior during build and runtime!

### What happens:
1. **During build**: Secret is empty (shown in build logs)
2. **At startup**: Fancy banner displays and demo runs automatically
3. **Runtime**: Secret is available and demo shows the comparison

## 📚 Key Learning

**Ona Project secrets are injected at RUNTIME, not build time.**

This is a **security best practice** that:
- Prevents secrets from being baked into Docker image layers
- Ensures secrets are only available when the application needs them
- Follows industry standards for secure container secret handling
