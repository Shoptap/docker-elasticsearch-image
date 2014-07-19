FROM dockerfile/elasticsearch

MAINTAINER guerremdq < gueremdq@gmail.com >

RUN /elasticsearch/bin/plugin -install com.github.kzwang/elasticsearch-image/1.2.0
