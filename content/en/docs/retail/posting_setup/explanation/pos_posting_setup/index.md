---
title: "POS posting setup"
description: "POS Posting Setup allows users to set up accounts on which payments from sales transactions will be posted."
lead: ""
date: 2023-10-04T14:45:30+02:00
lastmod: 2023-10-04T14:45:30+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pos_posting_setup-4ab2e575ffd18af463f902887a754be5"
weight: 255
toc: true
type: docs
---

**POS Posting Setup** allows users to set up the accounts on which payments from sales transactions will be posted.

![POS_posting_setup](POS%20posting%20setup.PNG)

For every existing **POS Payment Method** you need to set up an account on which postings will be recorded after the POS entry is posted.
Depending on your business needs, accounts can be the same for all stores or each store can have its own account for postings. If all stores have the same account for posting payments, it is enough to assign the **Account No.** to the **POS Payment Method Code**. 

{{< alert icon="✍️" text="<b>Example</b> </br> In the provided image, all postings for payments made with the PBB-EDBT POS payment method will be posted to the Account No. 33314."/>}}

However, if there's a need for payments to be posted on different accounts depending on the store, the account number should be assigned to the **POS Payment Method Code** and the **POS Store Code**. 

{{< alert icon="✍️" text="<b>Example</b> </br> In the provided image, all postings for payments made with the POS Payment Method CASH will be posted to the Account No. 37007, except for those payments made in the GARDENS store. For this store, every payment made with the POS Payment Method CASH will be posted to the Account No. 33314."/>}}

Additionally, it is possible to set up different accounts for different POS payment bins. In that case, it is necessary to also set up the **POS Payment Bin Code**, except in the case of **POS Payment Method Code** and **POS Store Code**. 

{{< alert icon="✍️" text="<b>Example</b> </br> If there is a need to have multiple bins for CASH in one store, every bin can have its own G/L account for posting."/>}}

In the **POS Posting Setup** section for every **Payment Method Code**, which is used for payments in POS units, you need to set up the **Difference Account No.**, which is used if there are differences between the counted amount and the system amount in the end-of-day process.

<iframe width="560" height="315" src="https://www.youtube.com/embed/NACqyx-5Jc4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

#### See also

- [<ins>POS Posting profile - examples of usage<ins>]({{< ref "../different_posting_rules/index.md" >}})
- [<ins>Posting compression (EOD)<ins>]({{< ref "../compression/index.md" >}})