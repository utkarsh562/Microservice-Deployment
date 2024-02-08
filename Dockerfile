# Use an official Node.js runtime as a base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the source code to the container
COPY . .

# Build Tailwind CSS
RUN npm run build-css

# Expose port 3000 for the React app
EXPOSE 3000

# Start the React app
CMD ["npm", "start"]

