# RabbitMQ Running on AWS ECS 

This repo contains all the pieces to deploy RabbitMQ into ECS. The container is built using Actions and I have an example of how you can deploy it into an existing ECS Cluster /ALB setup. The RabbitMQ cluster uses the Autoscaling Auto-discovery plugin in Rabbit for AWS. This has limitations as you can't have a Multi ECS CLuster setup. ECS is not something the AWS plugin supports very well so this is essentially leveraging the cluster ASG to discover and check the rabbitmq port. It's not perfect but if there is interest I can look at building a custom plugin for ECS.

Features:
* Configurable values in ansible for scaling
* Configurable Erlang TOken for cluster

Limitations:
* Container is run in host mode which may mean you can only run one mer ECS ec2 instance due to it reserving the specific port
