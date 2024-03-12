---
title: "Configure period registers"
description: "The POS period register is a log of all transactions performed during the work shift."
lead: ""
date: 2024-01-09T10:27:56+01:00
lastmod: 2024-01-09T10:27:56+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "period_register-d10d881968a5b01df1de374ce5a83879"
weight: 114
toc: true
type: docs
---

A POS period is initiated as soon as the POS is opened, and finalized at the end-of-day process, i.e. it corresponds to the work shift of a POS unit. The POS period register is a log of all transactions performed during that period. To configure options related to the POS period register, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Period Register List**, and choose the related link.     
   A list of all recorded POS period registers is display. Each entry comprises the transactions performed on the stated POS unit during a specified period.
2. Check the values of the following fields to see if everything is in order, and configure the editable options according to your business needs before proceeding to take any actions:      
   
| Field Name      | Description |
| ----------- | ----------- |
| **Entry No.** | Specifies the POS Period entry number. It is assigned automatically. |
| **POS Store Code**/**POS Unit No.** | Specifies the POS store/POS unit impacted by the POS period. |
| **Document No.** | If the transactions are posted in an uncompressed format, the document number can be left blank, whereas if they are posted in a compressed format (per a POS period), the document number used for posting is displayed in the POS register. |
| **From Entry No.** | Specifies the POS entry number from the beginning of the POS period, for the transaction from the POS entry table. |
| **To Entry No.** | Specifies the POS entry number at the end of the POS period, for the transaction from the POS entry table. |
| **Status** | Specifies the status o the POS unit. | 
| **Posting Compression** | Specifies the method used for compressing the posting of the transactions. |

3. Select the action you wish to take from the ones presented in the ribbon: 

| Field Name      | Description |
| ----------- | ----------- |
| **Search** | Find a specific line in the list. |
| **Post Ledger Register** | Manually post all transactions carried out within a specific period. |
| **POS Entries** | Display all posted transactions within that specific period. |
| **Find Entries** | If you've selected **Posting Compression per POS Period**, you can find the G/L entries for all transactions that are [<ins>compressed<ins>]({{< ref "../../../posting_setup/how-to/posting_compression/index.md" >}}). | 

#### See more

- [<ins>POS profile overview<ins>]({{< ref "../../../pos_profiles/intro.md" >}})
- [<ins>End-of-day profile<ins>]({{< ref "../../../pos_profiles/reference/eod_profile/eod_profile/index.md" >}})
