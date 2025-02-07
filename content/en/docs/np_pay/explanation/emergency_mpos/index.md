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

NP Retail Emergency mPOS is an application designed to help customers process payments when either Business Central (BC) or the Internet is unavailable. This app ensures business continuity by allowing transactions even in emergency situations.

- [<ins>Set up NP Retail Emergency mPOS<ins>]({{< ref "../../how-to/emergency_pos/index.md" >}}).
- [<ins>Perform a sale via the NP Retail Emergency mPOS app<ins>]({{< ref "../../how-to/emergency_sale/index.md" >}}).

The app supports both card and cash payments, allowing cashiers to record received cash transactions. Each emergency mPOS device is linked to an existing POS unit, but does not require an additional device license. Instead, transactions are manually synchronized to Business Central with a single click.

When synchronization is finished, transaction data is stored in **External POS Sales** within Business Central. From there, it can be converted into a **POS Entry** and posted as usual. If a customer has requested a digital receipt, it will be automatically sent via email or SMS once the synchronization is complete.

### Supported devices

NP Retail Emergency mPOS can be installed on either standard Android devices or NP Pay terminals. The main difference between these device groups is explained in further text:

- Standard Android devices (e.g., tablets or phones purchased separately)      

  - require the **Adyen Payments** app that is run via our **NP Pay Setup** to process transactions. 
  - provide a limited payment experience compared to the dedicated payment terminals. 
  - need to have received a security update within the last 12 months. Without up-to-date security patches, Adyen Payments will not work. 
  - offer a subset of the [<ins>Payment experience feature<ins>](https://www.adyen.com/devices/tap-to-pay-on-android)
  
- NP Pay terminals (e.g. [<ins>AMS1<ins>](https://www.adyen.com/devices/ams1), [<ins>S1E2L<ins>](https://www.adyen.com/devices/castles-s1e2l))

  - include full built-in payment features without requiring additional apps. 
  - function as a standalone payment terminal.
  - currently, two models have been tested and verified - these models are less powerful in terms of hardware but come with integrated features from NP Pay.

### AMS1 terminal features

The AMS1 is an all-in-one payment terminal that supports Android app installations and enables fast, mobile payment processing. It features built-in 4G connectivity and Wi-Fi compatibility, ensuring reliable internet access and redundancy. When docked, it functions as a traditional countertop terminal, maintaining a continuous charge for uninterrupted operation during power outages.

Additionally, the AMS1 operates independently of standard POS systems, reducing vulnerability to ransomware attacks and ensuring ongoing transaction capability. It can be used as either a mobile POS device or a countertop payment terminal, making it a versatile solution for daily retail operations.

### S1E2L terminal features

S1E2L is an all-in-one mPOS device designed for secure and efficient payment processing. For connectivity, the S1E2L supports Wi-Fi and Bluetooth interfaces, ensuring reliable communication across various network environments. Its replaceable battery provides extended operational time, essential for high-transaction settings.

It accepts multiple payment methods, including contactless, chip, and swipe card transactions, and supports various payment types such as gift cards, debit/credit cards, local payment methods, and e-wallets.

### See also

- [<ins>Set up NP Retail Emergency mPOS<ins>]({{< ref "../../how-to/emergency_pos/index.md" >}}).
- [<ins>Make a sale on NP Retail Emergency mPOS<ins>]({{< ref "../../how-to/emergency_sale/index.md" >}})
- [<ins>NP Retail Emergency mPOS (reference guide)<ins>]({{< ref "../../reference/emergency_pos/index.md" >}})