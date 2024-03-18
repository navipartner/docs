---
title: "Posting setup (reference guide)"
description: "The POS Posting Setup defines how the receipts for cash and other payment methods are posted in the General Ledger or Sub-Ledgers in the system. Refer to this article to learn what each field is used for."
lead: ""
date: 2024-03-12T15:17:31+01:00
lastmod: 2024-03-12T15:17:31+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "posting_setup_ref-7f4136e8b6164a9ae86f546678eb92b8"
weight: 256
toc: true
type: docs
---

The **POS Posting Setup** defines how the receipts for cash and other payment methods are posted in the General Ledger or Sub-Ledgers in the system.  

![posting1](posting1.PNG)

| Article Name      | Description |
| ----------- | ----------- |
| **POS Store Code** | The POS store code should be provided if you wish to set a specific posting logic for the store. | 
| **POS Payment Method Code** | The posting logic of a POS Payment Method. |
| **POS Payment Bin Code** | The posting logic of a specific **POS Payment Bin Code**. |
| **Account Type** | The type of account which is going to be affected when the receipt is posted. Apart from the General Ledger, you can also use a **Customer Ledger** or a **Bank Ledger** at this level. In brief, posting will be done at sub-ledger level if you choose to do so.  | 
| **Account No.** | Determines which account number from the Chart of Account, customer number from the **Customer Card** or bank number from the Bank is being debited when a particular **POS Payment Method** is received. |
| **Difference Account Type** | Determines what type of account is going to be affected on posting any difference between a theoretical POS Unit amount and physical cash amount when doing receipt balancing. Apart from the General Ledger, you can also set a **Customer Ledger** or a **Bank Ledger** at this level. In brief, posting will be done at sub-ledger level if you choose to do so. |
| **Close to POS Bin No.** | This field is not used for the example store. |
| **Difference Acc. No.** | Determines which account is going to be affected with a negative cash difference. | 
| **Difference Acc. No. (Neg)** | Determines which account is going to be affected with a positive cash difference. |

{{< alert icon="📝" text="Most companies use the same account for positive & negative differences."/>}}