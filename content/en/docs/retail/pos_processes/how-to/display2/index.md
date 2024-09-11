---
title: "Return items with the second POS screen"
description: "The second POS screen can be used by customers to provide any sort of required input during a transaction in a store."
lead: ""
date: 2023-07-11T15:34:30+02:00
lastmod: 2023-07-11T15:34:30+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "display2-ac12067ae38fff6a05cd7f7406411b76"
weight: 111
toc: true
type: docs
---

The second POS screen can be used by customers to provide any sort of required input during a transaction in a store. For example, if a customer wishes to return an item, they may need to provide their signature, and phone number. To perform the return process on the POS, follow the provided steps:

## Prerequisite - Enable the second screen for the POS unit

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Unit List** and open the related link. 
2. Open the **POS Unit Card** of the POS unit you want to edit. 
3. Open the **POS HTML Display Profile** dropdown list, and select the second screen from the list.

## Procedure

1. Click **POS** in the Role Center's ribbon, followed by **Open POS**.     
   The POS login screen is displayed.
2. Enter the **Salesperson Code** in the provided field to log in.
3. Use **Item Lookup** to locate the item that the customer would like to return. 
   When the item is selected, the customer will be able to see the totals on the second (customer-facing) screen. 
4. As soon as the customer confirms that the information on the screen is correct, click **Return Item**.
5. Select the return method (e.g. **Scan Item**).     
   A pop-up window for providing the item quantity is displayed.
6. State the quantity of the returned item, and click **OK**.
   A pop-up window for confirming the unit price is displayed.
7. Confirm the unit price, and click **OK**.      
   The **Return reasons** window is displayed.
8. Select the return reason from the list, and click **OK**.
9. Select the means by which the funds will be returned to the customer.    
   The pop-up window for providing the return amount is displayed.
10. Confirm the return amount, and click **OK**.   
    On the second screen, an input box in which the customer can provide their phone number and signature is displayed. This information is then displayed on the main screen.
11. As soon as you inspect the provided information you can approve it to finalize transaction (or reject it, if some of the information isn't valid).

{{< alert icon="💡" text="If you wish to access the customer information, you can locate it in the <b>POS Entry List</b> administrative section in Business Central."/>}}


![pos_signature](pos_signature.PNG)

#### See also

- [<ins>Sales and returns<ins>]({{< ref "../sales_cycle/index.md" >}})
- [<ins>Cash out a voucher<ins>]({{< ref "../../../vouchers/how-to/cashout/index.md" >}})