---
title: "Create a voucher on a Sales Order"
description: "A retail voucher is a document that entitles the owner to purchase goods or services with it. As such, it can take the form of paper, electronic vouchers, tokens, and so on. It is widely used in the Retail & Service industries."
lead: ""
date: 2023-07-11T10:08:33+02:00
lastmod: 2023-07-11T10:08:33+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_new_sales_order-564c00625a2ab9610aea00a350513512"
weight: 139
toc: true
type: docs
---

A retail voucher is a document that entitles the owner to purchase goods or services with it. As such, it can take the form of paper, electronic vouchers, tokens, and so on. It is widely used in the Retail & Service industries. 

Vouchers can be generated through a sales order. To do so, follow the provided steps: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Sales Orders** and choose the related link. 
2. Click **New**.
3. Populate the following fields on the sales order header:

- **Customer No.**
- **External Document No.**
- **Salesperson Code**

{{< alert icon="📝" text="If some of the fields other than those mentioned above are mandatory, fill them in."/>}}


4. To generate a voucher, click **Action** in the ribbon, followed by **Retail Voucher**, and finally **Issue Voucher**.

    The **RETAIL VOUCHER TYPES** window is displayed as a result.

5. Depending on the **Manual Reference number on Sales Orders** field in the **Voucher Type Card**, you may be prompted to manually enter a reference number for new voucher.

6. Select the appropriate type of voucher (e.g gift voucher), and click **OK**.       
   A notification that the voucher has been created will be displayed. 

    Using the function above, the system will create a new line in the sales order for the selected voucher type. 

{{< alert icon="📝" text="If necessary, new sales lines for items and G/L accounts can be added."/>}}


7. Enter the voucher amount on the created sales order line in the **Unit Price Excl. VAT** field.

8. In the **Action** section, select **Posting**, and then click **Post**. 

9. Select the **Ship and invoice** option.

10.   Click **OK**.       
   The sales order is now posted, and a sales invoice created. 

## Next steps

### Redeem vouchers on a sales order

Follow the provided steps to redeem a voucher for sale from a Sales Order:

1.	Create a **Sales Order** with items to purchase and use the voucher to pay for it.
2.	From a **Sales Order**, click the **Retail Voucher** action, followed by **Redeem Voucher**.      
    A pop-up window prompting you to insert a voucher reference number is displayed.
3.	Provide the voucher **Reference No**.    
    A message confirming that the voucher has been allocated to this Sales Order is displayed. 
  
  ![vouchers9](vouchers9.PNG)

  On posting the sales order, a posted sales invoice will be created in the system. When you navigate to the invoice, you will see in the G/L entries that the invoice has been paid for with the voucher.

  ![vouchers10](vouchers10.png)
  
  In the **Voucher List** you will be able to see that the voucher has been used and archived. 

  ![vouchers11](vouchers11.png)

#### See also

- [<ins>Voucher types<ins>]({{< ref "../../explanation/voucher_types/index.md" >}})
