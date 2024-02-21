---
title: "POS posting priority rules"
description: "The posting setup selection is based on a posting priority rule. There are three possible combinations explained in this article."
lead: ""
date: 2023-10-04T15:00:56+02:00
lastmod: 2023-10-04T15:00:56+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "posting_priority_rule-5d17c48d243169882fc03990e4b8bee7"
weight: 255
toc: true
type: docs
---

The purpose of the posting setup is to post a payment from the POS to a specific G/L account or a bank account. When doing this, the following elements need to be considered as well as their respective combinations:

- **POS Store Code**
- **POS Payment Method Code**
- **POS Payment Bin Code**

![pos_priority](Images/pos_priority.png)

The combinations are prioritized in the following order:

1. Full Match with the **POS Store Code**, **POS Payment Method Code**, and the **POS Payment Bin Code**

   Full match method is required if different accounts are used for each store and POS unit. This is the most precise method out of the three, which is why it has a priority over them.

    ![full_match](Images/full_match.PNG)


2. Two constraints with the **POS Store Code** and the **POS Payment Method Code**

   If each store has a different account for the **POS Payment Method**, you need to set a combination of the **POS Store Code** and the **POS Payment Method Code**. 

   ![two_constraints](Images/two_constraints.PNG)

3. One constraint with the **POS Payment Method Code**

   If all POS stores use the same G/L account for posting, you only need to set the **POS Payment Method Code**.

    ![one_constraint](Images/one_constraint.PNG)

## Limitations

The following combinations are not supported by our solution:

- Two constraints with the **POS Payment Method Code** and the **POS Payment Bin Code**
- Two constraints with the **POS Store Code** and the **POS Payment Bin Code**

#### See also

- [<ins>POS Posting profile - examples of usage<ins>]({{< ref "../../../pos_academy/configuration/posting_profile/index.md" >}})
- [<ins>Posting compression (EOD)<ins>]({{< ref "../../explanation/compression/index.md" >}})