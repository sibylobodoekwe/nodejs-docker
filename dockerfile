# # Use an official Node.js runtime as a parent image
# FROM node:14-alpine as builder


# # Set the working directory inside the container:
# WORKDIR /app

# # Copy the package.json and package-lock.json (or yarn.lock) files to the container:
# COPY package*.json ./

# #Install the dependencies:
# RUN npm ci

# #Copy the rest of the application code to the container:
# COPY . .

# # Build the application:
# RUN npm run build

# # define the production stage by specifying another base image, such as a lightweight Node.js image:
# FROM node:14-alpine AS production

# # Set the working directory inside the container:
# WORKDIR /app

# # Copy the built application from the build stage to the production stage:
# COPY --from=build /app/dist ./dist

# # Install only production dependencies:
# RUN npm ci --production

# # Expose the port on which your application will run:
# EXPOSE 3000

# # Define the command to start your application:
# CMD ["node", "dist/index.js"]


