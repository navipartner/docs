---
title: "Perform credit sales from POS"
description: "You can create different sales documents (Invoice or Sales Order), post them automatically or manually, print them, check the customer limit, copy relevant information from the POS, and a lot more."
lead: ""
date: 2023-08-03T14:41:16+02:00
lastmod: 2023-08-03T14:41:16+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "credit_sales-4ea4ba8af8e933bcbae77c8dacda3d75"
weight: 112
toc: true
type: docs
---
Depending on the button and the action parameters set up in Business Central, you can create different sales documents (Invoice or Sales Order), post them automatically or manually, print them, check the customer limit, copy relevant information from the POS, and a lot more. 

## Perform credit sale – invoice

The following article goes through the procedure of performing credit sale with posting the invoice automatically.

### Prerequisite in Business Central

- The **Invoice Customer** [<ins>button needs to be set up<ins>]({{< ref "../../../pos_layout/how-to/new_button/index.md" >}}), and the selected sales document format needs to be **Invoice**. This is done by attaching the **SALES_DOC_EXP** action to the **Invoice Customer** POS button with the **Invoice** parameter set to **true** to make sure the invoices are posted automatically after the sale is finished. 

### Procedure on the POS

1.	Open the POS.
2.	Enter the item ID **1000** in **Item No.** box.
3.	Press **Go to Payment**.
4.	Press **Invoice Customer**.         
    A confirmation pop-up window is displayed.
5.	Press **Yes**.     
    The list of customers is displayed.
6.	Select the customer **01121212** from the list.        
    A pop-up window is displayed, notifying you that the specified dimension is about to be changed.
7.	Press **Yes**.      
    The sales invoice **1015** is created and posted as the **Posted Sales Invoice 5000004**. You can find it in the **Posted Sales Invoices** administrative section in Business Central.

## Issue credit vouchers as a refund in the return sale

This tutorial portion describes the process of issuing credit vouchers from the POS unit as a refund in the return sale process. Make sure the prerequisites are met and follow the provided steps:

### Prerequisites in Business Central

- The **Credit Voucher Retail Voucher Type** needs to be defined in the company setup.
- The **ISSUE_CREDITVOUCHER** action needs to be attached to the **Issue Credit Voucher** button.
- The **Cash Sales Reverse** button needs to be set up with the default settings.

### Procedure on the POS

1.	Open the POS.
2.	Click **Other Functions**, followed by **Return Sales**, and finally **Cash Sales Reverse**.
3.	Enter the receipt number **100096**.    
    The item from the initial sale is displayed in a POS sales line with the negative amount attached.
4.	Press **Go to Payment**.
5.	Press **Issue Credit Voucher**, and then press **Issue Credit Voucher** again.     
    A pop-up window with the automatically populated voucher amount (**5000**) is displayed. You can change the amount of the credit voucher and choose another refund payment method for the remaining amount. 
6.	Press **OK**.     
    The credit voucher is displayed in a POS payment line with the **Reference No.** **2808000106931** and the amount **5.000**.      
    The return sale is complete, and the credit voucher issued. 

## Issue a credit voucher when the sale is lower than the gift voucher amount

The following guide refers to the gift voucher **2904100108599** of **6.000** used for a sale of **5.000**. Make sure that the prerequisites are met and follow the provided steps:

### Prerequisites in Business Central

- The **Retail Voucher Type** needs to be defined in the company setup so that there are **Credit Voucher** and **Gift Voucher** types.
-The credit voucher needs to be set up as a return voucher for **Gift Vouchers** which can’t be used partially. This gift voucher type is attached to the **Scan Retail Gift Voucher – Full Redeem** button.

### Procedure on the POS

1.	Open the POS.
2.	Enter the item ID **1000** in **Item No.** box.
3.	Press **Go to Payment**.
4.	Press **Redeem Gift Voucher**, followed by **Scan Retail Gift Voucher – Full Redeem**.     
    The **Retail Voucher Payment** pop-up window is displayed.
5.	Enter the **Reference No. 2904100108599**.
6.	Press **OK**.      
    The gift voucher is displayed in the **POS Payment Lines** and the **Issue Return Retail Voucher** pop-up window is displayed with the remaining amount of **1.000** populated by default.
7.	Press **OK**.   
    The credit voucher is displayed in the **POS Payment Lines** with the **Reference No. 2807000109690** and the Amount **1.000**.    
    The sale is complete, and the credit voucher is issued.


