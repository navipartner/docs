---
title: "Set up POS Payment Bins"
description: "Each POS unit can have multiple payment bins and different setup. You can set cash drawers and virtual drawers."
lead: ""
date: 2023-07-11T12:42:24+02:00
lastmod: 2023-07-11T12:42:24+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "payment_bins-bf40bb8445d6e43d7a0e1f1584ddfc27"
weight: 127
toc: true
type: docs
---

Each POS unit can have multiple payment bins and different setup. You can set cash drawers and virtual drawers.

## Create cash drawers/banks/safes

To create cash drawers, banks, or safes, follow the provided steps:

1.  Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Payment Bins** and open the related link.
2. Create **New**.
3. Add a number of cash drawers in the **No.** field.
4. Add **Description** (e.g. *Cash Drawer*)
5. Choose the POS store and POS unit that will have the cash drawer in the **POS Store** and **POS unit** fields.
6. Select **Cash Drawer** in the **Bin Type** dropdown.   

{{< alert icon="📝" text="For the <b>Bin Type</b> there are also <b>Bank</b> and <b>Safe</b> options that have the same function as the <b>Cash Drawer</b>. If you need to create a bank, or a safe instead of a cash drawer, choose one of those options instead."/>}}

7. In the **Eject Method** field set **TEMPLATE** as the method in which the cash drawer will be ejected.     
    After selecting the template eject method, the **Eject Method Parameters** need to be set.
8. Click **Eject Method Parameters**.     
    **Name**, **Description**, and **Data Type** are automatically populated.  
9. Set the value to **EPSON_CASH_DRAWER**.

## Create virtual bins

To create virtual bins, follow the provided steps:

{{< alert icon="💡" text="Virtual bins are used for payment by card."/>}}

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Payment Bins** and open the related link.
2. Create **New**.
3. In the **No.** field add *Auto_Bin*.
4. Add **Description** (e.g. *Virtual Bin*).
5. Choose the POS store and POS unit that will have the cash drawer in the **POS Store** and **POS unit** fields.
6. Select **Virtual** in the **Bin Type** dropdown.

<iframe width="560" height="315" src="https://www.youtube.com/embed/Lo2OjMXLJQg" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Next steps

### POS Posting setup

Each cash drawer or virtual drawer can be posted on a different G/L account.

1. Open the **POS Posting Setup**
2. Select the **POS Store Code**.
3. Select the **POS Payment Method Code**.
4. Add an **Account**.

![POS_GL](general.png)