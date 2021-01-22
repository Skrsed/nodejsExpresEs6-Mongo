FROM node:14

# создание директории приложения
WORKDIR /home/user/Desktop/express-test

# Демон для ноды
RUN npm install -g nodemon

# установка зависимостей
# символ астериск ("*") используется для того чтобы по возможности 
# скопировать оба файла: package.json и package-lock.json
COPY package*.json ./

RUN npm install

# Если вы создаете сборку для продакшн
# RUN npm ci --only=production

# копируем исходный код
COPY . .

EXPOSE 8080
# CMD [ "nodemon", "start" ]