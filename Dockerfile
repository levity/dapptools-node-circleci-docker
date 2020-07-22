FROM circleci/node:latest
USER circleci
ENV USER circleci
RUN sudo apt-get install bc
COPY ./setup-env.sh /home/circleci
COPY ./install-dapptools.sh /home/circleci
ENV PATH /home/circleci/.local/bin:/home/circleci/bin:${PATH}
RUN /home/circleci/install-dapptools.sh
