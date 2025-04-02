---
title: "Perform different payment operations"
description: "There are multiple ways to process payments through the POS system. This section outlines how to apply payments to open sales documents, accept customer deposits, perform pay-out/pay-in operations, create sales orders with prepayments, and park sales for later retrieval."
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

There are multiple ways to process payments through the POS system. This section outlines how to apply payments to open sales documents, accept customer deposits, perform pay-out/pay-in operations, create sales orders with prepayments, and park sales for later retrieval.

## Apply payments to open sales documents on the POS 

Payments can be applied to open sales documents, allowing customers to pay invoices using cash, vouchers, or a payment terminal.

#### Prerequisites

- Have a button set up with POS action **CUSTOMER_DEPOSIT** that has the **Deposit Type** parameter set to **Apply Customer Entries**. 
- Have a customer with at least one open customer ledger entry. 

#### Procedure

1. Open the POS. 
2. Select **Customers** to display customer functions.     
3. Choose **Payment from Customer for Applying Invoices**.     
   The list of customers is displayed. 
4. Find and select the customer that will reconcile a sales document, then press **OK**.    
   The list of all open customer ledger entries for the selected customer is displayed. 
5. Find the sales document that the customer wants to settle, and enter the amount to be applied in the **Amount to Apply** field.     
6. Press **OK** to create a sales line for the applied amount. 
7. Proceed to payment by selecting **Go to payment**. 
8. Finalize the sale by selecting **Cash Payment** and confirming the amount. 
   Once the transaction is posted, the customer ledger entry is closed. 

## Accept customer deposits from the POS

Customer deposits can be recorded through the POS and later applied to past or future sales documents in Business Central. Follow the provided steps to accept customer deposits from the POS:

#### Prerequisites

- Have a button set up with the **CUSTOMER_DEPOSIT** POS action that has the **Deposit Type** parameter set to **Amount Prompt**. 
- Have a customer with a valid posting setup. 

#### Procedure

1. Open the POS. 
2. Select **Customers** to display customer functions.     
   The **Customer Menu** window is displayed. 
3. Choose **Payment from the Customer for Deposit**. 
4. Enter the deposit amount in the dialog box and press **OK**.    
   The **Customers** window is displayed. 
5. Select the customer from the displayed list. 
6. Confirm by selecting **OK**, creating a sales line with the deposit amount. 
7. Press the **Go to payment** button. 
8. Complete the transaction by selecting **Cash Payment**.     
   Once posted, the payment appears in the customer's ledger entries as an open payment.

## Pay-out/Pay-in from the POS 

The Pay-Out and Pay-In functions allow cash to be taken from or added to the POS payment bin. These operations create general ledger entries.

- Pay-Out is used when store employees need cash for immediate purchases, such as office supplies.
- Pay-In is used to return leftover cash to the payment bin.

To use the pay-out and pay-in functionalities, make sure the prerequisites are met, and follow the provided steps: 

#### Prerequisites

- Have two buttons set up with **PAYMENT_PAYIN_PAYOUT** POS action and the **Type of payment** parameter set as **Pay Out** and **Pay In** respectively.  
- Have **General Ledger Accounts** set up with the **Retail Payment** activated. 

### Pay-out procedure

1. Open the POS. 
2. Press **Other Functions**.     
   The table with available functions is displayed. 
3. Press **Pay-Out**. 
4. Enter the amount to withdraw, and select **OK**. 
5. Select the appropriate G/L account, such as **Office Supplies**. 
6. Finalize the transaction using **Cash** payment. 

### Pay-in procedure

1. Open the POS. 
2. Press **Other Functions**. 
3. Press **Pay-In**. 
4. Enter the amount to return to the payment bin and select **OK**. 
5. Select the appropriate G/L account. 
6. Finalize the transaction using **Cash** payment. 

## Create a sales order with prepayment

Sales orders with prepayments allow customers to partially pay for an order upfront. To create a sales order with prepayment, make sure the prerequisites are met, and follow the provided steps:

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

The Park Sale feature allows sales to be temporarily saved and retrieved later. This is useful when a customer needs more time before completing the transaction.
 
Common scenarios:

- The customer forgot an item and needs to browse the store again.  
- The customer left their wallet or phone in their car. 

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