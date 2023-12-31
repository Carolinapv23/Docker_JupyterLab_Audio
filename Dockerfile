# FROM arm64v8/python:3.8
# FROM python:3.8.2

FROM continuumio/miniconda3:latest

RUN conda install jupyter -y

RUN conda install jupyterlab -y

RUN jupyter-lab --generate-config

COPY ./environment.yml ./environment.yml

RUN conda env create -f environment.yml

RUN conda install ipykernel

RUN conda install -c conda-forge nb_conda_kernels

COPY ./.jupyter_config_files/jupyter_lab_config.py /root/.jupyter/jupyter_lab_config.py

COPY ./.jupyter_config_files/jupyter_lab_config.json /root/.jupyter/jupyter_lab_config.json

COPY ./.jupyter_config_files/themes.jupyterlab-settings /root/.jupyter/lab/user-settings/@jupyterlab/apputils-extension/themes.jupyterlab-settings

# ENTRYPOINT ["/bin/bash"]
CMD ["jupyter-lab", "./Projects/", "--allow-root"]
