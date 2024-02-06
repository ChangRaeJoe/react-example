FROM node:lts-alpine as build
WORKDIR /front.dir
COPY ["./package*.json", "./"]
RUN npm install

# 소스코드 복사 및 빌드
COPY ["./", "./"]
RUN npm run build

# dev: 생성된 build 디렉토리를 root로 해서 앱 서비스 실행
# ENTRYPOINT ["npx", "serve", "-l", "3000" "-s", "build"]

FROM nginx:stable-alpine as deploy
COPY --from=build /front.dir/build /usr/share/nginx/html
COPY nginx/nginx.conf /etc/nginx/conf.d/
EXPOSE 3000
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
