# aws-ipam
## The current architecture

```text
.
├── environment
│   ├── main.tf
│   ├── aws_vpc_ipam.tf
│   ├── locals.tf
│   ├── backend.tf
│   ├── provider.tf
│   ├── dev
│   │   └── ipv4
│   │       ├── aws_vpc_ipam_pool.tf
│   │       ├── regions.tf
│   │       └── variables.tf
│   ├── prod
│   │   └── ipv4
│   │       ├── aws_vpc_ipam_pool.tf
│   │       ├── regions.tf
│   │       └── variables.tf
│   ├── root
│   │   └── ipv4
│   │       ├── aws_vpc_ipam_pool_cidr.tf
│   │       ├── aws_vpc_ipam_pool.tf
│   │       └── variables.tf
│   ├── staging
│   │   └── ipv4
│   │       ├── aws_vpc_ipam_pool.tf
│   │       ├── regions.tf
│   │       └── variables.tf
│   └── test
│       └── ipv4
│           ├── aws_vpc_ipam_pool.tf
│           ├── regions.tf
│           └── variables.tf
├── modules
│   └── ipv4
│       └── region
│           ├── aws_vpc_ipam_pool.tf
│           └── variables.tf
├── LICENSE
└── README.md