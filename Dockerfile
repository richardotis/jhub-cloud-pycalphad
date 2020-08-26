  
FROM jupyter/minimal-notebook:6d42503c684f
RUN /opt/conda/bin/conda install -c conda-forge pycalphad==0.8.3 espei==0.7.7 nbgitpuller pyiron lammps nodejs nglview && \
    jupyter labextension install @jupyter-widgets/jupyterlab-manager --no-build && \
    jupyter labextension install nglview-js-widgets
