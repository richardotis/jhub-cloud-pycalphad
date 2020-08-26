  
FROM jupyter/minimal-notebook:e0379b8cb97327c7a0baf7cb53d0f411b5b950584aa2e2d69cc96b61ee9c9120
RUN /opt/conda/bin/conda install -c conda-forge pycalphad==0.8.3 espei==0.7.7 && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build && \
    jupyter labextension install nglview-js-widgets
