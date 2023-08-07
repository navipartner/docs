---
title: "Set up POS Audit Profile"
description: "The POS audit profile is used for assigning different number series and different rules for printing to different POS units. "
lead: ""
date: 2023-08-07T10:59:41+02:00
lastmod: 2023-08-07T10:59:41+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "audit_profile-5f5790eda3d5b9339f5bc79cda1b8300"
weight: 18
toc: true
type: docs
---

The POS audit profile is used for assigning different number series and different rules for printing to different POS units. Setting up this profile is mandatory for creating a fully operational POS store.

The following options can be set up in the **General** section for the fictional example company *Bring It to You Retail Store Ltd.*:

| Field Name      | Description |   Example    |
| ----------- | ----------- | ----------- |
| **Code** | The unique code for the POS Audit Profile. | **DEFAULT** |
| **Description** | The short description of the profile. | **POS Audit Profile** |
| **Sales Ticket No. Series** | The number series used for creating the document number. For **Sales Ticket No. Series**, it's important to make sure the number series has the **Allowed Gaps** set to **TRUE**. | **NPR-SALES**  |
| **Sale Fiscal No. Series** | The number series used for creating the fiscal number. | **NPR-PE-FIS** |
| **Credit Sale Fiscal No. Series** | The number series used for creating the fiscal number for returns. | **NPR-PE-FIS** |
| **Balancing Fiscal No. Series** | The number series used for creating the fiscal number for balancing. | **NPR-BAL-P** |
| **Fill Sales Fiscal No. On** | The condition under which the fiscal number is populated. | You can choose between **All Sale** and **Successful Sale**. | 
| **Audit Log Enabled** | Used in certain countries for creating additional logs, usually for the VAT. | Not set for Bring It to You Retail Store Ltd. |
| **Audit Handler** | If **Audit Log Enabled** is checked use this field to choose which log will be created. | Not set for Bring It to You Retail Store Ltd. |
| **Allow Zero Amount Sale** | Used if you wish to allow finalizing the sale with the amount zero. | Disactivated  |
| **Print Receipt On Cancel Sale** | Used if the receipts should be printed whenever a sale is cancelled. | Disactivated  |
| **Allow Printing Receipt Copy** | Used if a receipt copy is printed. | Always |
| **Do Not Print Receipt on Sale** | Used if receipts shouldn’t be printed on sale. | Disactivated   |
| **Require Item Return Reason** | When goods are returned to the store, a cashier is prompted to enter a reason code for the return of the goods. | Disactivated  |