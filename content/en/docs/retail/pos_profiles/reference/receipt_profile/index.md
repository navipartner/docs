---
title: "POS Receipt Profile"
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

The POS Receipt profile is used for storing all configurations related to [<ins>digital receipts<ins>]({{< ref "../../../pos_processes/how-to/digital_receipts/index.md" >}}). There are also several options which can be used for generating and displaying QR codes at the end of each transaction, as well as information pertaining to discounts.

The following fields and options are available:

| Field Name      | Description |
| ----------- | ----------- |
| **Code** | Specifies the unique identifier for the receipt profile. The code helps distinguish and manage different POS receipt profiles. |
| **Description** | Specifies a brief description of the POS receipt profile, that can be used for easy identification and reference. |
| **Send E-Mail Receipt on Sale** | Determines whether an email will be sent to customers automatically following the successful sale, provided that the customers are attached to the sale in Business Central, and that their emails have been listed in the relevant **Customer Card**. |
| **Receipt Discount Information** | Specifies how the discount information should be displayed on the receipt. The following options are available: </br> **1. <ins>PER-LINE DISCOUNT INFORMATION:<ins>** <image src="Images/per_line.PNG" width="500" height="400"> </br> **2.<ins>SUMMARY DISCOUNT INFORMATION:<ins>** <image src="Images/summary.PNG" width="500" height="400"> </br> **3.<ins>NO DISCOUNT INFORMATION<ins>** - only the calculation is displayed in the summary. | 
| **Issue Digital Receipt After Sale** | Enable issuing digital receipts after sales. |
| **QR Code Timeout Interval Enabled** | If enabled, the QR code displayed at the end of the transaction will automatically be closed after the specified time interval. | 
| **QR Code Timeout Interval(sec.)** | Specifies the number of seconds after which the QR code at the end of the transaction will be closed. |

#### See also

- [<ins>POS profile overview<ins>]({{< ref "../../intro.md" >}})
- [<ins>Digital receipts<ins>]({{< ref "../../../pos_processes/how-to/digital_receipts/index.md" >}})