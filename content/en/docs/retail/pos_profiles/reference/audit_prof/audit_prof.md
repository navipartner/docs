---
title: "POS Audit Profile"
description: "The POS audit profile is used for assigning different number series and different rules for printing to different POS units."
lead: ""
date: 2023-07-04T14:57:36+02:00
lastmod: 2023-07-04T14:57:36+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "audit_prof-a7a646d42226fd06129ff1258d8aacb4"
weight: 122
toc: true
type: docs
---


The POS audit profile is used for assigning different number series and different rules for POS behavior and printing to different POS units.

The following options can be set up in the **General** section:


| Field Name      | Description |
| ----------- | ----------- |
| **Code**       | Specifies the unique code for the POS Audit Profile.     |
| **Description**   | Specifies the short description of profile.        |
| **Sales ticket No. Series**  | Specifies the number series used for creating the document number. |
| **Sale Fiscal No. Series** | Specifies the number series used for creating the fiscal number. |
| **Credit Sale Fiscal No. Series** | If the credit sale number series is provided, the items will be searched by their cross reference numbers. |
| **Balancing Fiscal No. Series** | Specifies the number series used for creating the fiscal number for balancing. |
| **Fill Sales Fiscal No. On** | You can choose between **All Sale** and **Successful Sale**. |
| **Audit Log Enabled** | Used in certain countries for creating additional logs, usually for VAT. |
| **Audit Handler** | If **Audit Log Enabled** is checked, use this field to choose which handler will be used to create the log. |
| **Allow Zero Amount Sale** | Allow the sale to be finalized with the amount zero. |
| **Allow Sales and Return in Same Transaction** | Allow both negative and positive transactions in a sale. |
| **Print Receipt On Cancel Sale** | Allow receipts to be printed even when the sale is canceled. |
| **Allow Printing Receipt Copy** | Specify whether a copy is printed or not. The available options are: <ul> <li> **Always**</li> <li>**Once**</li> <li>**Never**</li> </ul>. |
| **Require Item Return Reason** | If this field is checked in the moment of returning goods in the POS, the cashier will be asked to enter the reason code for the return of the goods. You can make a list of possible reasons for return in the **Return Reasons** administrative section.  | 
| **Bin Eject After Credit Sale** | If enabled, the physical bin will be ejected following a successful credit sale. | 
| **Bin Eject After Sale** | If enabled, the physical bin will be ejected following a successful direct sale. |
| **Do Not Print Receipt On Sale** | If enabled, the receipt will not be printed after a sale is successfully conducted. | 
| **Do Not Print EFT Receipt On Sale** | If enabled, the EFT receipt will not be printed after a sale is successfully conducted. |

  ![audit_profile](audit_profile.PNG)

<iframe width="560" height="315" src="https://www.youtube.com/embed/JaqGl38lV-s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

#### See also

- [<ins>POS profile overview<ins>]({{< ref "../../intro.md" >}})
- [<ins>Country-specific fiscalization requirements<ins>]({{< ref "../../../../fiscalization/intro.md" >}})