FROM node:latest

RUN npm install -g pnpm
# Create app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./

RUN pnpm install

# Bundle app source
COPY . .

EXPOSE 3000

CMD [ "pnpm", "start" ]