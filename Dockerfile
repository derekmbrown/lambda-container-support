FROM public.ecr.aws/lambda/nodejs:14

RUN npm init -y

RUN npm i node-emoji

CMD [ "app.handler" ]