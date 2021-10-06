FROM jupyter/scipy-notebook

RUN python -m pip install elasticsearch
RUN pip install elasticsearch-dsl

# BUILD docker build -t jupyter/scipy-notebook:elasticsearch .