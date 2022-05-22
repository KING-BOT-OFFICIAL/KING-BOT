FROM node:latest

RUN git clone https://github.com/KING-BOT-OFFICIAL/V1 /root/V1
WORKDIR /root/V1/
RUN git clone https://github.com/KING-BOT-OFFICIAL/V1
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]


