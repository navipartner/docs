---
title: "CRO POS Audit Log"
description: "The CRO POS Audit Log Aux. Info page contains information on every fiscalized receipt. "
lead: ""
date: 2023-10-19T13:21:05+02:00
lastmod: 2023-10-19T13:21:05+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "audit-1a02a905ec6e61dfa2667e9b76ef9b3b"
weight: 999
toc: true
type: docs
---

The **CRO POS Audit Log Aux. Info** page contains information on every fiscalized receipt. 

   ![croatian_fiscalization7](croatian_fiscalization7.PNG)

The following fields are especially relevant:

| Field Name      | Description |
| ----------- | ----------- |
| **JIR** | Specifies the encrypted text that TA is sending after fiscalizing the receipt. |
| **ZKI** | Specifies the encrypted text that is sent to TA, and contains the information about the issued receipt. </br> The structure of **ZKI** is as follows: "*CompanyInfo.RegistrationNo+DateAndTime in format (dd.mm.yyy hh:mm:ss) + Bill No. (No Series number) + POS Store Code + POS Unit No. + POSEntry.AmountInclTax.*" |

Furthermore, the following actions can be used on the **CRO POS Audit Log Aux. Info** page:

| Action Name      | Description |
| ----------- | ----------- |
| **Print Receipt** | Triggers printing of the original receipt's copy for the selected POS entry. If the receipt for the selected POS entry wasn't already printed, the original receipt will be printed instead, but it’s only possible to print the original receipt once. |
| **Subsequently Fiscalize Bill** | Non-fiscalized receipts will be sent to the TA when this action is triggered. This applies to the receipts that haven't received their JIR. After sending the transaction to the TA, the JIR will be populated. |
| **Download Request Message** | Download an XML message that is sent to the TA after issuing the fiscal bill to the customer. |
| **Download Accompanying Document** | Download an XML message that is sent to the TA after issuing the accompanying documents to the customer. |
| **Show Related POS Sales Lines** | When triggered, the items that haven't been sold are displayed. | 
