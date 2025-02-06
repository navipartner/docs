---
title: "NP Retail Emergency mPOS overview"
description: "NP Retail Emergency mPOS is an application designed to help customers process payments when Business Central (BC) or the internet is unavailable. This app ensures business continuity by allowing transactions even in emergency situations."
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

NP Retail Emergency mPOS is an application designed to help customers process payments when Business Central (BC) or the internet is unavailable. This app ensures business continuity by allowing transactions even in emergency situations.

- [<ins>Set up NP Retail Emergency mPOS<ins>]({{< ref "../../how-to/emergency_pos/index.md" >}}).
- [<ins>Perform a sale via the NP Retail Emergency mPOS app<ins>]({{< ref "../../how-to/emergency_sale/index.md" >}}).

Besides being able to take card payments, the app includes a way to specify that the cashier receives cash. This has the side effect that each Emergency mPOS device will be tied to an existing POS, but it does not require an additional device license since we synchronize the data to Business Central manually, with a click of a button.

When we synchronize to Business Central, the data ends up in the **External POS Sales**, which has been slightly upgraded for this purpose. From here, the data can be converted to a **POS Entry** and posted as normal. When the conversion is complete, the flow will check if a customer specified they want the receipt in a digital format either via email or via SMS.

### Supported devices

NP Retail Emergency mPOS can be installed on either standard Android devices or NP Pay terminals. The main difference between these device groups is explained in further text:

- Standard Android devices (e.g., tablets or phones purchased separately)      

  - require the **Adyen Payments** app that is run via our **NP Pay Setup** to process transactions. 
  - provide a limited payment experience compared to the dedicated payment terminals. 
  - offer a subset of the [<ins>Payment experience feature<ins>](https://www.adyen.com/devices/tap-to-pay-on-android)
  
- NP Pay terminals (e.g. [<ins>AMS1<ins>](https://www.adyen.com/devices/ams1), [<ins>S1E2L<ins>](https://www.adyen.com/devices/castles-s1e2l))

  - include full built-in payment features without requiring additional apps. 
  - function as a standalone payment terminal.
  - currently, two models have been tested and verified - these models are less powerful in terms of hardware but come with integrated features from NP Pay.

### AMS1 terminal features

The AMS1 is an all-in-one payment terminal that supports Android app installations and enables fast, mobile payment processing. It features built-in 4G connectivity and Wi-Fi compatibility, ensuring reliable internet access and redundancy. When docked, it functions as a traditional countertop terminal, maintaining a continuous charge for uninterrupted operation during power outages.

Additionally, the AMS1 operates independently of standard POS systems, reducing vulnerability to ransomware attacks and ensuring ongoing transaction capability. It can be used as either a mobile POS device or a countertop payment terminal, making it a versatile solution for daily retail operations.

### See also

- [<ins>Set up NP Retail Emergency mPOS<ins>]({{< ref "../../how-to/emergency_pos/index.md" >}}).
- [<ins>Make a sale on NP Retail Emergency mPOS<ins>]({{< ref "../../how-to/emergency_sale/index.md" >}})
- [<ins>NP Retail Emergency mPOS (reference guide)<ins>]({{< ref "../../reference/emergency_pos/index.md" >}})