# 베이스 이미지 
FROM ubuntu:latest

# RUN 명령 
RUN echo 안녕하세요. shell 형식입니다. 
RUN ["echo"," 안녕하세요 Exec 형식입니다."]
RUN ["/bin/bash","-c","echo '안녕하세요 EXec 형식에서 hash를 사용해 보았습니다.'"]

# 파일 추가 
WORKDIR /var/wwww
ADD index.html web/

# 원격 파일 추가 
ADD https://www.d2.co.kr/index.do web/

# 파일 추가 제외  .dockerignore에 제외 파일 리스트 추가 
ADD dummyfile /tmp/dummyfile

# 볼륨 마운트 (디렉로리로 인식)
VOLUME [ "/home/bjhhmc/rootOneDrive/docker-soldesk-test01/chap05/sample/data" ]