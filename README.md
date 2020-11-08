# ECS deploy plugin for drone.io [https://hub.docker.com/r/joshdvir/drone-ecs-deploy/](https://hub.docker.com/r/joshdvir/drone-ecs-deploy/)

This plugin allows updating an ECS service.

## Usage

This pipeline will update the `my-cluster` cluster and `my-service` service with the image tagged `my-image:latest`

```yaml
  pipeline:
    deploy:
      image: joshdvir/drone-ecs-deploy
      cluster: my-cluster
      service: my-service
      image_name: my-image:latest
      aws_region: us-east-1
```

Another example with optional variables

```yaml
  pipeline:
    deploy:
      image: joshdvir/drone-ecs-deploy
      cluster: my-cluster
      service: my-service
      image_name: my-image:latest
      aws_region: us-east-1 # defaults to us-east-1
      timeout: "600" # defaults to 300 / 5 min
      max: "200" # defaults to 200
      min: "100" # defaults to 100
      aws_access_key_id: ewijdfmvbasciosvdfkl # optional, better to use as secret
      aws_secret_access_key: vdfklmnopenxasweiqokdvdfjeqwuioenajks # optional, better to use as secret
```

Alternatively, the `image_tag` parameter can be used to deploy a specific container image version, instead of latest

```yaml
  pipeline:
    deploy:
      image: joshdvir/drone-ecs-deploy
      cluster: my-cluster
      service: my-service
      image_tag: v123
      aws_region: us-east-1
```

Optional variables can be applied in the same way as the `image:latest` example, however `image_name` is not required.

## Optional secrets

* AWS_ACCESS_KEY_ID
* AWS_SECRET_ACCESS_KEY

If no AWS_ACCESS_KEY_ID && AWS_SECRET_ACCESS_KEY the plugin will use the instance IAM role.