# [1.6.0](https://github.com/ae-lexs/aws_nat_gateway/compare/v1.5.0...v1.6.0) (2021-03-24)


### Features

* Add production worflow and update development workflow. ([e7987d3](https://github.com/ae-lexs/aws_nat_gateway/commit/e7987d35ce7aa0a7818f628dd256d69b2be02109))
* Add terraform_apply, terraform_destroy, terraform_plan_apply, and terraform_plan_destroy jobs to CircleCI config. ([ea0fa07](https://github.com/ae-lexs/aws_nat_gateway/commit/ea0fa078a1803ac6dc1623e98ad7e3230ec55e10))

# [1.5.0](https://github.com/ae-lexs/aws_nat_gateway/compare/v1.4.2...v1.5.0) (2021-03-24)


### Features

* Add initialize_terraform command. ([a514f61](https://github.com/ae-lexs/aws_nat_gateway/commit/a514f616138d94cc6c62de1a81d7ecd868dd3a70))
* Add terrafor executor to CircleCI config. ([54ed738](https://github.com/ae-lexs/aws_nat_gateway/commit/54ed7388b670f74a6852ba8030d5627a5258b113))

## [1.4.2](https://github.com/ae-lexs/aws_nat_gateway/compare/v1.4.1...v1.4.2) (2021-03-12)


### Performance Improvements

* Update the name of the resources. ([06eb19e](https://github.com/ae-lexs/aws_nat_gateway/commit/06eb19e391774e515ceffa7423114fbaead9bc20))

## [1.4.1](https://github.com/ae-lexs/aws_nat_gateway/compare/v1.4.0...v1.4.1) (2021-03-12)


### Performance Improvements

* Update the variables of the main module. ([62523fd](https://github.com/ae-lexs/aws_nat_gateway/commit/62523fd301f78defb02f44ee5dc3026dfbd5d8d5))

# [1.4.0](https://github.com/ae-lexs/aws_nat_gateway/compare/v1.3.0...v1.4.0) (2021-03-12)


### Features

* Add networking module. ([ef9fa8c](https://github.com/ae-lexs/aws_nat_gateway/commit/ef9fa8c5c37b8ef0bcad18b525fb0d7f844d6add))

# [1.3.0](https://github.com/ae-lexs/aws_nat_gateway/compare/v1.2.1...v1.3.0) (2021-03-12)


### Features

* Add made_by variable to default_vpc_components module. ([b783322](https://github.com/ae-lexs/aws_nat_gateway/commit/b783322c0261d117fa51afe2cdeb8068edc62d2a))
* Add main_route_table module. ([64244bf](https://github.com/ae-lexs/aws_nat_gateway/commit/64244bff0804519c25b27d044aeeab5b03e89d83))


### Performance Improvements

* Add tags to the default_security_group resource. ([635202e](https://github.com/ae-lexs/aws_nat_gateway/commit/635202e6a0e335279beb817819c5bbad032fd49a))

## [1.2.1](https://github.com/ae-lexs/aws_nat_gateway/compare/v1.2.0...v1.2.1) (2021-03-12)


### Performance Improvements

* Update main README. ([b7a116b](https://github.com/ae-lexs/aws_nat_gateway/commit/b7a116be6466b5f11729d04721cf3385bb4fba43))
* Update the default_vpc_components README. ([0e3f600](https://github.com/ae-lexs/aws_nat_gateway/commit/0e3f600a917854adbf779adbaa94bfa59398c7e1))

# [1.2.0](https://github.com/ae-lexs/aws_nat_gateway/compare/v1.1.0...v1.2.0) (2021-03-12)


### Features

* Add default_vpc_components module. ([616303e](https://github.com/ae-lexs/aws_nat_gateway/commit/616303e24b83eed87fa4520f96a2ba5580808322))

# [1.1.0](https://github.com/ae-lexs/aws_nat_gateway/compare/v1.0.0...v1.1.0) (2021-03-11)


### Features

* Add CircleCI badge to the README. ([0ea3d10](https://github.com/ae-lexs/aws_nat_gateway/commit/0ea3d1054df3325a33f06a30224433991a7c6c98))

# 1.0.0 (2021-03-11)


### Features

* Add aws provider and vpc_us_east_1 resource. ([0967c96](https://github.com/ae-lexs/aws_nat_gateway/commit/0967c96f8879b9d82d83d4562de61d03f4850291))
* Add basic structure to the README. ([b81e06f](https://github.com/ae-lexs/aws_nat_gateway/commit/b81e06fa2917ec175d21b194dce8573152d13adc))
* Add circleci config. ([453b906](https://github.com/ae-lexs/aws_nat_gateway/commit/453b906dbd7d407451626803fc96cf3bd7919ef5))
* Add content to the Requirements and Installation sections of the README. ([1e197e6](https://github.com/ae-lexs/aws_nat_gateway/commit/1e197e65e3bda6cd1f590c907165eb82cee7b99d))
* Add default_network_acl resource. ([fda330e](https://github.com/ae-lexs/aws_nat_gateway/commit/fda330e77528b246359d76e06a3376f9a5e7c0d8))
* Add default_route_table resource. ([d566284](https://github.com/ae-lexs/aws_nat_gateway/commit/d5662846bff7318598e1f95b20a346660ea40160))
* Add default_security_group resource. ([bc71e3e](https://github.com/ae-lexs/aws_nat_gateway/commit/bc71e3ee36b30cf4edd869c4ec4854344546af38))
* Add enable_dns_support property to the vpc_us_east_1 resource. ([74d6b24](https://github.com/ae-lexs/aws_nat_gateway/commit/74d6b24c013fbece29180785ad34f90e728cd249))
* Add gitignore. ([91e5f29](https://github.com/ae-lexs/aws_nat_gateway/commit/91e5f29ebb6b978a21d1d75be34a37151f145d52))
* Add main_route_table resource. ([8525606](https://github.com/ae-lexs/aws_nat_gateway/commit/85256066374214b700fd93db23e337d617ef589f))
* Add main_route_table_and_vpc_us_east_1_association resource. ([a388d9a](https://github.com/ae-lexs/aws_nat_gateway/commit/a388d9a7e39439825d978438e0221e1fc38c967b))
* Add semantic release config. ([4858605](https://github.com/ae-lexs/aws_nat_gateway/commit/485860512c8d78ad0c773615ee37a5aecf39f85e))
* Add terraform lock. ([46b513e](https://github.com/ae-lexs/aws_nat_gateway/commit/46b513e1298f9de1f2f54f584e87b7e778a8c95c))
