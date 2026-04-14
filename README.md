# aws-ipam
## The final architecture

```text
.
├── environment
│   ├── aws_vpc_ipam_organization_admin_account.tf
│   ├── aws_vpc_ipam_resource_discovery_association.tf
│   ├── aws_vpc_ipam_resource_discovery.tf
│   ├── aws_vpc_ipam.tf
│   ├── provider.tf
│   ├── backend.tf
│   ├── locals.tf
│   ├── main.tf
│   ├── dev
│   │   ├── ipv4
│   │   │   ├── aws_vpc_ipam_pool_cidr.tf
│   │   │   ├── aws_vpc_ipam_pool.tf
│   │   │   ├── regions.tf
│   │   │   └── variables.tf
│   │   └── ipv6
│   │       ├── aws_vpc_ipam_pool_cidr.tf
│   │       ├── aws_vpc_ipam_pool.tf
│   │       ├── regions.tf
│   │       └── variables.tf
│   ├── prod
│   │   ├── ipv4
│   │   │   ├── aws_vpc_ipam_pool_cidr.tf
│   │   │   ├── aws_vpc_ipam_pool.tf
│   │   │   ├── regions.tf
│   │   │   └── variables.tf
│   │   └── ipv6
│   │       ├── aws_vpc_ipam_pool_cidr.tf
│   │       ├── aws_vpc_ipam_pool.tf
│   │       ├── regions.tf
│   │       └── variables.tf
│   ├── root
│   │   ├── ipv4
│   │   │   ├── aws_vpc_ipam_pool_cidr.tf
│   │   │   ├── aws_vpc_ipam_pool.tf
│   │   │   └── variables.tf
│   │   └── ipv6
│   │       ├── aws_vpc_ipam_pool_cidr.tf
│   │       ├── aws_vpc_ipam_pool.tf
│   │       └── variables.tf
│   ├── staging
│   │   ├── ipv4
│   │   │   ├── aws_vpc_ipam_pool_cidr.tf
│   │   │   ├── aws_vpc_ipam_pool.tf
│   │   │   ├── regions.tf
│   │   │   └── variables.tf
│   │   └── ipv6
│   │       ├── aws_vpc_ipam_pool_cidr.tf
│   │       ├── aws_vpc_ipam_pool.tf
│   │       ├── regions.tf
│   │       └── variables.tf
│   ├── test
│   │   ├── ipv4
│   │   │   ├── aws_vpc_ipam_pool_cidr.tf
│   │   │   ├── aws_vpc_ipam_pool.tf
│   │   │   ├── regions.tf
│   │   │   └── variables.tf
│   │   └── ipv6
│   │       ├── aws_vpc_ipam_pool_cidr.tf
│   │       ├── aws_vpc_ipam_pool.tf
│   │       ├── regions.tf
│   │       └── variables.tf
│   └── variables.tf
├── modules
│   └── region
│       ├── aws_vpc_ipam_pool_cidr.tf
│       ├── aws_vpc_ipam_pool.tf
│       └── variables.tf
├── LICENSE
└── README.md