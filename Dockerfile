# ================================================
# | NPM BUILDER - FRONTEND
# ================================================

FROM node:18.15.0-alpine3.17 AS npm_builder

WORKDIR /app
COPY frontend/package*.json ./
RUN cd /app
RUN npm install
COPY frontend/ .

RUN npm run build

# ================================================
# | PYTHON BUILDER - BACKEND
# ================================================

# Set the base image to use
FROM python:3.11.2-slim-buster

# Set the working directory
WORKDIR /app

# Copy the requirements file and install dependencies
COPY backend/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the remaining application files
COPY backend/ .
COPY --from=npm_builder /app/dist ./static
RUN export FLASK_ENV=development

EXPOSE 5000
