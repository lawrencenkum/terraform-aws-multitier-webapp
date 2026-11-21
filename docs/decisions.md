# Design Decisions

| Date | Decision | Why | Alternative considered |
|------|----------|-----|------------------------|
| 2026-11-17 | Region us-east-1, AZs 1a and 1b | Matches the project brief | eu-central-1 (closer to me) |
| 2026-11-17 | Separate automation user `terraform_dev` (AdministratorAccess) from my console user `Terraform_agent` | Human users should not hold long-lived access keys; a leaked key must not expose my console identity; the project needs VPC, EC2, ELB and IAM permissions | One user for both (simpler, but mixes human and machine access); IAM Identity Center + scoped role (preferred in production) |

| 2026-11-18 | Split config into versions.tf, providers.tf, main.tf | One job per file; easier to read and review | Single main.tf |
| 2026-11-18 | Hard-code values in Phase 1, move to variables in Phase 3 | Learn one concept at a time | Variables from the start |