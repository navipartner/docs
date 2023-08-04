---
title: "Change a bin from the POS sale"
description: "Bins represent physical shelves and rows in which the shop's inventory is stored. If there are multiple bins in a single store location, you can choose which bin the item is taken from during the POS sale."
lead: ""
date: 2023-07-11T12:30:04+02:00
lastmod: 2023-07-11T12:30:04+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "change_bin-3ef2997c4e96fef74a2d23d49a0f37e4"
weight: 26
toc: true
type: docs
---

Bins represent physical shelves and rows in which the shop's inventory is stored. If there are multiple bins in a single store location, you can choose which bin the item is taken from during the POS sale.

## Prerequisites

- Add the **Change Bin** [button to the POS menu]({{< ref "../../../pos_layout/how-to/new_button/index.md" >}}) you want it to be displayed in.       
  The action you need to attach to the button is **CHANGE_BIN**.

## Procedure

1. Click **POS** in the Role Center's ribbon, followed by **Open POS**.     
   The POS login screen is displayed.
2. Enter the **Salesperson Code** in the provided field to log in.
   The button to which the **CHANGE_BIN** action is attached can be found in the menu you've previously placed it in.
3. Select the item you wish to purchase, then select its variant, and click **OK**.
4. Click the **CHANGE_BIN** button, then select the bin you wish to take it from, and click **OK**.   
5. Finalize the sale. 