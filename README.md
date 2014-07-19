docker-elasticseach-image
=========================

extends the official elasticsearch image by adding the Image plugin.

### Dependencies

* [dockerfile/java](http://dockerfile.github.io/#/java)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [build](https://index.docker.io/u/guerremdq/elasticsearch-image/) from public [Docker Registry](https://index.docker.io/): `docker pull guerremdq/elasticsearch-image`

   (alternatively, you can build an image from Dockerfile: `docker build -t="guerremdq/elasticsearch-image" github.com/guerremdq/elasticsearch-image`)


### Usage
```sh
    docker run -d -p 9200:9200 -p 9300:9300 guerremdq/elasticsearch-image
```
#### Attach persistent/shared directories

  1. Create a mountable data directory `<data-dir>` on the host.

  2. Create ElasticSearch config file at `<data-dir>/elasticsearch.yml`.

    ```yml
    path:
      logs: /data/log
      data: /data/data
    ```

  3. Start a container by mounting data directory and specifying the custom configuration file:

    ```sh
    docker run -d -p 9200:9200 -p 9300:9300 -v <data-dir>:/data guerremdq/elasticsearch-image /elasticsearch/bin/elasticsearch -Des.config=/data/elasticsearch.yml
    ```

After few seconds, open `http://<host>:9200` to see the result.


### Documentation
* [Image Plugin](https://github.com/kzwang/elasticsearch-image)
* [ElasticSearch](http://www.elasticsearch.org/guide/en/elasticsearch/guide/current/)