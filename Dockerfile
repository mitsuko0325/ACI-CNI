FROM python:slim 

ENV http_proxy="http://proxy.esl.cisco.com:80"
ENV https_proxy="http://proxy.esl.cisco.com:80"
ENV no_proxy="172.20.0.0/16, localhost, 127.0.0.1"

WORKDIR /workdir
RUN pip3 install --no-cache-dir acc-provision

ENTRYPOINT ["acc-provision"]
CMD ["-h"]

# give args of acc-provision by docker run
