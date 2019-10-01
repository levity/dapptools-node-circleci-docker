FROM circleci/node:lts
USER circleci
ENV USER circleci
RUN curl https://dapp.tools/install | sh
RUN sudo apt-get install bc
COPY ./setup-env.sh /home/circleci
ENV PATH /home/circleci/.local/bin:/home/circleci/bin:${PATH}
