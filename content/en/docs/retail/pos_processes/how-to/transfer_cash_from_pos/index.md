---
title: "Transfer cash from a POS unit to a safe"
description: "Given the cash is stored in the POS unit, the transfer process is initiated from it, as well, whereby the supervisor takes the cash out of the register, and transfers it into the safe."
lead: ""
date: 2023-09-21T10:27:29+02:00
lastmod: 2023-09-21T10:27:29+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "transfer_cash_from_pos-f6520aa925c4f5b5fab4b4adf7b51200"
weight: 113
toc: true
type: docs
---

Given the cash is stored in the POS unit, the transfer process is initiated from it, as well, whereby the supervisor takes the cash out of the register, and transfers it into the safe. You can use the **POS Payment Bin Transfer Journal** to perform the transaction. There are some prerequisites that need to be set up in Business Central however.

To transfer cash from a POS unit to a safe, follow the provided steps:

## Prerequisite in Business Central

- Create a [new POS menu button]({{< ref "../../../pos_layout/how-to/new_button/index.md" >}}).      
  The **POS Action** attached to this button should be **RUNPAGE**, with the page **6151240** selected in the **Page ID** entry of the action's **Parameter Values**.

   ![transfer_from_pos_parameters](Images/transfer_from_pos_parameters.png)

## Procedure on POS

1. Open the POS.
2. Click the previously created button that has the **RUNPAGE** action attached to it.      
   The POS Payment Bin Transfer Journal page is displayed, and you can fill in the required details.

| Field Name      | Description |
| ----------- | ----------- |
| **Store Code** | Specifies from which store the transfer is performed. |
| **Received From POS Unit Coe** | Provide the code of the POS unit from which the cash is taken out. |
| **Transfer From Bin Code** | Provide the code of the payment bin from which the cash is taken out. |
| **Receive at POS Unit Code** | Leave this field blank, as you aren't sending money to other POS units in this scenario. |
| **Transfer to Bin Code** | Set the bin code to **SAFE**. | 
| **Payment Method** | Specifies the method of payment that will be transferred. | 
| **Amount** | Specify the amount that will be transferred. | 
| **External Document No.** |  You can provide an additional reference number, if needed. | 
| **Has Denominations** | You can specify the denominations used for sorting the amount that is transferred. | 

3. **Release** the journal. 

## Procedure in Business Central

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Payment Bin Transfer Journal**, and choose the related link or go to the **POS Payment Bins** page, and open the **POS Payment Bin Transfer Journal** from there.    
   You can see the journal that awaits processing with the **Released** status. 
2. Verify the cash received to make sure the denominations and the total amount are in accordance with the **POS Payment Bin Transfer Journal**.
3. When you accept the cash and acknowledge it, click **Receive**.     
   The journal is posted.       

You can view the posted entry by clicking **Posted POS Payment Bin Entries** in **POS Payment Bin Transfer Journal** in Business Central.

![transfer_from_pos_results](Images/transfer_from_pos_results.png)

You can also navigate from the **Posted POS Payment Bin Entries** further to the **POS Bin Entries** and the **G/L Entries**.

![transfer_from_pos_results2](Images/transfer_from_pos_results2.png)

## Alternative process for transferring cash from a POS unit to a safe

It is also possible to create a POS menu button with a different action attached, to achieve the same result. 

## Prerequisite in Business Central

- Use the **BIN_TRANSFER** action when creating a button, instead of **RUNPAGE**. Just make sure that the **Transfer Direction** POS parameter is set to **Transfer Out**. This way, you will receive an option to transfer the cash out to either a bank or a safe on the POS.

  ![transfer_parameters](Images/transfer_parameters.png)

## Procedure on POS

1. Open the POS. 
2. Click the POS menu button you've previously defined.   
   You will be prompted to select the denominations that will be moved.
3. Input the amount that you wish to transfer to the safe, and proceed with the transfer.     
   When the transfer is completed, you will be prompted to post the transaction.

You can see a new POS entry in the **POS Entry List** in Business Central, from which you can navigate further to the **Balancing Lines** and the **G/L Entries**.

![alternative_result](Images/alternative_result.png)