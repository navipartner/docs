---
title: "SI POS Audit Log"
description: "The SI POS Audit Log Aux. Info page contains information on every issued and fiscalized receipt. "
lead: ""
date: 2023-12-01T09:29:38+01:00
lastmod: 2023-12-01T09:29:38+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pos_audit_log-ab3d6fe9c7e00c5b5f78bfd6b0a064e5"
weight: 824
toc: true
type: docs
---

The **SI POS Audit Log Aux. Info** page contains information on every issued and fiscalized receipt.

The following fields are especially relevant:

| Field Name      | Description |
| ----------- | ----------- |
| **ZOI** | The protective mark of the issuer that is assigned by the POS system for every transaction. |
| **EOR** | The unique receipt identifier that is assigned and provided in the response message from the TA. |

Furthermore, the following actions can be used on the **SI POS Audit Log** page:

| Action Name      | Description |
| ----------- | ----------- |
| **Print receipts** | If the receipt is already printed, executing the **Print Receipt** action will result in a copy of the receipt being printed. Every copy of a receipt has a label *THIS IS A COPY OF A RECEIPT* and a number of a printed copy. |
| **Download Request Message** | If executed, the XML message that has been sent to the TA will be downloaded and become available for review. |
| **Download Response Message** | If executed, the XML message that has been received from the TA will be downloaded and become available for review. |
| **Subsequently Fiscalize Bill** | If executed, the non-fiscalized receipts will be sent to the TA. This applies to the receipts that haven't received their EOR. After sending the transaction to the TA, the EOR column will be populated. |
| **Show Related POS Sales Lines** | If executed, the items and the quantity for which the selected receipt has been issued will become available to review. | 
