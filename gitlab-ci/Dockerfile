#openjdk 体积小
FROM maven:3.6-jdk-8-alpine

#build参数
ARG RUNNER_PATH=/usr/local/bin/gitlab-runner
ARG RUNNER_URL=https://gitlab-ci-multi-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-ci-multi-runner-darwin-amd64

#run
RUN sudo curl --output ${RUNNER_PATH} ${RUNNER_URL}
RUN sudo chmod +x ${RUNNER_PATH}

ARG GITLAB_HOST
ARG GITLAB_TOKEN


