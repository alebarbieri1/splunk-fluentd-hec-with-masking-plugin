FROM splunk/fluentd-hec:1.2.0
RUN gem install fluent-plugin-masking -v 1.1.2
ENV HIDDEN_FIELDS=
WORKDIR /
COPY ./entrypoint.sh /bin/
RUN chmod +x /bin/entrypoint.sh
