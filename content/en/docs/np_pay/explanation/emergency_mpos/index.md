---
title: "NP Retail Emergency MPOS"
description: "NP Retail Emergency MPOS is an Android application designed to help customers process payments when Business Central (BC) or the internet is unavailable. This app ensures business continuity by allowing transactions even in emergency situations."
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

NP Retail Emergency MPOS is an Android application designed to help customers process payments when Business Central (BC) or the internet is unavailable. This app ensures business continuity by allowing transactions even in emergency situations.

Besides being able to take card payments, the app includes a way to specify that the cashier receives cash. This has the side effect that each Emergency MPOS device will be tied to an existing POS, but it does not require an additional device license since we synchronize the data manually with a click of a button to BC.

When we synchronize to Business Central, the data ends up in the **External POS Sales**, which has been slightly upgraded for this purpose. From here, the data can be converted to a **POS Entry** and posted as normal. When the conversion is complete, the flow will check if a customer specified they want the receipt in a digital format either via email or via SMS.

### Supported devices

NP Retail Emergency MPOS can be installed on either standard Android devices or NP Pay terminals. The main difference between these device groups is explained in further text:

- Standard Android devices (e.g., tablets or phones purchased separately)      

  - Need to be run with the **Adyen Payments** app via our **NP Pay Setup** to process transactions. 
  - Provide a limited payment experience compared to the dedicated payment terminals. 
  - It is a subset of the [<ins>Payment experience feature<ins>](https://www.adyen.com/devices/tap-to-pay-on-android)
  
- NP Pay terminals (e.g. [<ins>AMS1<ins>[https://www.adyen.com/devices/ams1], [<ins>S1E2L<ins>[https://www.adyen.com/devices/castles-s1e2l])

  - Include full built-in payment features without requiring additional apps. 
  - Function as a standalone payment terminal.
  - Currently, two models have been tested and verified. These models are less powerful in terms of hardware but come with more integrated features from NP Pay.

#### AMS1 terminal features

The AMS1 is an all-in-one payment terminal that supports Android app installations and enables fast, mobile payment processing. It features built-in 4G connectivity and Wi-Fi compatibility, ensuring reliable internet access and redundancy. When docked, it functions as a traditional countertop terminal, maintaining a continuous charge for uninterrupted operation during power outages.

Additionally, the AMS1 operates independently of standard POS systems, reducing vulnerability to ransomware attacks and ensuring ongoing transaction capability. It can be used as either a mobile POS device or a countertop payment terminal, making it a versatile solution for daily retail operations.

