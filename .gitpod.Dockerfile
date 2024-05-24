# .gitpod.Dockerfile
FROM gitpod/workspace-full

# Install Miniconda
USER gitpod
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && bash Miniconda3-latest-Linux-x86_64.sh -b -p /home/gitpod/miniconda \
    && rm Miniconda3-latest-Linux-x86_64.sh

ENV PATH="/home/gitpod/miniconda/bin:${PATH}"
RUN conda init bash
