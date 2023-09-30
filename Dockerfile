FROM rabbitmq:3.12.6-management
ADD config/rabbitmq.conf /etc/rabbitmq/
ADD config/enabled_plugins /etc/rabbitmq/
RUN chown -R rabbitmq:rabbitmq /etc/rabbitmq/
RUN rabbitmq-plugins --offline enable rabbitmq_peer_discovery_aws
CMD ["rabbitmq-server"]
