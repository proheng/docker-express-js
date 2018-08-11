# docker run -p 3000:3000 -v  C:\Rex\Sandbox\ExpressSite:/usr/src/app proheng/node

FROM node
LABEL Author="Rex Zhiheng He"
ENV NODE_ENV development
WORKDIR /usr/src/app
COPY ["package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --development --silent && mv node_modules ../
COPY . .
EXPOSE 3000
CMD npm start

