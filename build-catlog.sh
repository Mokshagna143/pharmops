#!/bin/bash
set -e

TAG="v1.0.0"

echo "========== Building: catalog-service =========="
docker buildx build --platform linux/amd64 \
  -t "${REGISTRY}/catalog-service:${TAG}" \
  --push "services/drug-catalog-service"

echo "catalog-service image pushed to ECR successfully!"
