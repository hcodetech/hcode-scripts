# GET
FROM node:18 AS build-env
# Add all files in the current directory to the app
ADD . /app

WORKDIR /app
# Install required depedencies.
RUN yarn
# Generate build
RUN yarn build --target node
# 
FROM gcr.io/distroless/nodejs:18 AS run-env
# Set environment variable.
ENV NODE_ENV production

COPY --from=build-env /app /app

EXPOSE ${PORT:-8080}

WORKDIR /app
# Entry point
CMD ["dist/node/index.js"]