# Python 3.11이 설치된 Alpine Linux 3.19 이미지 호출
# Alpine Linux는 경량화(빌드 속도 빠름)된 리눅스 배포판으로, 컨테이너 환경에 적합
FROM python:3.11-alpine3.19

LABEL maintainer='gwii'

# python 0:1 = False:True
# Python이 표준 입출력 버퍼링을 비활성화하게 하여, 로그가 즉시 콘솔에 출력
# Docker 컨테이너에서 로그를 실시간으로 볼 수 있게 되어 관리가 편해짐
ENV PYTHONUNBUFFERED 1

# tmp에 넣는 이유는 컨테이너를 최대한 경량화로 유지하기 위해
# tmp는 빌드가 완료되면 삭제 예정이라
COPY ./requirements.txt /tmp/requirements.txt
COPY ./requirements.dev.txt /tmp/requirements.dev.txt

# django port번호가 8000으로 문을 열어줌
EXPOSE 8000

# && \: Enter
# 리눅스 기반의 명령어
# 파이썬 가상 환경 /py 디렉토리 생성
RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user

# 환경변수, path 설정
ENV PATH="/py/bin:$PATH"
USER django-user

# Django(추후에 Scikit-learn => REST API) - Docker - Github Actions(CI/CD)