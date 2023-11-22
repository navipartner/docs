---
title: "Set up EFT operations"
description: "These actions include reconciling the terminal, downloading/checking for updates, and checking connection or voiding the previous transactions. To set them up, refer to this guide."
lead: ""
date: 2023-07-06T09:37:08+02:00
lastmod: 2023-07-06T09:37:08+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "eft_ops-6947c54206fc15c0c0eaa129b3cd87f4"
weight: 216
toc: true
type: docs
---

In the **POS Menu** there is a POS action **EFT_OPERATION_2**, which can be used to perform different functions on different terminals. These actions include reconciling the terminal, downloading/checking for updates, and checking connection or voiding the previous transactions.

## Set up NETS_BAXI_NET to reconcile the terminal in SALE-LEFT

The Viking/BAXI integration requires terminals to be reconciled to send the transactions to NETS. The terminals can either be reconciled automatically with the End-of-Day process or you can do so manually with the button functionality.

### Prerequisite

- Have an **EFT Setup** with the **T** payment type using the NETS_BAXI_NET EFT integration type.

### Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Menus**, and choose the related link.         	
2.	Select **SALE-LEFT** and press **Buttons**.
3.	Go to a new line and fill in **Caption** to **Reconcile Terminal**.
4.	In the **Action Type** dropdown select **Action**.
5. In **Action Code** click ![Elipsis icon](elipsis_icon.png) to open the available **POS Actions**, search for **EFT_OPERATION** and select the **EFT_OPERATION_2** POS action.
6. With the line selected open the **Parameters** through the **Home** menu.
7.	In **EFT Type** on the Value column click ![Elipsis icon](elipsis_icon.png) and select **NETS_BAXI_NET** in the pop-up.
8.	In **Operation Types** in the **Value** column press ![Elipsis icon](elipsis_icon.png) and select **Auxiliary Operation**.
The Operation Types are available for all integrations, although they may not be functional for specific use cases. 
9.	In the **Auxiliary ID** in the **Value** column click ![Elipsis icon](elipsis_icon.png) and select **4 Reconciliation**.
10.	In **Payment Method** in the **Value** column click ![Elipsis icon](elipsis_icon.png) and select **T**.       
    The button is now available on the POS.

![eft_payment_types_baxi](eft_payment_types_baxi.PNG)

## Set up button for ADYEN_CLOUD to verify setup and check connection in SALE-LEFT

The [<ins>Adyen Cloud integration<ins>]({{< ref "../adyen/index.md" >}}) contains a function for testing the connection to the different endpoints through the POS integration. This can sometimes be used to determine the origin of potential connection issues between POS, Adyen Cloud and the Terminal.

### Prerequisites

- Have an **EFT Setup** with the **T** payment type which uses the [<ins>**ADYEN_CLOUD EFT**<ins>]({{< ref "../adyen/index.md" >}}) integration type. 

### Procedure

1.	Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Menus**, and choose the related link.         	
2. Select **SALE-LEFT** and click **Buttons**.
3. Go to a new line and fill in **Caption** to **Check Terminal Connection**.
4. In the **Action Type** dropdown select the **Action** type.
5. In **Action Code** click ![Elipsis icon](elipsis_icon.png) to open the available **POS Actions**, search for **EFT_OPERATION** and select the **EFT_OPERATION_2** POS action.
6. With the line selected, open the **Parameters** through the **Home** menu.
7. In **EFT Type** on the **Value** column press ![Elipsis icon](elipsis_icon.png) and select **ADYEN_CLOUD** in the pop-up.
8. In **Operation Type** in the **Value** column click ![Elipsis icon](elipsis_icon.png) and select **Verify Setup**.      
    Since this is one of the generic **Operation Types** that works with **ADYEN_CLOUD**, there will be no need to clarify further with the **Auxiliary Id**.
9.  In **Payment Method** in the **Value** column click ![Elipsis icon](elipsis_icon.png) and select **T**.      
    The button is now available in the POS.

## Set up button for ADYEN_CLOUD to void last transaction

There are many scenarios in which you may want to void/cancel the previous transaction, for example, the salesperson can put in an incorrect amount. In these situations, it may be best to void the entire transaction and repeat it with the correct amount.

### Prerequisites

- Have an **EFT Setup** with the **T** payment type, using the **EFT Integration Type NETS_BAXI_NET**.

### Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Menus**, and choose the related link.
2. Select **SALE-LEFT** and click **Buttons**.
3. Go to a new line and fill in **Caption** to reconcile the terminal.
4. In the **Action Type** dropdown select the **Action** type.
5. In **Action Code** click ![Elipsis icon](elipsis_icon.png) to open the available **POS Actions**, search for **EFT_OPERATION** and select the **EFT_OPERATION_2 POS Action**.
6. With the line selected open the **Parameters** through the **Home** menu.
7. In **EFT Type** in the **Value** column click ![Elipsis icon](elipsis_icon.png) and select **NETS_BAXI_NET** on the pop-up.
8. In **Operation Type** in the **Value** column click ![Elipsis icon](elipsis_icon.png) and select **Auxiliary Operation**.
9. In **Auxiliary Id** in the Value column click ![Elipsis icon](elipsis_icon.png) and select **4 Reconciliation**.
10. In **Payment Method** in the **Value** column click ![Elipsis icon](elipsis_icon.png) and select **T**.        
    The button is now available in the POS. 
