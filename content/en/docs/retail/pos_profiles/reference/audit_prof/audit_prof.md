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
weight: 22
toc: true
type: docs
---


The POS audit profile is used for assigning different number series and different rules for printing to different POS units.

The following options can be set up in the **General** section:


| Field Name      | Description |
| ----------- | ----------- |
| **Code**       | The unique code for the POS Audit Profile.     |
| **Description**   | The short description of profile.        |
| **Sales ticket No. Series**  | The number series used for creating the document number. |
| **Sale Fiscal No. Series** | The number series used for creating the fiscal number. |
| **Credit Sale Fiscal No. Series** | The items will be searched by their cross reference numbers. |
| **Balancing Fiscal No. Series** | The number series used for creating the fiscal number for balancing. |
| **Fill Sales Fiscal No. On** | You can choose between **All Sale** and **Successful Sale**. |
| **Audit Log Enabled** | Used in certain countries for creating additional logs, usually for VAT. |
| **Audit Handler** | If **Audit Log Enabled** is checked use this field to choose which log will be created. |
| **Allow Zero Amount Sale** | Allow the sale to be finalized with the amount zero. |
| **Print Receipt On Cancel Sale** | Allow receipts to be printed even when the sale is canceled. |
| **Allow Printing Receipt Copy** | Set up whether a copy is printed or not. Available options are: **Always**, **Once**, **Never**. |
| **Require Item Return Reason** | If this field is checked in the moment of returning goods in the POS, the cashier will be asked to enter the reason code for the return of the goods. |

<iframe width="560" height="315" src="https://www.youtube.com/embed/JaqGl38lV-s" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
