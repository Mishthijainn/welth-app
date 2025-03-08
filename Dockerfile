# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install --legacy-peer-deps


# Copy the entire project
COPY . .
RUN npm run build
# Expose the port Next.js runs on
EXPOSE 3000

# Start the Next.js app
CMD ["npm", "run", "start"]
