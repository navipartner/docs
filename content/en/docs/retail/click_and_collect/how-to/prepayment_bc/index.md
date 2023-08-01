---
title: "Set up prepayment in Business Central"
description: "Refer to this guide to add the Click & Collect prepayment option on the POS."
lead: ""
date: 2023-07-24T11:02:21+02:00
lastmod: 2023-07-24T11:02:21+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "prepayment_bc-92f236ef1757f274299b824dbd24457b"
weight: 51
toc: true
type: docs
---

To add the Click & Collect prepayment option on the POS, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Menus**, and choose the related link.    
2. Select the menu section in which you want the button to be placed and click **Buttons** in the ribbon.
3. Click **New**, and name the button **Create Click & Collect with Prepayment**.
4. Set the **Action Type** to **Action**, and the **Action Code** to **CREATE_COLLECT_ORD**.
5. Set the following parameters should be set in **POS Parameter Values**:
   - in case of the prepayment expressed in a fixed amount
     - **Prepayment Amount Input** to **TRUE**
     - **Prompt Prepayment** to **TRUE**
   - in case of the prepayment expressed as a percentage
     - **Prepayment Amount Input** to **FALSE**
6. Specify whether there is a **Fixed Prepayment Value** in **POS Parameter Values**.
7. Open the POS, and click the newly created button.     
8. Select the customer who will perform the prepayment.    
   A pop-up window for entering the prepayment amount/percentage is displayed.
9. Enter the amount/percentage of the deposited prepayment and press **OK**.    
    The Click & Collect order has been processed.

<iframe width="560" height="315" src="https://www.youtube.com/embed/XvXVOwxP2xk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>