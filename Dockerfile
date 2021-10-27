FROM jupyter/base-notebook:python-3.9.7

COPY requirements.txt .

#Add some packages
USER root
RUN sudo apt-get update
RUN apt-get -y install gcc git
USER jovyan

#Install requirement packages
# RUN conda config --add channels bioconda &&\
#     conda config --add channels defaults &&\
#     conda config --add channels conda-forge &&\
#     conda config --add channels powerai &&\
#     conda config --add channels auto &&\
#     conda config --add channels letaylor

RUN pip intall scanpy==1.7.0
RUN pip intall matplotlib==3.3.4
RUN pip intall numpy==1.20.1
RUN pip intall scipy==1.6.0
RUN pip intall pandas==1.2.2
RUN pip intall seaborn==0.11.1
RUN pip intall scrublet==0.2.3
RUN pip intall xlsxwriter==1.4.4
RUN pip intall leidenalg==0.8.7
RUN pip intall networkx==2.5

# Install apart because it is giving problems or do not exist in conda
# RUN pip install bbknn==1.5.1
# RUN pip install MulticoreTSNE==0.1
# RUN pip install louvain
# RUN pip install pydpc==0.1.3
# RUN pip install DCA==0.3.3
# RUN pip install magic-impute==3.0.0
# RUN pip install palantir==1.0.0
# RUN pip install trimap==1.0.15
# RUN pip install phenograph==1.5.3
# RUN pip install git+https://github.com/mossjacob/pcurvepy
# RUN pip install pyslingshot
# RUN pip install git+https://github.com/metgem/forceatlas2
# RUN pip install --no-binary :mnnpy: mnnpy==0.1.9.5
# RUN pip install git+https://github.com/atarashansky/self-assembling-manifold
