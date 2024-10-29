---
title: "Perform different payment operations"
description: "There are many variations to the basic POS payment process. Refer to these tutorials for more information."
lead: ""
date: 2023-08-03T14:18:46+02:00
lastmod: 2023-08-03T14:18:46+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "payment_operations-e74fa78a6d1fb7d978be2e333a2dc5da"
weight: 112
toc: true
type: docs
---

There are many variations to the basic POS payment process. Some of them are outlined in this tutorial portion.

## Apply payments to open sales documents on the POS 

Apply the payment via the POS to open sales documents, in order to allow the customers to pay for invoices with cash, vouchers, or via a payment terminal. 

#### Prerequisites

- Have a button set up with POS action **CUSTOMER_DEPOSIT** that has the **Deposit Type** parameter set to **Apply Customer Entries**. 
- Have a customer with at least one open customer ledger entry. 

#### Procedure

1. Open the POS. 
2. Press **Customers**.     
   The menu with customer functions is displayed. 
3. Press **Payment from Customer for Applying Invoices**.     
   The list of customers is displayed. 
4. Find and select the customer that will reconcile a sales document, then press **OK**.    
   The list of all open customer ledger entries for the selected customer is displayed. 
5 Find the sales document that the customer wants to settle.     
1. Input the amount that the customer needs to pay in the **Amount to Apply** field. 
2. Press **OK** to create a sales line on the POS with the input amount. 
3. Press **Go to payment**. 
4. Finish the sale by pressing the **Cash Payment** button. 
5.  Confirm the amount in the **Cash** pop-up window.     
    When the POS entry has been posted, you will see that the customer ledger entry is closed with this payment. 

## Accept customer deposits from the POS

The deposits are tied to the customer’s balance and can be applied to past and future sales documents in Business Central. Follow the provided steps to accept customer deposits from the POS:

#### Prerequisites

- Have a button set up with the **CUSTOMER_DEPOSIT** POS action that has the **Deposit Type** parameter set to **Amount Prompt**. 
- Have a customer with a valid posting setup. 

#### Procedure

1. Open the POS. 
2. Press **Customers** to open the menu with customer functions.     
   The **Customer Menu** window is displayed. 
3. Press **Payment from the Customer for Deposit**. 
4. Input the amount that the customer wants to deposit in the dialog box and press **OK**.    
   The **Customers** window is displayed. 
5. Select the customer from the customer list. 
6. Press **OK** to create a sales line on the POS with the input amount. 
7. Press the **Go to payment** button. 
8. Finish the sale by pressing the **Cash Payment** button.     
   When the POS entry has been posted, you’ll be able to see the payment in the customer's ledger entries as an open payment. 

## Pay-out/Pay-in from the POS 

This topic describes the process of taking cash out of and putting it into the payment bin attached to the POS unit. 

Both pay-out and pay-in operations create general ledger entries on a selected G/L account. 

These features are used when the salespeople need cash in-hand to pay for products/services for the store/employees, and when there is leftover cash that needs to be put back into the POS payment bin.  

For instance, you can use Pay-out when there is an immediate need to buy office or cleaning supplies, or if an employee is sent to buy lunch on the store’s budget. If there is any leftover cash, then the Pay-in button can be used to put the money back into the payment bin. 

To use the pay-out and pay-in functionalities, make sure the prerequisites are met, and follow the provided steps: 

#### Prerequisites

- Have two buttons set up with **PAYMENT_PAYIN_PAYOUT** POS action and the **Type of payment** parameter set as **Pay Out** and **Pay In** respectively.  
- Have **General Ledger Accounts** set up with the **Retail Payment** activated. 

### Pay-out procedure

1. Open the POS. 
2. Press **Other Functions**.     
   The table with available functions is displayed. 
3. Press **Pay-Out**. 
4. Input the amount that you want to take from the payment bin and press **OK**. 
5. Select the G/L account **Office Supplies**. 
6. Finish the sale with the **Cash** payment method to take out money. 

### Pay-in procedure

1. Open the POS. 
2. Press **Other Functions**. 
3. Press **Pay-In**. 
4. Input the amount that you want to put into the payment bin, i.e., the leftover cash from a previous pay-out, and press **OK**. 
5. Select the **Office Supplies** G/L account. 
6. Finish the sale with Cash payment method. 

## Create a sales order with prepayment

This article describes the process of creating sales orders with prepayment. It is a type of a credit sale defined via buttons and the action parameter setup. 

#### Prerequisites

- Create a **Sales Order** button set in the **Menu Buttons Setup** so that the sales document is **Order**, and the action parameter of the document type is set to **Order**. 
- The prepayment pop-up window needs to be enabled, and the **Shop Payment Menu** parameter needs to be set to **true**.

#### Procedure

1.	Open the POS.
2.	Enter the item ID **1000** in **Item No.** box.
3.	Press **Go to Payment**.
4.	Click **Create Sales Order**.     
    A confirmation pop-up window is displayed.
5.	Press **Yes**.     
    The list of customers is displayed.
6.	Choose the customer **10000** from the list.     
    A pop-up window notifying you that the specified dimension is about to change is displayed.
7.	Press **Yes**.     
    A pop-up window in which you can select the document payment is displayed.
8.	Press **Prepayment Percent** and confirm.    
    The **Prepayment** pop-up window is displayed.
9.	Enter **15** and press **OK**.       
    The prepayment amount of **750** and **Order No. 101025** are displayed in the **POS Sales Lines**.
10.	Press **Go to Payment**, and then press **Cash Payment**.     
   **Sales Order 101025** is created, and the prepayment posted.



## Park a sale from the POS (save/retrieve sale)

The Park Sale feature gives you the option to quickly save and later retrieve the same sale when a customer needs to delay finishing the sale, and you want to process another sale in the meantime.  
 
Some of the most common situations leading to saving the sales are: 

- the customer is missing items on the purchase needs to peruse the store again.  
- the customer has forgotten their wallet/phone in the car. 

To park a sale from the POS, make sure the prerequisite is met, and follow the provided steps: 

#### Prerequisite

- Have a button on the POS configured with the POS action **SAVE_AS_POS_QUOTE**. 

#### Procedure

1. Open the POS. 
2. Press **Test Items**.    
   A table with available items is displayed. 
3. Select the **Tommy Hilfiger Gingham Shirt** item.     
   The **Item Variants Lookup** window is displayed. 
4. Select the size and color, then press **OK**.  
5. Press **Park Sale**.    
   A pop-up window for confirming the sale delay is displayed. 
6. Confirm that you want to save the sale. 

## Retrieve a parked sale from the POS

To retrieve a parked sale from the POS, make sure the prerequisite is met, and follow the provided steps: 

#### Prerequisite

- Have a button on the POS configured with the POS action **LOAD_FROM_POS_QUOTE**. 

#### Procedure

1. Open the POS. 
2. Navigate to the **Sales View**. 
3. Press **Retrieve Parked Sale**.     
   The **POS Saved Sales** window is displayed. 
4. Select the sale from the list and press **OK**.     
   The parked sale is previewed in a new window. 
5. Press **OK**.   
   The sale is transferred to the sales lines. 