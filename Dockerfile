FROM mhart/alpine-node
COPY . /app
CMD node /app/node_modules.js
EXPOSE 3700
