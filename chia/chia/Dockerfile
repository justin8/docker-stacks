
FROM public.ecr.aws/ubuntu/ubuntu:20.04

EXPOSE 8555
EXPOSE 8444

ENV TZ=Australia/Brisbane
ENV CHIA_VERSION=1.0.1

COPY docker-entrypoint.sh /usr/local/bin

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    apt-get update && \
    apt-get install python3.8-venv python3.8-distutils sudo git lsb-core -y && \
    git clone https://github.com/Chia-Network/chia-blockchain.git && \
    cd chia-blockchain \
    && git checkout $CHIA_VERSION && \
    sh install.sh && \
    chmod +x /usr/local/bin/docker-entrypoint.sh

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]