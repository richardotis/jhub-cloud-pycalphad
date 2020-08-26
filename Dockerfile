  
FROM jupyter/minimal-notebook:e0379b8cb97327
RUN /opt/conda/bin/conda install -c conda-forge pycalphad==0.8.3 espei==0.7.7 && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build && \
    jupyter labextension install nglview-js-widgets
