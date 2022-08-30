#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub
#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=henry557/flaskapp:v8

# Step 2:
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag  henry557/flaskapp:v8  henry557/flaskapp:v9
docker login -u henry557 -p $password
# Step 3:
# Push image to a docker repository
docker push henry557/flaskapp:v9