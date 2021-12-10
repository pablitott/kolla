bash <(curl -sL https://pmkft-assets.s3-us-west-1.amazonaws.com/pf9ctl_setup)
pf9ctl config set \
  -u https://pmkft-1638965809-85057.platform9.io \
  -e ptrujillo@sgss.com \
  -p Alejandra#1 \
  -t service \
  -r RegionOne \
  --no-prompt

pf9ctl prep-node 2>/dev/nul
pf9ctl check-node

#  --mfa -l  \

# Usage:
#   pf9ctl config set [flags]

# Flags:
#   -u, --account_url string   sets account_url
#   -h, --help                 help for set
#       --mfa string           set MFA token
#   -p, --password string      sets password (use 'single quotes' to pass password)
#   -l, --proxy_url string     sets proxy URL, can be specified as [<protocol>][<username>:<password>@]<host>:<port>
#   -r, --region string        sets region
#   -t, --tenant string        sets tenant
#   -e, --username string      sets username

# Global Flags:
#       --no-prompt   disable all user prompts
#       --verbose   print verbose logs