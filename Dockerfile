FROM jupyter/datascience-notebook

# install rdkit ando pylint (pylint is requied when using VSCode)
RUN conda install -y -c conda-forge \
    rdkit \
    pylint

# install jupyter lab extension
RUN jupyter labextension install --minimize=False @lckr/jupyterlab_variableinspector \
    && \
    jupyter labextension install --minimize=False @jupyterlab/toc 

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--LabApp.token=''"]