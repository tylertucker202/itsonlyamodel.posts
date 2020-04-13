FROM continuumio/anaconda3

WORKDIR /usr/src/itsonlyamodel
# copies requirements.txt from host dir to container work dir
COPY . .

#setup conda environment
# Make RUN commands use `bash --login`:
SHELL ["/bin/bash", "--login", "-c"]
RUN conda create -n ioam_env -y python=3.8
RUN conda init bash
# Activate the environment, and make sure it's activated:
RUN echo "conda activate ioam_env" > ~/.bashrc
RUN conda activate ioam_env

# Install libraries needed for API and plotting
RUN conda install -y -c conda-forge cartopy
RUN conda install -y pandas
RUN pip install cmocean
RUN pip install seaborn

# install so that env will show up on jupyter notebook
RUN conda install -y -c anaconda ipykernel
RUN python -m ipykernel install --user --name=ioam_env
CMD ["jupyter", "notebook", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]
