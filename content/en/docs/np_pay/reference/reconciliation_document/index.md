---
title: "Reconciliation document details"
description: "This article contains useful fields and options found in the NP Pay Reconciliation Document administrative section."
lead: ""
date: 2024-07-12T11:28:04+02:00
lastmod: 2024-07-12T11:28:04+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "reconciliation_document-31c05973d9a41f453cbbf5b4516018bb"
weight: 630
toc: true
type: docs
---

This article describes the available fields and options found in the **Reconciliation Document Details** administrative section:

   ![np_pay_document](Images/np_pay_document.PNG)

From the **Reconciliation Document Details**, you can recreate the document, match the available entries, and post them. If necessary it is also possible to **Reverse Postings** via a designated action. The action completely reverses all postings related to the selected reconciliation document. 

To access the full list of documents, you can navigate to the **NP Pay Reconciliation List**. This section contains information such as batch numbers, merchant account details, document dates, transaction dates, total transaction amounts, and the total posted accounts. 

The **NP Pay Reconciliation Line Relation** page tracks all previous posting records. If a document is posted and reversed multiple times, the page will maintain records for each posting cycle. There's a **Reversed** field, that indicates whether the last posting was reversed or not.

Reversing a posting toggles the **Reconciled** field of related **Transaction Entries** and resets their **Reconciliation Date** value. It is only enabled if the document is fully **Posted**.

   ![reconciliation_doc_reverse](Images/reconciliation_doc_reverse.png)


The lines marked in red signify failed statuses, whereas the lines marked in green indicate that posting has been conducted successfully. If the lines aren't marked with any color, they are in the intermediate status. 

   ![np_pay_reconciliation_list](Images/np_pay_reconciliation_list.PNG)

The following actions are available in the **NP Pay Reconciliation Lines**: 

| Action Name      | Description |
| ----------- | ----------- |
| **Show Original Entry** | Opens the original payment that the current reconciliation line was matched with. | 
| **Show Posted Amounts** | Displays the amounts that were posted from the current line classified by the amount type. | 
| **Confirm Awareness** | Used for manually confirming that you are aware of a chargeback-type line, so you can proceed with its posting. | 
| **Post as Missing** | Used for skipping the matching process, and posting the current reconciliation line if it's missing and was **Failed to Match**. | 


   {{< alert icon="📝" text="You can manually match a line if it has previously failed to match. This is done via the <b>Matching Table Name</b> column."/>}}

The reconciliation posting scheme is visually represented in the following image:

   ![np_pay_posting_scheme](Images/np_pay_posting_scheme.PNG)