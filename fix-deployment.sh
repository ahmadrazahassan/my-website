#!/bin/bash

# Script to fix deployment issues for Next.js project

echo "Starting deployment fixes..."

# Install dependencies with legacy peer deps flag
echo "Installing dependencies with legacy peer deps..."
npm install --legacy-peer-deps

# Ensure Tailwind CSS is properly installed
echo "Ensuring Tailwind CSS is properly installed..."
npm install -D tailwindcss postcss autoprefixer

# Generate Tailwind config if missing
if [ ! -f tailwind.config.js ]; then
  echo "Generating Tailwind config..."
  npx tailwindcss init -p
fi

# Ensure Prisma client is generated
echo "Generating Prisma client..."
npx prisma generate

# Build the application
echo "Building the application..."
npm run build

echo "Deployment fixes completed!" 