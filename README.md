# tf-gsm-prod (Production)

**PRODUCTION INFRASTRUCTURE** - Google Secret Manager secrets for production only.

## ⚠️ CAUTION

This repository manages production secrets. All changes require:
- Code review (minimum 2 approvals)
- Never commit secrets to git
- Only use `TF_VAR_secrets` environment variables in TFC
- All secret changes logged and audited

## Configuration

**Terraform Cloud Workspace**: `gsm-prod`

**Environment Variables** (set in TFC):
- `TF_VAR_gcp_project = vivacity-tech-dream`
- `TF_VAR_gcp_region = us-central1`

## Resources

- Google Secret Manager secrets (production)
- Automatic replication across regions
- Audit logging enabled

## Variables

Secrets passed as environment variables in TFC (never in code):
```
TF_VAR_secrets = {"db_password": "...", "api_key": "..."}
```

## Outputs

- `secret_names` - List of secret names
- `secret_ids` - Map of secret IDs (sensitive)

## Dependencies

None (independent module)

## Applying Changes

1. Rotate secrets in TFC environment variables
2. Create pull request (no secret values in PR)
3. Get 2+ approvals
4. Merge to main
5. GitHub Actions applies changes

## Security

- All secrets marked as `sensitive`
- Never logged in Terraform output
- Access controlled via IAM
- Audit trail in Cloud Audit Logs