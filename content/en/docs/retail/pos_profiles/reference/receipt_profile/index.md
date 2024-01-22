---
title: "POS receipt profile"
description: "The POS Receipt profile is used for storing all configurations related to digital receipts."
lead: ""
date: 2024-01-22T11:15:08+01:00
lastmod: 2024-01-22T11:15:08+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "receipt_profile-d2d4a4e3c5bf7214affe1d5b8e50f3fe"
weight: 122
toc: true
type: docs
---

The POS Receipt profile is used for storing all configurations related to digital receipts. There are also several options which can be used for generating and displaying QR codes at the end of each transaction, as well as information pertaining to discounts.

The following fields and options are available:

| Field Name      | Description |
| ----------- | ----------- |
| **Code** | Specifies the unique identifier for the receipt profile. The code helps distinguish and manage different POS receipt profiles. |
| **Description** | Specifies a brief description of the POS receipt profile, that can be used for easy identification and reference. |
| **Receipt Discount Information** | Specifies how the discount information should be displayed on the receipt. The following options are available: </br> **1. <ins>PER-LINE DISCOUNT INFORMATION:<ins>** <image src="Images/per_line.PNG" width="500" height="400"> </br> **2.<ins>SUMMARY DISCOUNT INFORMATION:<ins>** <image src="Images/summary.PNG" width="500" height="400"> </br> **3.<ins>NO DISCOUNT INFORMATION<ins>** - only the calculation is displayed in the summary. | 
| **Enable Digital Receipt** | Enable or disable the entire digital receipt module for this profile. When enabled, the digital receipts will be generated for transactions related to this profile. |
| **QR Code Timeout Interval Enabled** | If enabled, the QR code displayed at the end of the transaction will automatically be closed after the specified time interval. | 
| **•	QR Code Timeout Interval(sec.)** | Specifies the number of seconds after which the QR code at the end of the transaction will be closed. |

