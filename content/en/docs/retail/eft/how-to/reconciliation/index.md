---
title: "Import EFT reconciliation files, match and post them"
description: "In the EFT module, it is possible to import teller files and match transactions from those files with transactions from EFT Transaction Requests, after which the reconciliation can be posted."
lead: ""
date: 2023-07-06T10:04:40+02:00
lastmod: 2023-07-06T10:04:40+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "reconciliation-8a018b0a1d1630f5781c4ed3dc3c33c9"
weight: 148
toc: true
type: docs
---

Inside the EFT module every transaction from the POS terminal is recorded in **EFT Transaction Requests**. 
In certain cases the payment is rejected and it needs to be repeated.
The bank also records all transactions related to the bank account. Those transactions can be found in the teller files, for example.

In the EFT module, it is possible to import teller files and match transactions from those files with transactions from **EFT Transaction Requests**, after which the reconciliation can be posted.

To import a new reconciliation file:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **EFT Recon. Provider List** and open the related link.
2. Click the plus sign at the top of the screen to create a new EFT reconciliation provider.
3. Populate the necessary fields in the **EFT Recon. Provider Card**.
4. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **EFT Reconciliation List** and open the related link.
5. Click the plus sign at the top of the screen to create a new EFT reconciliation.
6. Populate the necessary fields in the **EFT Reconciliation** card.

 {{< alert icon="⚠️" text="Make sure that the value in the **Provider** field has previously been created."/>}}

7. To set up the import handler, choose **Import Handlers** in the **EFT Reconciliation** card under **Related**.
8. Click **Import File**.

## Next steps

- After the import, the entries can be matched with the entries in **EFT Transactions Requests**.
- Matching can be performed automatically, by clicking **Match Automatically** or manually, by clicking **Match Manually**.
- Once the entries are matched, reconciliation can be posted with the **Post** action.
