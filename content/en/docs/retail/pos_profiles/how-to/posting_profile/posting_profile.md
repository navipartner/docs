---
title: "Set up POS Posting Profile"
description: "Each POS unit can have a different set of posting rules. The first thing is to set POS Posting Profile."
lead: ""
date: 2023-07-04T12:40:11+02:00
lastmod: 2023-07-04T12:40:11+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "posting_profile-f697d3c2bd6aac93b4fc55a5beaf0f58"
weight: 121
toc: true
type: docs
---

Each POS unit can have a different set of posting rules. The first thing is to set POS Posting Profile.

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Posting Profile**, and choose the related link.
2. Create **New**.
3. Add the **Code** in the indicated field.
4. Add a **Description**.
5. Make a selection between **Store** and **Customer** in the **Default POS Posting Setup** field.   
   Your choice determines whether rules will apply to the POS store or customers.
6. Set the value of the **Source Code** field to **Retail**.
7. Set the predefined posting group in the field **General Business Posting Group**. 
8. Set the predefined VAT posting group in the **VAT Business Posting Group** field.
9. (Optional) If the posting profile is set up for the US localization, populate the **Tax Area Code** and **Tax Liable** fields.
10. (Optional) If the posting to the General Ledger is done by posting the period compression, populate the **POS period Register No. Series** field.
11. (Optional) If a customer is assigned to a specific POS store, populate the **VAT Customer No.** field.
12. Define how the POS entries will be posted in **G/L Posting Compression**.     

      | Field Name      | Description |
      | ----------- | ----------- |
      | **Uncompressed** | Every POS entry line is posted as-is in the General Ledger (one posted line per a transaction line). |
      | **Per POS Entry** | The lines are compressed per an account code within that entry. </br> *Example:* If you have 2 lines that use the same sales account and same dimensions, they will be compressed into 1 entry in the **General Ledger Entries** for that POS entry. |
      | **Per POS Period** | All transactions within that POS period are compressed per the same General Ledger account. </br> *Example:* If you have 50 lines using the same sales account and same dimensions, they will be compressed into 1 entry in the **General Ledger Entries** for that **POS Period** of that POS unit.     |

13. Choose between **POS Entry No.** and **POS Period Register No.** in **Item Ledger Document No.**.        
    This option specifies which document number is going to be used when creating item ledger entries from POS entries. 
14. Choose whether you want external sales to be fetched and processed in the POS entry via the **Auto Process External POS Sales** toggle switch.     
    This option uses the NaviConnect import type *EXPOSSALES*.
15. Specify the value of the **Journal Template Name**, which will be assigned to **General Journal Lines** in the POS Posting activity.
16. You can associate a **Sales Channel** with the table *6060086 "NPR MM Loyalty Sales Channel"*.      
    This field is used to a assign the sales channel when you decide to grant loyalty points to customers from a certain POS. 
17. Use the **Max POS Posting Differences** field to define the maximum allowed difference caused by the difference between currencies.
18. Define the G/L account on which these differences will be posted in **Difference Account**.
19. Use the **POS Sales Rounding Account** field to define the G/L account in which all sales rounding amounts will be posted.
20. Define on which decimal spaces the rounding will be performed in the **POS Sales Amount Rounding** field.
21. Define how the rounding will be performed in **Rounding Type**.    
    The possible settings are **Nearest**, **Up** or **Down**.
22. Use the following job queues for background posting: **NPR POS Post Item Entries JQ**, **NPR POS Post G/L Entries JQ**, and **Post POS Sale Documents JQ**.     
    These job queues allow the salesperson to continue with the work while the sales are being posted in the background.


## Next steps

### Add the POS Posting Profile to the POS Store

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Store List** and choose the related link.
2. Select the POS store to which you want to link the prepared POS Posting Profile.
3. Add the prepared POS Posting Profile to the **POS Posting Profile** field.

<iframe width="560" height="315" src="https://www.youtube.com/embed/NACqyx-5Jc4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

#### See also

- [<ins>Posting setup breakdown<ins>]({{< ref "../../../posting_setup/intro.md" >}})
- [<ins>Posting compression (EOD)<ins>]({{< ref "../../../posting_setup/explanation/compression/index.md" >}})
- [<ins>Posting priority rules<ins>]({{< ref "../../../posting_setup/explanation/posting_priority_rule/index.md" >}})
- [<ins>Posting setup<ins>]({{< ref "../../../posting_setup/explanation/pos_posting_setup/index.md" >}})