---
title: "Create a POS payment method"
description: "POS payment methods represent the various options available for processing payments during POS transactions, such as cash, credit cards, or vouchers."
lead: ""
date: 2023-07-11T16:14:58+02:00
lastmod: 2023-07-11T16:14:58+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_payment_method-24539076331faeac6da9d6808aaa65ba"
weight: 111
toc: true
type: docs
---

POS payment methods represent the various options available for processing payments during POS transactions, such as cash, credit cards, or vouchers. Each payment method has a dedicated card in Business Central, in which you can configure all necessary parameters. You can access a specific payment method card by selecting its line, clicking **Manage** in the ribbon, and choosing **View** from the dropdown.

To create new POS payment method, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Payment Method**, and choose the related link.       
   The **POS Payment Methods** page opens.
2. Click **New** to add a new payment method.
3. Enter a unique **Code** and a **Description** for the payment method.
4. In the **Processing Type** field, select the appropriate option.      
   The available options are **Cash**, **Voucher**, **Check**, **EFT** (Electronic Funds Transfer for credit cards), **Foreign Voucher**, and **Payout**.
5. Select the **Return Payment Method Code** to define the method used for returns during sales transactions.    
6. Enable **Block POS Payment** to prevent this payment method from being used on the POS, if necessary.
7. To open the cash drawer when this method is used, activate **Open Drawer**.
8. In the **Include in Counting** field, specify the method's behavior during the end-of-day counting process: 
   - **Yes** - the system amount appears in a dedicated column.
   - **Yes - blind** - the system amount column is hidden.
   - **Virtual** - Counting occurs automatically using a designated bin specified in the **Bin for Virtual Counting** field.
   - **No** - exclude the method from the counting process.
9.  If the payment method uses a foreign currency, assign the relevant **Currency Code** and **Fixed Rate**.
10. To consolidate posted entries, enable **G/L Posting Consolidation**. <br>
    It allows users to consolidate the posting of **"G/L entries in a consolidated format"** for POS payment lines. The method of consolidation of the POS payment lines is determine by what is defined in the **POS Posting Profile card**.
     - **Per POS Entry** - each POS entry is posted **separately** to the General Ledger, and the resulting G/L entries are consolidated per G/L account, dimension set ID, VAT setup, etc. for that POS entry. <br>
     {{< alert icon="📝" text="The POS entry document number is used as the posting document number."/>}}
     
     - **Per POS period** - all the POS entries created in the same period are posted **together** to the General Ledger at EOD, and the resulting G/L entries are consolidated per POS Unit, G/L account, dimension set ID, VAT setup, etc. <br>
     {{< alert icon="📝" text="The POS Period Register No Series as defined above in above field, is used as the posting document number and not the POS entry document number."/>}}

     By enabling this function, you will be able to use the field "Consolidated G/L Posting Description" to modify the DEFAULT desciption of the G/L entries by used of available placeholders in "Consolidated G/L Posting Description".
{{< alert icon="⚠️" text="If you do not enable this function, the POS payment method line will be unconsolidated when posted, even if in the POS Posting Profile card, consolidation has been set. You might choose not to consolidate entries for vouchers. Whereas you can choose at the same time to consolidate credit card payment. The setup for POS payment lines consolidation is dependent on what is set in each individual POS Payment Method card. But the Document No. in G/L entries is determined by what has been setup in POS Posting Profile card (Per POS Entry or Per POS Period)."/>}}
11. **Consolidated G/L Posting Description** field is enable when you choose to consolidate posting of G/L entries. The default description of G/L entries are as follows:
 - **"Unconsolidated"** is POS payment method description,
 - **"Per POS entry"** are "POS entry" + entry no from POS entry list,
 - **"Per POS Period"** are "POS Period Register no" + entry no of POS period register.

 When the transaction is posted, placeholders (values %1, %2 ... %6) can be set to replace with default values whereby for unconsolidated entries are %6 - %3, for consolidation per POS entry %6 - %3, for consolidation per POS Period %2/%1/%6 - %4/%3. When POS payment is posted, placeholders (values %1, %2 ... %6) will be replaced with real values:
    <div style="max-width: 350px; margin: 0 0 0 20px; padding: 0; font-size: 90%;">
     <table style="width:100%; border-collapse: collapse; margin-top:0;">
      <thead>
       <tr>
        <th style="text-align:left; padding:4px; border-bottom:1px solid #ddd;">Placeholder</th>
        <th style="text-align:left; padding:4px; border-bottom:1px solid #ddd;">Value</th>
       </tr>
      </thead>
     <tbody>
       <tr>
        <td style="padding:4px;">%1</td>
        <td style="padding:4px;"><em>POS Unit No.</em></td>
       </tr>
       <tr>
        <td style="padding:4px;">%2</td>
        <td style="padding:4px;"><em>POS Store Code</em></td>
       </tr>
       <tr>
        <td style="padding:4px;">%3</td>
        <td style="padding:4px;"><em>Posting Date</em></td>
       </tr>
       <tr>
        <td style="padding:4px;">%4</td>
        <td style="padding:4px;"><em>POS Period Register No.</em></td>
       </tr>
       <tr>
        <td style="padding:4px;">%5</td>
        <td style="padding:4px;"><em>POS Payment Bin Code</em></td>
       </tr>
       <tr>
        <td style="padding:4px;">%6</td>
        <td style="padding:4px;"><em>POS Payment Method Code</em></td>
       </tr>
     </tbody>
     </table>
    </div>
{{< alert icon="💡" text= "For example: POS posting from Unit %1, Store %2, Period %4, Payment Code %6 (POS posting from being a text written by you in that field, combined with the different placeholders.) <br> The resulted G/L description will be: POS posting from Unit 01, Store 01, Period 21, Cash."/>}}

12. Check Zero as Default to display a default amount of zero when this method is selected.
13. Enable **Auto End Sale** if transactions should close automatically after using this payment method.
14. If you want to bypass a minimum amount requirement for web orders, activate **No Min Amount on Web Orders**.
15. Set up **Rounding Precision**, **Rounding Type**, and **Rounding Gains/Losses Accounts**.
16. Enable **Allow Refund** if this payment method should support refunds.
17. Use the **Min Amount** and **Max Amount** fields to define allowable transaction limits.


#### See also

- [<ins>Payment methods<ins>]({{< ref "../../how-to/payment_methods/index.md" >}})
- [<ins>Payment operations<ins>]({{< ref "../../how-to/payment_operations/index.md" >}})
- [<ins>POS payment view event setup<ins>]({{< ref "../../reference/payment_view_ref/index.md" >}})