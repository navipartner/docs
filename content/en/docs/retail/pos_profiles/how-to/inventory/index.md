---
title: "Set up POS Inventory Profile"
description: "The POS Inventory Profile is used for configuring stockout warnings on the POS."
lead: ""
date: 2023-07-05T10:38:48+02:00
lastmod: 2023-07-05T10:38:48+02:00
draft: false
images: []
menu:
  docs:
    parent: "pos_profiles"
    identifier: "inventory-ca6eeeaf3e7eadc7201b7f04111bb3dc"
weight: 121
toc: true
type: docs
---

The POS Inventory Profile is used for configuring stockout warnings on the POS. To create a POS inventory profile, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Inventory Profiles**, and choose the related link.
2. Create **New**.
3. Insert a **Code** and a **Description**. 
4. Tick the **Stockout Warning** checkbox if you wish the salesperson to be warned when a sales line brings the inventory level below 0.     
    If an attempt is made to end the POS sale, a confirmation message is displayed to notify the salesperson that the item stock has been depleted after the sale is completed. You can also see the availability of these items in other locations. 

{{< alert icon="📝" text="It's possible to attach the <b>Item Availability</b> action to a button on the POS. This action is used for checking the inventory status for all items included in the ongoing POS sale."/>}}

## Additional setup - Stockout warning

You can modify the default behavior of the stockout warning functionality in the **Sales & Receivables Setup** administrative section. If the **Stockout Warning** toggle switch is enabled, the warning is displayed whenever the stock level of any item in the system has been depleted.

It is also possible to change the behavior of stockout warnings on specific items. This can be done for each item individually, in their respective **Item Cards**. By default, this value is taken from the **Sales & Receivables Setup** administrative section.

![stockout_warning](Images/stockout_warning.PNG)

Additionally, each user can turn off warnings for low item availability on their **My Notifications** page in Business Central. This does not disable the **Availability Check Details** confirmation message that is displayed on attempt to end a POS sale if the quantity of one or more items included in the sale is lower than required.