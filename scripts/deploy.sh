#!/bin/bash
<<<<<<< HEAD
# Production Deployment Script
# Version: 1.0.0
=======
# Development Deployment Script
# Version: 2.0.0-beta
>>>>>>> instructor/dev

set -e

DEPLOY_ENV=${DEPLOY_ENV:-production}
echo "====================================="
echo "DevOps Simulator - Deployment"
echo "====================================="

if ["$DEPLOY_ENV"="production"];then
   echo "Mode:Production"
   DEPLOY_REGION="us-east-1"
   APP_PORT=8080
   echo "Environment: $DEPLOY_ENV"
   echo "Region: $DEPLOY_REGION"
   echo "Port: $APP_PORT"
   echo "Starting production deployment...."

elif ["$DEPLOY_ENV"="development"];then
echo "Mode:Development"
DEPLOY_MODE="docker-compose"
APP_PORT=3000
echo "Environment: $DEPLOY_ENV"
echo "Mode: $DEPLOY_MODE"
echo "Port: $APP_PORT"
echo "Debug: $ENABLE_DEBUG"
echo "Installing dependencies..."
npm install
echo "Starting development server...."

else
echo "Error :Unknown environment $DEPLOY_ENV"
exit 1

fi
echo "Deployment completed successfully!"

>>>>>>> instructor/dev

# Pre-deployment checks
echo "Running pre-deployment checks..."
if [ ! -f "config/app-config.yaml" ]; then
    echo "Error: Configuration file not found!"
    exit 1
fi

<<<<<<< HEAD
# Deploy application
echo "Starting deployment..."
echo "Pulling latest Docker images..."
# docker pull devops-simulator:latest

echo "Rolling update strategy initiated..."
# kubectl rolling-update devops-simulator

echo "Deployment completed successfully!"
echo "Application available at: https://app.example.com"
=======
# Install dependencies
echo "Installing dependencies..."
npm install

# Run tests
echo "Running tests..."
npm test

# Deploy application
echo "Starting deployment..."
echo "Using Docker Compose..."
docker-compose up -d

# Wait for application to start
echo "Waiting for application to be ready..."
sleep 5

# Health check
echo "Performing health check..."
curl -f http://localhost:$APP_PORT/health || exit 1

echo "Deployment completed successfully!"
echo "Application available at: http://localhost:$APP_PORT"
echo "Hot reload enabled - code changes will auto-refresh"
>>>>>>> instructor/dev
