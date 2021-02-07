#FROM centos:centos7
FROM hub.docker.thinkchanges.cn/suntek/vue-msf-docker:1.2.9
MAINTAINER sunny5156 <sunny5156@qq.com>


ADD ./server /vue-msf/dolphindb

RUN yum install -y tzdata \
    && chmod +x /vue-msf/dolphindb/dolphindb


ADD ./config/supervisor/dolphindb.conf /vue-msf/supervisor/conf.d/

WORKDIR /vue-msf/dolphindb

#ENTRYPOINT ["./dolphindb"]