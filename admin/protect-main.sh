#!/usr/bin/env bash
# Usage: ./admin/protect-main.sh ORG REPO
set -euo pipefail
ORG="$1"; REPO="$2"
gh api -X PUT \
  "repos/$ORG/$REPO/branches/main/protection" \
  -f enforce_admins=true \
  -F required_status_checks.strict=true \
  -F required_status_checks.contexts[]='test' \
  -F required_status_checks.contexts[]='build-and-push' \
  -F required_pull_request_reviews.required_approving_review_count=1 \
  -F required_pull_request_reviews.dismiss_stale_reviews=true \
  -F required_pull_request_reviews.require_code_owner_reviews=true \
  -F required_linear_history=true \
  -F restrictions=''
echo "Protected main on $ORG/$REPO"
