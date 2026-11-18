# Troubleshooting Log

Every error I hit, with the exact message, the cause and the fix.

<!-- Template for each entry:
## <Short title of the problem>
- **Symptom:** exact error message
- **Context:** what I was doing
- **Cause:** what was actually wrong
- **Fix:** what I changed
- **Prevention:** how to avoid it next time
-->

## AWS CLI profile not found (typo in profile name)
- **Symptom:** `aws: [ERROR]: The config profile (terraform_dev) could not be found`
- **Context:** Running `aws sts get-caller-identity --profile terraform_dev` (step B4)
- **Cause:** I created the profile as `terrform_dev` (missing "a"), confirmed with `aws configure list-profiles`
- **Fix:** Renamed the section header in `~/.aws/credentials` and `~/.aws/config` with `sed`
- **Prevention:** Run `aws configure list-profiles` right after creating a profile