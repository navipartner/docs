---
title: "EFT transaction request"
description: "The NPR EFT Transaction Request administrative section serves as a comprehensive log and a control mechanism for the Electronic Funds Transfer transactions within Business Central."
lead: ""
date: 2024-08-21T13:19:44+02:00
lastmod: 2024-08-21T13:19:44+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "eft_transaction_request-a3c693552dd980216e22ee4fbd6b9454"
weight: 217
toc: true
type: docs
---


The [<ins>**NPR EFT Transaction Request**<ins>]({{< ref "../../reference/eft_transaction_request/index.md" >}}) administrative section serves as a comprehensive log and a control mechanism for the Electronic Funds Transfer transactions within Business Central.

Some of its main functions are to:

- Log all EFT transaction requests: it captures detailed information about each EFT transaction, including transaction types, amounts, card details, and results.
- Track transaction statuses: the fields such as **Started**, **Finished**. **Successful**, and **Result Code** allow for monitoring the progress and outcome of each transaction.
- Store payment-related information: it records data such as card types, card numbers (masked card numbers), authorization numbers, and reference numbers. 
- Handle various transaction types: the table supports different processing types like payments, refunds, voids, and gift card loans.
- Manage integration with payment terminals via codes, and also with specific payment hardware **Hardware ID** integration. 
- Support reconciliation processes: fields related to reconciliation allow for matching transactions with financial records.
- Handle multi-currency transactions: it includes fields for currency codes and dynamic currency conversion (DCC).
- Store receipts and logs: blob fields are used to store receipt data and transaction logs.
- Manage transaction relationships: fields like **Processed Entry No.** and **Reversed by Entry No.** allow for tracking related transactions.
- Support various authentication methods: it includes fields for different authentication types such as PIN, signature, or a consumer device.
- Integrate with sales processes: fields such as **Sales Ticket No.** and **Sales ID** suggest integration with the broader sales system. 

To summarize, this table is a central repository for all EFT-related activities, providing a detailed audit trail and enabling various financial operations and reporting functions within Business Central.
