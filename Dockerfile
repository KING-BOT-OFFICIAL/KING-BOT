FROM node:latest

RUN git clone https://github.com/KING-BOT-OFFICIAL/KING-BOT /root/KING-BOT
WORKDIR /root/KING-BOT/
RUN git clone https://github.com/KING-BOT-OFFICIAL/KING-BOT
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]


