# aws-ipam
### The final architecture
10.0.0.0/8 root
 ├── prod 10.0.0.0/10
 │    ├── eu-central-1 10.0.0.0/12
 │    ├── us-east-1    10.16.0.0/12
 │    └── ap-south-1   10.32.0.0/12
 │
 ├── dev 10.64.0.0/10
 │    ├── eu-central-1 10.64.0.0/12
 │    └── us-east-1    10.80.0.0/12
 │
 ├── staging 10.128.0.0/10
 └── test    10.192.0.0/10
