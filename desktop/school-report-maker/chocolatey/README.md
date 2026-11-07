# School Report Maker — Chocolatey package

Ready to push. Chocolatey needs your own account and API key, which is the only reason this one is not submitted yet.

## One-time setup (2 minutes, you only)

1. Create a free account: https://community.chocolatey.org/account/Register
2. Get your API key from your account page
3. In PowerShell:

```
choco apikey --key YOUR_API_KEY --source https://push.chocolatey.org/
```

## Push this package

```
cd desktop/school-report-maker/chocolatey
choco pack
choco push school-report-maker.2.3.28.nupkg --source https://push.chocolatey.org/
```

Moderation usually takes a few days. After that: `choco install school-report-maker -y`

## Why it is not pushed on your behalf

Chocolatey API keys are tied to the human account, and their terms require the package owner to publish. Everything else is done: nuspec, install script with the verified SHA-256, silent arguments and accepted exit codes.
