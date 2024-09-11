---
title: "Set up coupon print templates"
description: "Coupons are used for applying certain discounts to various activities and items. It's possible to print them with our printing module by using either a designated line or a matrix printing template."
lead: ""
date: 2024-02-22T10:46:20+01:00
lastmod: 2024-02-22T10:46:20+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_print_template_coupon-1b74f376dfc91b7c5c81de27a4912b3b"
weight: 278
toc: true
type: docs
---

Coupons are used for applying certain discounts to various activities and items. It's possible to print them with our printing module by using either a designated [<ins>line or a matrix<ins>]({{< ref "../../explanation/print_properties/index.md" >}}) printing template. Alternatively, you can create a completely new template from scratch while using the existing ones as reference. 

To set up coupon print templates, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Print Template List**, and open the related link.    
   On fresh installation, an empty template list is displayed.
2. Click **Actions** in the ribbon, followed by **Download Template data** in the dropdown list that is displayed.    
   After a few moments, you will have a full list of preset ready-to-use print templates compatible with the NP Retail solution.
3. For [<ins>line printing<ins>]({{< ref "../receipt_print_template/index.md" >}}), search for the **EPSON_COUPON** template, and for [<ins>matrix printing<ins>]({{< ref "../create_print_template_label/index.md" >}}), search for the **ZT230_COUPON** template from the list.    
   For more information on line and matrix printing, refer to the article on [<ins>printer properties<ins>]({{< ref "../../explanation/print_properties/index.md" >}}). Your selection between the two depends on the kind of layout you wish to apply to the printed coupon.
4. Open one of those templates, and click **Edit Data Items** in the ribbon.      
   The selected data source is **NPR NpDc Coupon**. It contains all basic information that needs to be referenced from the printed coupons. You can add additional data sources as subsets of this one, but it's not required for the module to work.   
   
      {{< alert icon="📝" text="The <b>NPR NpDc Coupon</b> table contains information on coupon types, customer numbers, discount types, percentages etc."/>}}
    
5. Click **Edit Layout** to open the **Template Designer**.    
   Here, it's possible to edit the size of fonts and provide X and Y coordinates (if matrix printing is used).
6. Click **Device Settings** if you wish to add specifics regarding label home position, media darkness and coloring.      
   Once you're done with configuring the template, it is ready to be used for printing coupons. 

#### See also

- [<ins>Create a new price label/matrix template<ins>]({{< ref "../create_print_template_label/index.md" >}})
- [<ins>Create a simple receipt/line print template<ins>]({{< ref "../receipt_print_template/index.md" >}})
- [<ins>Create a new coupon<ins>]({{< ref "../../../coupons/how-to/new_coupon/index.md" >}})
- [<ins>Activity coupons<ins>]({{< ref "../../../coupons/explanation/activity_coupon/index.md" >}})
- [<ins>Discount coupons<ins>]({{< ref "../../../coupons/explanation/discount_coupon/index.md" >}})