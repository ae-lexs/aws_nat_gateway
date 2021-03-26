# infrastructure_backup_bucket

Creates a S3 bucket to store backup the terraform states of the project.

## Requirements

- [terraform >= v0.14.7](https://www.terraform.io/downloads.html)

## Installation

1. Initialize the project:

```sh
terraform init
```

2. Install local modules

```sh
terraform get
```

## Inputs

| Name        | Description                            |  Type  | Default |      Required      |
| :---------- | :------------------------------------- | :----: | :-----: | :----------------: |
| made_by     | Profile name that creates the resource | string |    -    | :heavy_check_mark: |
| bucket_name | Name of the S3 bucket                  | string |    -    | :heavy_check_mark: |

## Outputs

| Name                            | Description                            |
| :------------------------------ | :------------------------------------- |
| infrastructure_backup_bucket_id | ID of the infrastructure backup bucket |

## License

**aws_nat_gateway** is licensed under [MIT](../../LICENSE).
