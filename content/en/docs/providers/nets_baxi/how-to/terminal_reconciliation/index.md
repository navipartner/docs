---
title: "Set up NETS_BAXI_NET to reconcile the terminal in SALE-LEFT"
description: "There is a POS action EFT_OPERATION_2, which can be used to perform different functions on different terminals. These actions include reconciling the terminal, downloading/checking for updates, and checking connection or voiding the previous transactions."
lead: ""
date: 2024-04-09T10:31:32+02:00
lastmod: 2024-04-09T10:31:32+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "terminal_reconciliation-35cacf644569c190f92fde0c6e194ddf"
weight: 664
toc: true
type: docs
---


The Viking/BAXI integration requires terminals to be reconciled to send the transactions to NETS. The terminals can either be reconciled automatically with the balancing process or you can do so manually with the button.

#### Prerequisite

- Have an **EFT Setup** with the **T** payment type using the **NETS_BAXI_NET** EFT integration type. 

#### Procedure

1. Open the POS unit on which you wish to add the button.
2. Open the POS editor by pressing the <image src="Images/cog.PNG" width="30" height="30"> icon.    
   The edit mode is enabled.
3. Press the cell in the **SALE-LEFT** part of the POS screen in which you wish to place the button, followed by **Edit** in the dropdown.
4. Add the **Caption**, and open the **Action** dropdown list.
5. Search for the *EFT_OPERATION* and select the **EFT_OPERATION_2** action code.       
6. Click the <image src="Images/edit_icon.PNG" width="30" height="30"> button next to **Variables** to edit the parameters.     
   The **POS Parameter Values** window is displayed.
7. Choose **NETS_BAXI_NET** in the **Value** column for the **EFT Type** parameter.
8. Choose **Auxiliary Operation** in the **Value** column for the **Operation Type** parameter.      
   The operation types are available for all integrations, although they may not be functional for specific use cases. 
9. Add **4** (Reconciliation) in the **Value** column for the **Auxiliary ID** parameter. 
10. Add **T** in the **Value** column for the **Payment Method** parameter.     
11. Press **Save**, and exit the edit mode.     
    The button is now available on the POS.

![eft_payment_types_baxi](eft_payment_types_baxi.PNG)