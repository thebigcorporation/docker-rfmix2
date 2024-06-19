# SPDX-License-Identifier: GPL-2.0
ARG BASE
FROM $BASE

RUN apt -y update -qq && apt -y upgrade && \
	DEBIAN_FRONTEND=noninteractive apt -y install \
	--no-install-recommends --no-install-suggests \
	ca-certificates \
	software-properties-common \
	vim \
	python3 \
	python3-bitarray \
	python3-nose \
	python3-numpy \
	python3-pandas \
	python3-pip \
	python3-pybedtools \
	python3-scipy \
	python3-h5py \
	&& \
	apt -y clean && rm -rf /var/lib/apt/lists/* /tmp/*
