# SR08 smart ring research

## Identification

SR08 is a model name used for multiple OEM/ODM smart ring variants, not a unique manufacturer or hardware revision. One supplier listing identifies Shenzhen Morrison Electronics Co., Ltd., a DA14531/SC7A20/HX3602 version, BLE 5.0, and JRing. Other SR08 listings and manuals describe different chips and sensors, so confirm the hardware against the particular listing or FCC ID before assuming compatibility.

## JRing Android app

- Package ID: `com.jaga.ibraceletplus.jyring`
- Official Google Play listing: https://play.google.com/store/apps/details?id=com.jaga.ibraceletplus.jyring
- Third-party APK mirror listing: https://apkpure.net/jring/com.jaga.ibraceletplus.jyring/download
- The Play listing identifies developer `lizhuobin`; it lists supported devices but does not name SR08 explicitly. SR08 manuals and supplier listings separately name JRing.
- APKPure page currently identifies version 1.9.84 as an XAPK (arm64-v8a variant, 19.0 MB), package `com.jaga.ibraceletplus.jyring`, SHA-256 `45c7f062c75d9b934d8db82d0b7d0d8dd7f40cc394bd3e625b51ae38fb4ba34f`.

## Reference sources

- SR08 supplier listing (Morrison, JRing and component details): https://sourcing.hktdc.com/en/Product-Detail/Smart-ring-SR08-1Z03NUEDJ
- SR08 product family listing: https://www.yutuwear.com/pages/products_info_en.aspx?id=31
- SR08 multi-language manual PDF: https://ae01.alicdn.com/kf/Sf59be679ad4d4f53bc84762efdc29de5E.pdf
- SR08 manual text and PDF: https://manuals.plus/m/15d858d0c40176cef74f1a9cb4efb58d5ac8c1dc50c0dfd91032c0226bc88474

## Download status

The manual PDF and APK downloads were attempted but this environment cannot resolve external hosts (`curl: (6) Could not resolve host`). The web fetcher also could not retrieve APKPure's redirected binary URL. No APK or ring firmware has been downloaded. Google Play is the preferred source for the app; the APKPure page above is a third-party fallback. The listed hash is reported by APKPure, not independently verified here.

## Local APK work

- `JRing_2.0.3_APKPure.xapk` is present locally (19,962,247 bytes).
- `xapk_contents/` contains the extracted XAPK, including the base APK and its configuration splits.
- `decompiled_base/` is the base APK decoded with Apktool 2.7.0. It contains decoded resources, manifest, and Smali for the app's 3 DEX files (19,064 Smali files).
- JADX was not available in this environment, so Java-like source has not been generated; use the Smali and resources in `decompiled_base/` for now.
