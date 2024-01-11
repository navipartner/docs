---
title: "Transfer and post stock-take worksheet"
description: "Once the worksheet has been completed and corrected, you need to transfer it to the Item Journal, and post it."
lead: ""
date: 2023-07-06T15:33:57+02:00
lastmod: 2023-07-06T15:33:57+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "transfer_post_stocktake-ebd79c5933fb427aa3389e85b7f7668c"
weight: 197
toc: true
type: docs
---

Once the setup has been completed, you can complete the stock-take transfer. The main focus and goal of the stock-take functionality is for the **Counted** (physical, on-hand inventory) quantity and the **Calculated** (system) quantity to be transferred to the **Physical Inventory Journal** to check whether there are some discrepancies between the two. The counted quantity is established with the stock-take worksheet, while the calculated quantity originates from the **Item Ledger Entries**.

#### Prerequisites

- [<ins>Create an item journal template<ins>]({{< ref "../item_journal_template/index.md" >}})
- [<ins>Configure the stock-take<ins>]({{< ref "../stocktake_config/index.md" >}})
- [<ins>Create a stock-take worksheet<ins>]({{< ref "../stocktake_worksheet/index.md" >}})

#### Procedure

1. To initiate this process, set the stock-take worksheet's status to **Ready to Transfer** in the relevant **Stock-Take Worksheet** card.
2. Mark all lines, and click **Line** in the ribbon of the **Stock-Take Worksheet Line** panel, followed by **Set Transfer Option to Ready**.   

    {{< alert icon="📝" text="It's recommended to match the Posting Date with the Inventory Calculation Date."/>}}

3. Click **Calc. Inventory and Transfer** in the **Actions** dropdown.      
   When completed, a confirmation message is displayed. 

{{< alert icon="📝" text="Any errors during the process will result in a complete rollback, and all changes will be reverted."/>}}

4. If the **Transfer Action** in the relevant **Stock-Take Configuration Card** is set to **Transfer**, you also need to manually post the inventory journal.   
   In the provided example, certain items weren't counted, as per the applied configuration.

    ![stock_take_configuration_card_posting](stock_take_configuration_card_posting.png)

5. Accept the current stock level for items that weren't counted. 
6. Adjust the negative stock values to zero. 
   
    {{< alert icon="📝" text="In the provided example, <b>Suppress Not Counted</b> is false, so the description is modified."/>}}

7. Adjust the items that have been counted. 
8. Navigate to the **Physical Inventory Journals** administrative section, and select the line you wish to post.
9. Click **Actions**, followed by **Post** or **Post and Print**.     
    The standard **Test Report** should be used to document the deviations and the corresponding values.      

    ![inventory_posting_results](inventory_posting_results.png)

    If you navigate back to the **Stock-Take Worksheet**, you'll find that the worksheet status has been updated to **Complete**, and that all worksheet lines are set to **Transferred**.