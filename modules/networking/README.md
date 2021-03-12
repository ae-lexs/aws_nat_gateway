# networking

Creates all the Networking resorces for the project.

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
| made_by | Profile name that creates the resource | string |    -    | :heavy_check_mark: |

## License

**aws_nat_gateway** is licensed under [MIT](../../LICENSE).
