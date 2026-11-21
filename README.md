# Highly Available Multi-Tier Web App on AWS with Terraform

Infrastructure as Code project that deploys an auto-scaled web tier behind an
Application Load Balancer across two Availability Zones in a custom VPC (us-east-1).

## Overview
- **Goal:** provision a highly available, auto-scaled web application using Terraform only.
- **Scope:** networking, NAT, security groups, IAM, load balancing, auto scaling.
  Database is out of scope.
- **Status:**  in progress (see below)


## Architecture
_Diagram coming in Phase 9._

## Project status
- [x] Phase 0 – Secure AWS setup & repository
- [x] Phase 0 – Secure AWS setup & repository
- [ ] Phase 1 – First Terraform resource (VPC)
- [ ] Phase 2 – Network (subnets, IGW, routing)
- [ ] Phase 3 – Variables & outputs
- [ ] Phase 4 – NAT gateways
- [ ] Phase 5 – Security groups & IAM
- [ ] Phase 6 – Application Load Balancer
- [ ] Phase 7 – Launch template & Auto Scaling
- [ ] Phase 8 – Validation & failure testing
- [ ] Phase 9 – Documentation & improvements

## Tech stack
Terraform · AWS (VPC, EC2, ALB, Auto Scaling, IAM, SSM) · Git/GitHub

## Prerequisites
See [docs/00-setup.md](docs/00-setup.md).

## Repository structure
```
.
├── README.md
├── versions.tf           # Terraform & provider version pins
├── providers.tf          # AWS provider, region, default tags
├── main.tf               # resources
├── .terraform.lock.hcl   # exact provider version (committed)
└── docs/
    ├── 00-setup.md          # account security & tooling
    ├── 01-first-resource.md # first resource lifecycle
    ├── decisions.md         # design decisions and trade-offs
    ├── troubleshooting.md   # errors and fixes
    └── images/              # screenshots
```
## How to deploy
_Coming in Phase 3._

## Cost & cleanup
NAT gateways, the load balancer and public IPv4 addresses are billed hourly.
Always run `terraform destroy` after testing.

## Design decisions
See [docs/decisions.md](docs/decisions.md).

## Lessons learned
_Updated each phase._

## Author
Lawrence Nkum · [GitHub](https://github.com/lawrencenkum)