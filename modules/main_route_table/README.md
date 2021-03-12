# main_route_table

Creates a [Main Route Table](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_Route_Tables.html#RouteTableDetails).

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

| Name    | Description                            |  Type  | Default |      Required      |
| :------ | :------------------------------------- | :----: | :-----: | :----------------: |
| vpc_id  | VPC ID                                 | string |    -    | :heavy_check_mark: |
| made_by | Profile name that creates the resource | string |    -    | :heavy_check_mark: |

## License

**aws_nat_gateway** is licensed under [MIT](../../LICENSE).
