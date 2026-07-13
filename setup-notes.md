# Environment Setup Notes — Phase 0
**Date:** July 7, 2026 | **Machine:** Windows 11

## Installed
| Component | Version | Notes |
|---|---|---|
| SQL Server Express | 2022 (16.0.1000) | Instance: localhost\SQLEXPRESS |
| SSMS | 21.x | |
| JDK (Eclipse Temurin) | 21.0.11+10 | JAVA_HOME + PATH set via installer |
| Git for Windows | 2.x | |
| IntelliJ IDEA Community | 2026.x | (pending / installed) |

## Issues encountered & resolutions

### 1. SSMS connection failed — certificate chain not trusted
- **Error:** "Encryption was enabled on this connection... The certificate
  chain was issued by an authority that is not trusted."
- **Cause:** SSMS 20+ defaults to Mandatory encryption; SQL Express uses a
  self-signed certificate that Windows doesn't trust.
- **Fix:** Checked "Trust server certificate" in the Connect dialog.
- **Production note:** a real environment would install a CA-issued
  certificate instead of trusting a self-signed one.

### 2. JDK installer — could not write JavaSoft registry key
- **Error:** "Could not write value CurrentVersion to key \SOFTWARE\JavaSoft\JDK"
- **Cause:** MSI ran without elevation; .msi files don't offer a
  right-click "Run as administrator" option.
- **Fix:** Launched from an elevated PowerShell:
  `msiexec /i "<path to .msi>"` — install completed with all features.

## Verification
- SSMS connects to localhost\SQLEXPRESS ✅ (screenshot: images/ssms-connected.png)
- `java -version` → openjdk 21.0.11 ✅ (screenshot: images/java-version.png)
- Repo cloned, folder structure pushed ✅
