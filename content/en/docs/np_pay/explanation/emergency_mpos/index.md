---
title: "NP Retail Emergency mPOS overview"
description: "NP Retail Emergency mPOS is an application designed to help customers process payments when either Business Central (BC) or the Internet is unavailable. This app ensures business continuity by allowing transactions even in emergency situations."
lead: ""
date: 2025-02-04T13:53:20+01:00
lastmod: 2025-02-04T13:53:20+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "emergency_mpos-5ce43810826448b60518fca9a98cea02"
weight: 628
toc: true
type: docs
---

The NP Retail Emergency mPOS app allows businesses to continue processing transactions when Business Central (BC) or the Internet is unavailable. It ensures business continuity by enabling sales in emergency scenarios.

- [<ins>Set up NP Retail Emergency mPOS<ins>]({{< ref "../../how-to/emergency_pos/index.md" >}}).
- [<ins>Perform a sale via the NP Retail Emergency mPOS app<ins>]({{< ref "../../how-to/emergency_sale/index.md" >}}).

The app supports both card and cash payments, enabling cashiers to process cash transactions. Each emergency mPOS device links to an existing POS unit without needing an extra device license. Transactions are manually synchronized with Business Central, and this synchronization is completed with a single click.

After synchronization, transaction data is saved under **External POS Sales** in Business Central. From there, it can be converted to a **POS Entry** and posted as needed. If a customer has requested a digital receipt, it will be automatically sent via email or SMS once synchronization is completed.

## Supported devices

The NP Retail Emergency mPOS app can be installed on standard Android devices or NP Pay terminals. The following sections outline the differences between these device types.

### Android devices

Standard Android devices include tablets or phones purchased separately. When compared to NP Pay terminals, they:     

  - require the **Adyen Payments** app that is run via our **NP Pay Setup** to process transactions. 
  - provide a limited payment experience compared to the dedicated payment terminals. 
  - need to have received a security update within the last 12 months to support the payment application.
  - support a limited set of [<ins>Payment experience feature<ins>](https://www.adyen.com/devices/tap-to-pay-on-android)
  
If you plan to use Android devices for the Emergency mPOS app, ensure they meet the following requirements:

- The Android version must be officially supported by Google and updated to the latest security patch.

   {{< alert icon="⚠️" text="When an Android OS version no longer receives security patches, the Android Mobile SDK stops supporting it. Ensure your devices are easy to update, such as through Mobile Device Management (MDM) software."/>}}

- If the SDK is integrated into your application, regularly update to the latest SDK version. Note that the [<ins>SDK expires every six months<ins>](https://docs.adyen.com/point-of-sale/mobile-android/manage/#keep-the-mobile-sdk-up-to-date).
- Ensure your card reader's software version is up to date. The NYC1 software version corresponds to the SDK version and must be updated regularly.
- The POS app must be integrated with our [<ins>Terminal API<ins>](https://docs.adyen.com/point-of-sale/design-your-integration/terminal-api/#api-structure).

### NP Pay terminals

NP Pay terminals offer a complete, built-in payment solution without requiring additional applications. These devices serve as standalone payment terminals. Our recommended model for high-intensity mobile use is the Zebra TC27.

#### Zebra TC27 mobile computer features

The Zebra TC27 is a mobile computer designed for extended, high-intensity use, such as completing eight-hour shifts with frequent barcode scanning. The device supports 5G and Wi-Fi 6E for reliable connectivity.

While suitable for demanding mobile applications, the TC27 is not intended for use as a stationary, countertop POS terminal.

#### AMS1 terminal features

The AMS1 is an all-in-one payment terminal that supports Android app installations and enables mobile payment processing. It has built-in 4G connectivity and Wi-Fi compatibility, providing reliable internet access. When docked, it acts as a countertop terminal, maintaining a continuous charge to ensure operation during power outages.

The AMS1 operates independently of standard POS systems, reducing vulnerability to ransomware attacks and maintaining transaction capability. It is suitable for use as a mobile device for light, occasional transactions or as a countertop terminal. However, if a device is needed for extended, high-intensity mobile use — such as handling eight-hour shifts with frequent barcode scans — a dedicated solution like the Zebra TC27 may be more appropriate.

#### S1E2L terminal features

S1E2L is an all-in-one mPOS device designed for secure and efficient payment processing. For connectivity, the S1E2L supports Wi-Fi and Bluetooth interfaces, ensuring reliable communication across various network environments. Its replaceable battery provides extended operational time, essential for high-transaction settings.

It accepts multiple payment methods, including contactless, chip, and swipe card transactions, and supports various payment types such as gift cards, debit/credit cards, local payment methods, and e-wallets.

### See also

- [<ins>Set up NP Retail Emergency mPOS<ins>]({{< ref "../../how-to/emergency_pos/index.md" >}}).
- [<ins>Make a sale on NP Retail Emergency mPOS<ins>]({{< ref "../../how-to/emergency_sale/index.md" >}})
- [<ins>NP Retail Emergency mPOS (reference guide)<ins>]({{< ref "../../reference/emergency_pos/index.md" >}})