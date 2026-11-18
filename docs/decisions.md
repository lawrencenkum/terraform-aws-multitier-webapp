# Design Decisions

| Date | Decision | Why | Alternative considered |
|------|----------|-----|------------------------|
| 2026-11-17 | Region us-east-1, AZs 1a and 1b | Matches the project brief | eu-central-1 (closer to me) |
| 2026-11-17 | Separate automation user `terraform_dev` (AdministratorAccess) from my console user `Terraform_agent` | Human users should not hold long-lived access keys; a leaked key must not expose my console identity; the project needs VPC, EC2, ELB and IAM permissions | One user for both (simpler, but mixes human and machine access); IAM Identity Center + scoped role (preferred in production) |