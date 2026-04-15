# aws-ipam

<h1 align="center">AWS IPAM Terraform Manager</h1>

<p>
  This repository provides a <strong>granular, resource-level Terraform implementation</strong> for managing <strong>AWS VPC IP Address Manager (IPAM)</strong> across a multi-account, multi-region organization.
</p>

<hr />

<h3>Key Features</h3>

<ul>
  <li>
    <strong>Hierarchical Pool Design:</strong> Implements a multi-tier nesting strategy (<code>Root → Environment → Region</code>) for both IPv4 and IPv6, ensuring strict CIDR governance.
  </li>
  <li>
    <strong>Modular Architecture:</strong> Utilizes a dedicated regional module with <code>for_each</code> logic to maintain a <strong>DRY</strong> (Don't Repeat Yourself) codebase across Dev, Staging, and Production environments.
  </li>
  <li>
    <strong>Enterprise Governance:</strong> Automates the deployment of IPAM Resource Discovery, Admin Account delegation, and Organizational sharing for centralized visibility.
  </li>
  <li>
    <strong>Absolute Control:</strong> Eschews high-level pre-made modules in favor of resource-level definitions to demystify AWS integrations and provide maximum flexibility.
  </li>
</ul>

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