# ECS deploy plugin for drone.io [https://hub.docker.com/r/fatceken/drone-ecs-deploy/](https://hub.docker.com/r/fatceken/drone-ecs-deploy/)

This plugin allows updating an ECS service.

## Usage

This pipeline will update the `my-cluster` cluster and `my-service` service with the image tagged `my-image:latest`

```yaml
- name: deploy-to-ecs
  image: fatceken/drone-ecs-deploy
  environment:
    AWS_ACCESS_KEY_ID: my_access_key
    AWS_SECRET_ACCESS_KEY: my_secret_access_key
  settings:
    cluster: mycluster
    service: myservice
    image_name: myimage:latest
    aws_region: ap-southeast-1
```