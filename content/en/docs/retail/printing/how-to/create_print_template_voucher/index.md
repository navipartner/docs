---
title: "Set up voucher print templates"
description: "You can use voucher print templates when printing vouchers that are used for purchasing certain items."
lead: ""
date: 2024-02-22T15:14:02+01:00
lastmod: 2024-02-22T15:14:02+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_print_template_voucher-744ad68da1f38b724dc498e46bd55f4b"
weight: 278
toc: true
type: docs
---

Customers who have vouchers can use them to purchase various items, instead of using cash or other payment methods. There are different types of vouchers, and most of them are printable. You can create print templates that are specifically used when printing vouchers, or use the predefined ones. 

To set up voucher print templates, follow the provided steps: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Print Template List**, and open the related link.    
   On fresh installation, an empty template list is displayed.
2. Click **Actions** in the ribbon, followed by **Download Template data** in the dropdown list that is displayed.    
   After a few moments, you will have a full list of preset ready-to-use print templates compatible with the NP Retail solution.
3. Depending on the voucher type you wish to print, search either for the **EPSON_RVOUCH_CREDIT** or the **EPSON_RVOUCH_GIFT** template for [<ins>line printing<ins>]({{< ref "../receipt_print_template/index.md" >}}) in the list.    
4. Open the template card, and click **Edit Data Items** in the ribbon.      
   The main data source is the **NpRv Voucher** table in both cases. It contains all basic information that needs to be referenced from the printed vouchers such as voucher type, description, starting and ending dates for voucher validity etc.      
   You can add additional data sources here as subsets of the main data source, if needed.        
   The data source subsets may contain useful information such as salespeople names, affected POS units/POS stores, and so on.
5. Click **Edit Layout**     
   The **Template Line Designer** window is displayed. It contains the elements that are displayed on the printed vouchers. You can edit them, if needed.
6. Click **Edit Device Settings**.     
   For Epson printers, you can typically configure media width, encoding and print resolution (DPI).

#### See also

- [<ins>Create a simple receipt/line print template<ins>]({{< ref "../receipt_print_template/index.md" >}})
- [<ins>Set up coupon print templates<ins>]({{< ref "../create_print_template_coupon/index.md" >}})
- [<ins>Retail voucher types<ins>]({{< ref "../../../vouchers/explanation/retail_voucher_layout/index.md" >}})
- [<ins>Voucher overview<ins>]({{< ref "../../../vouchers/intro.md" >}})