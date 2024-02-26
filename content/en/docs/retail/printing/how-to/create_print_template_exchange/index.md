---
title: "Set up exchange label print templates"
description: "This topic describes the process of creating print templates for exchange labels in NP Retail."
lead: ""
date: 2024-02-22T13:27:40+01:00
lastmod: 2024-02-22T13:27:40+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_print_template_exchange-1a4d83e89fdf1fa354d009c3930f64d4"
weight: 261
toc: true
type: docs
---

Exchange labels are used when customers wish to replace purchased items with other items from the store (or the same items with different qualities/attributes). You can create printer templates that are specifically used for printing exchange labels in such occurrences. 

To set up print templates for exchange labels, follow the provided steps: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Print Template List**, and open the related link.    
   On fresh installation, an empty template list is displayed.
2. Click **Actions** in the ribbon, followed by **Download Template data** in the dropdown list that is displayed.    
   After a few moments, you will have a full list of preset ready-to-use print templates compatible with the NP Retail solution.
3. Search for the **Z410_EXCH** template for [<ins>matrix printing<ins>]({{< ref "../create_print_template_label/index.md" >}}) in the list.    
4. Open the template card, and click **Edit Data Items** in the ribbon.      
   The main data source is the **Exchange Label** table. It contains all basic information that needs to be referenced from the printed exchange labels. There are also additional subsets of the main data source like **NPR POS Unit**, **Item**, **Item Variant**, **Sale POS**, and **NPR POS Store**. Each of these sources contains fields that may be relevant for an exchange label, depending on the store's policy in place.       
   You can add additional data sources here, if needed. 
    
5. Click **Edit Layout** to open the **Template Designer**.     
   Here, it's possible to edit the size of fonts and provide X and Y coordinates.
6. Click **Device Settings** if you wish to add specifics regarding label home position, media darkness and coloring.      
   Once you're done with configuring the template, it is ready to be used for printing coupons. 

## Next steps - set up the exchange label

Once you have a configured template in place, you can move on to [<ins>setting up the exchange label<ins>]({{< ref "../exchange_label/index.md" >}}) itself before printing.

#### See also

- [<ins>Create a new price label/matrix template<ins>]({{< ref "../create_print_template_label/index.md" >}})
- [<ins>Create a simple receipt/line print template<ins>]({{< ref "../receipt_print_template/index.md" >}})
- [<ins>Set up coupon print templates<ins>]({{< ref "../create_print_template_coupon/index.md" >}})
- [<ins>Printer troubleshooting<ins>]({{< ref "../../../../troubleshooting/printer.md" >}})