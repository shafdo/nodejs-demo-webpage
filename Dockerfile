# Use node base image
FROM node:18.13.0-slim

# Set working directory to /app
WORKDIR /app

# Copy our local project to the docker container
COPY . /app

# Run npm install to install all packages
RUN npm install

# Expose port 8081 on the container
EXPOSE 8081

# Run the project in the container
CMD ["npm", "run", "start"]