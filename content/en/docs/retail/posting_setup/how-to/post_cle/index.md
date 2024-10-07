---
title: "Post customer ledger entries from a POS entry"
description: "This article guides you through the process of posting customer ledger entries from a POS entry."
lead: ""
date: 2024-10-07T13:21:13+02:00
lastmod: 2024-10-07T13:21:13+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "post_cle-2f90e4da4c31fa6ab540972353a4eddc"
weight: 255
toc: true
type: docs
---

To be able to post customer ledger entries from a POS entry,follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Posting Profiles**, and choose the related link.     
2. Select one of the available posting profiles, or create a **New** one. 
3. **Enable Posting** of customer ledger entries via the designated toggle switch in the **Customer Ledger Entry Posting Setup** FastTab.
4. Configure the following options according to your business needs: 

  | Option Name      | Description |
  | ----------- | ----------- |
  | **Customer Posting Group Filter** | Specifies the customer posting group for which customer ledger entries will be posted. | 
  | **Post for Legal Entities** | Specifies whether the customer ledger entries should only be posted for legal entities (the customers that have **VAT Registration No.** defined on their **Customer Card**). |
  | **General Journal Template Name** | Specifies the journal template name that will be assigned to the general journal lines in the customer ledger activity. |
  | **General Journal Template Batch Name** | Specifies the journal batch name that will be assigned to the general journal lines in the customer ledger activity. This option is useful if you wish to separate G/L entries posted for customers by journal batch. |

  ![post_cle](Images/post_cle.PNG)