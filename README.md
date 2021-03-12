# aws_nat_gateway

A simple VPC config with Private Subnets reaching the internet using a NAT Gateway.

[![ae-lexs](https://circleci.com/gh/ae-lexs/aws_nat_gateway.svg?style=svg)](https://circleci.com/gh/ae-lexs/aws_nat_gateway)

## Table of Contents

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Lincense](#license)

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

| Name                  | Description                    |  Type  |  Default  |      Required      |
| :-------------------- | :----------------------------- | :----: | :-------: | :----------------: |
| aws_access_key_id     | AWS Access Key ID              | string |     -     | :heavy_check_mark: |
| aws_access_secret_key | AWS Access Secret Key          | string |     -     | :heavy_check_mark: |
| aws_profile_name      | Name of one of the AWS Profile | string |     -     | :heavy_check_mark: |
| aws_region            | AWS Region                     | string | us-east-1 |        :x:         |

## License

**aws_nat_gateway** is licensed under [MIT](./LICENSE).
