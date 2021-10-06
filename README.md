# ChartGenerator - WebRTC

This repository contains the code necessary to generate the graphs and tables included in the article (pending acceptance) __"Cost-effective load testing of WebRTC applications"__ in the _"Journal of Systems and Software"_ within the _"Special Issue on "Test Automation: Trends, Benefits, and Costs"_.

The data used to generate the graphs and tables have been obtained from the metrics captured by ElasticSearch and are provided in CSV format.

The steps to generate the graphs from the data are shown below:

## Set Up

*Pre-requisites to reproduce*

- Git 2.17+
- Docker 19+

## Run JupyterNotebook

We use official Docker images, for more info, see:

- https://github.com/jupyter/docker-stacks
- https://jupyter-docker-stacks.readthedocs.io/

Based on image `jupyter/scipy-notebook`, we just install ElasticSearch libraries to work in Python

```
git clone https://github.com/codeurjc/ChartGenerator_WebRTC.git
cd ChartGenerator_WebRTC
docker build -t jupyter/scipy-notebook:elasticsearch .
docker run --rm -v "$PWD":/home/jovyan/work -p 8888:8888 --env-file $PWD/.env jupyter/scipy-notebook:elasticsearch 
```

Open the link provided in the logs to see JupyterNotebook:

```
    http://127.0.0.1:8888/?token=<token>
```

Run Notebook just by click Kernel > Restart & Run all