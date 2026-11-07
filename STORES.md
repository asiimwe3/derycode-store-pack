# DeryCode store submission pack

Six Android apps and one Windows desktop app, prepared for every free store that accepts self-submission.

## What I prepared, per app

Each folder under `apps/` contains:

1. `listing.md` — title, short description, full description, category, permissions, SHA-256, package name, version
2. `icon-512.png` — store icon pulled from the real APK and padded to 512x512
3. `fastlane/metadata/android/en-US/` — `title.txt`, `short_description.txt`, `full_description.txt` in the layout F-Droid and IzzyOnDroid read automatically

For the desktop app, `desktop/school-report-maker/` contains ready manifests for winget, Chocolatey and Scoop.

## The apps

| App | Package | Version | Size |
|---|---|---|---|
| DeryAccount | com.derycode.deryaccount | 1.0.8 | 22.0 MB |
| School Report Maker | com.derycode.srs.teacher | 1.20.6 | 23.6 MB |
| DeryCode app | com.derycode.app | 1.0.0 | 0.07 MB |
| Sageco Evergreen | com.sagecoevergreen.app | 4.1.0 | 1.8 MB |
| School Sync Manager | com.derycode.schoolsync | 1.0.0 | 1.4 MB |
| Tooro Music | app.tooro.music | 1.0.0 | 0.08 MB |
| School Report Maker (desktop) | MSI 2.3.28 | 2.3.28 | 77.9 MB |

---

# Android stores that are free

## 1. APKPure — free, easiest first stop
Everything needed is in this pack. Create a free developer account at apkpure.com, upload the APK, paste the title, short and full description from `listing.md`, upload `icon-512.png`, add 2-4 screenshots, set the privacy policy URL to https://derycode.online/privacy.html.
Upload order: DeryAccount, School Report Maker, DeryCode, Sageco, School Sync, Tooro Music.

## 2. Uptodown — free
Developer console at uptodown.com. Same fields as APKPure. Uptodown additionally wants a short "what's new" line per version, which is already the changelog you write per release.

## 3. Aptoide — free
Developer console at aptoide.com. Uploads the APK directly. Aptoide runs its own malware scan, so expect a day or two of review on first upload.

## 4. Amazon Appstore — free account
developer.amazon.com. You must submit the same APK plus answer their content questionnaire. Note Amazon requires 64-bit and a target API of 34 or higher, which all six apps meet.

## 5. Samsung Galaxy Store — free
seller.samsungapps.com. Accepts APK. Wants a seller name (DeryCode Technologies) and a support email.

## 6. Huawei AppGallery — free, with one caveat
developer.huawei.com. AppGallery works, but DeryAccount and School Report Maker use Google ML Kit for barcode and text scanning. Huawei phones often ship without Google Play Services, so those two will lose their scanning features there. The other four apps have no Google dependency and will work normally.

## 7. IzzyOnDroid — free, no store account needed
IzzyOnDroid indexes apps straight from GitHub releases. To qualify you commit the `fastlane/` folder I generated into the app repo, then open a submission issue at gitlab.com/IzzyOnDroid/repo. Best candidates: DeryCode app, School Sync Manager, Tooro Music, Sageco (they have no proprietary Google dependencies).

## 8. F-Droid — free, but licence work first
F-Droid only accepts free-licensed software. Right now DeryAccount, School Report Maker and DeryCode app have **no LICENSE file**, so they cannot be submitted. Sageco, School Sync and Tooro Music are MIT and eligible once the fastlane metadata is committed and the build is reproducible. This is a licensing decision, not a technical one, so it is yours to make.

## 9. Obtainium — no submission at all
Users can add `https://github.com/asiimwe3/deryaccount` directly in Obtainium and get updates automatically. Worth mentioning on your download page as "auto-updating install".

## 10. Softpedia and APKMirror
Softpedia accepts a free web submission. APKMirror is curated and does not take self-submissions, but it picks up popular apps from APKPure automatically, so getting onto APKPure first helps.

---

# Desktop stores that are free

## 1. winget — free, highest value on Windows
Windows Package Manager users install with `winget install DeryCodeTechnologies.SchoolReportMaker`.
I generated the manifest at `desktop/school-report-maker/winget/`. Steps:
1. Install the tool: `winget install Microsoft.WingetCreate`
2. Run `wingetcreate submit --url <MSI url>` or manually open a PR adding `manifests/d/DeryCodeTechnologies/SchoolReportMaker/2.3.28/` to github.com/microsoft/winget-pkgs
3. Validation runs automatically; the PR merges in a few days

## 2. Chocolatey — free community repo
`choco install school-report-maker`.
The nuspec and install script are prepared. You need a free community account at community.chocolatey.org, then `choco pack` and `choco push`. Packages go through human moderation.

## 3. Scoop — free
Submit the generated `school-report-maker.json` as a PR to the `extras` bucket (github.com/ScoopInstaller/Extras). Fastest of the three to merge.

## 4. SourceForge, Uptodown Windows, Softpedia — free hosting and listings
All accept a free project/file upload. Useful as mirror downloads with an SEO benefit.

## 5. Flathub and Snap Store — free, but need a Linux build
School Report Maker is Compose Desktop, so a Linux build is possible. Once a `.deb` or AppImage exists, both stores accept it free. Not prepared yet because there is no Linux artifact to package.

## 6. Microsoft Store — not free
Individual developer account is a one-time $19, and it requires an MSIX package. Left out because you asked for free options.

---

# What only you can do

1. **Create the accounts.** Every store requires a legal identity and an email you control; I cannot create accounts on your behalf.
2. **Add 2-4 real screenshots per app** for the stores that require them. I have DeryCode app screenshots, but the other five apps need screenshots taken on a phone.
3. **Decide the licence** for DeryAccount, School Report Maker and DeryCode app if you want F-Droid.
4. **Rebuild for Google Play.** Play now requires targetSdk 36. Sageco, Sync, Tooro and DeryAccount target 34, so they would be rejected by Play but are fine everywhere else in this document. The DeryCode app is already on 36 with a validated AAB.
5. **Pay nothing**, unless you later want Google Play or the Microsoft Store.

# Accuracy notes

- The Google Play route is separate and needs a $25 account plus identity verification; only the DeryCode app bundle is currently Play-ready.
- APKPure, Uptodown, Aptoide, Amazon, Samsung and Huawei all accept APKs at targetSdk 34.
- All six APKs are signed. Store the signing key for each app safely: updating an app on any store requires the same key.
