# default_vpc_components

Creates all the default components that a [VPC](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html) requires: [Network ACL](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html), [Route Table](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html), [Security Group](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html).

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

| Name           | Description                       |  Type  | Default |      Required      |
| :------------- | :-------------------------------- | :----: | :-----: | :----------------: |
| network_acl_id | Default Network ACL ID of the VPC | string |    -    | :heavy_check_mark: |
| route_table_id | Default Route Table ID of the VPC | string |    -    | :heavy_check_mark: |
| vpc_id         | VPC ID                            | string |    -    | :heavy_check_mark: |

## License

**aws_nat_gateway** is licensed under [MIT](../../LICENSE).
