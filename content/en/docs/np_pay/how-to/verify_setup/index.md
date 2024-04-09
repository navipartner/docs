---
title: "Verify NP Pay setup"
description: "There is a POS action EFT_OPERATION_2, which can be used to perform different functions on different terminals. These actions include reconciling the terminal, downloading/checking for updates, and checking connection or voiding the previous transactions."
lead: ""
date: 2024-04-09T10:12:51+02:00
lastmod: 2024-04-09T10:12:51+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "verify_setup-bdcba0054ae5cdb1cc0066b4d7398186"
weight: 681
toc: true
type: docs
---

You can test the connection to different endpoints through the POS integration. This method is useful when you need to determine the origin of potential connection issues between NP Pay and the terminal.

#### Prerequisites

- Have an **EFT Setup** with the **T** payment type which uses NP Pay as the service provider. 

#### Procedure

1. Open the POS unit on which you wish to add the button.
2. Open the POS editor by pressing the <image src="Images/cog.PNG" width="30" height="30"> icon.    
   The edit mode is enabled.
3. Press the cell in the **SALE-LEFT** part of the POS screen in which you wish to place the button, followed by **Edit** in the dropdown.
4. Add the **Caption**, and open the **Action** dropdown list.
5. Search for the *EFT_OPERATION* and select the **EFT_OPERATION_2** action code.       
6. Click the <image src="Images/edit_icon.PNG" width="30" height="30"> button next to **Variables** to edit the parameters.     
   The **POS Parameter Values** window is displayed.
7. Choose **ADYEN_CLOUD** in the **Value** column for the **EFT Type** parameter.
8. Choose **Verify Setup** in the **Value** column for the **Operation Type** parameter.      
   Since this is one of the generic **Operation Types** that works with **ADYEN_CLOUD**, there will be no need to clarify further with the **Auxiliary Id**. 
9.  Add **T** in the **Value** column for the **Payment Method** parameter.     
10. Press **Save**, and exit the edit mode.     
    The button is now available on the POS.