FROM node:latest

RUN git clone https://github.com/nethsaragimhan/plugin-king-bot /root/plugin-king-bot
WORKDIR /root/plugin-king-bot/
RUN git clone https://github.com/nethsaragimhan/plugin-king-bot
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]


