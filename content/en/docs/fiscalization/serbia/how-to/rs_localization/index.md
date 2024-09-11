---
title: "Set up retail localization (Serbia)"
description: "To set up retail localization compliant with Serbian fiscal laws, follow the steps provided in this article."
lead: ""
date: 2024-05-23T11:14:10+02:00
lastmod: 2024-05-23T11:14:10+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "rs_localization-a84baf75c54f6365851f4244899ad023"
weight: 818
toc: true
type: docs
---

To set up retail localization compliant with Serbian fiscal laws, follow the provided steps:

1. Go to the **RS Retail Localization Setup** page, and enable retail localization via the **Enable RS Retail Localization** toggle switch.
2. Provide the accounts for posting the **Calculated VAT** and **Calculated Margin**.
3. Set the **No. Series** for posting documents.

   ![rs_localization](Images/rs_localization.PNG)

  {{< alert icon="📝" text="RS Retail Localization enables selling goods at retail prices. Every time the retail location is included in the purchase, sales process, or a POS transaction, the calculated VAT and the calculated margin will be posted."/>}}

4. Open the adequate **Location Card** and enable the **Retail Location** toggle switch.      
   The toggle switch should be enabled on all retail locations affected by the localization.

5. Create the **Sales Price List** that will be used.      
   It's possible to  modify it until it's verified. 
6. Execute the **Verify Price List** action.      
   The starting date set in the sales price list specifies when the sales price list becomes effective, and the verified data cannot be changed. 
   
   {{< alert icon="📝" text="It's possible to have only one active price list per location. When the sales price list is verified, the previously active price list gets an ending date (which is one day before the starting date of the new price list)."/>}}

7. (Optional) You can add new items and prices to an active price list. It's necessary to verify the new price list for it to become valid, however.      
   The verification is performed via the **Verify Lines** action.
8. Mark the sales price list in use as the **Retail Price List**.

## Document nivelation (price leveling)

The nivelation document is created when the following actions are taken:

- when discounts are recorded
- when the sales price is changed

When the discount is used in the sales invoice or a POS transaction, the nivelation document will be posted.

When the item price is changed, the new price list should be created. The nivelation document is posted by choosing the **Post Nivelation Document** action.

   ![nivelation_1](Images/nivelation_1.PNG)

All posted nivelation records can be found in the **Posted Nivelation Documents** list.
