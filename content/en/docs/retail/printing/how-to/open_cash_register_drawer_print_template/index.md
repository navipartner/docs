---
title: "Configure a POS payment bin to open the cash register drawer with a print template"
description: "To configure a payment bin to open the cash register drawer with a print template, follow the steps provided in this article."
lead: ""
date: 2024-03-15T12:51:16+01:00
lastmod: 2024-03-15T12:51:16+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "open_cash_register_drawer_print_template-301afc0c11fcf016db12a6eebf2e9e63"
weight: 278
toc: true
type: docs
---

To configure a payment bin to open the cash register drawer with a print template, make sure the prerequisites are met, and follow the provided steps:

#### Prerequisites

- Have a cash drawer connected to an Epson receipt printer. 
- Have the **EPSON_CASH_DRAWER** [<ins>print template<ins>]({{< ref "../print_template_setup/index.md" >}}) set up. 
- Have the **Print Template Output** configured so that a specified POS Unit prints this template with the local Epson printer. 
- Have the **POS Payment Bin** created and attached to the **POS Unit**. 

#### Procedure

1. Navigate to the **POS Payment Bins** page in Business Central. 
2. Select a payment bin from the list, and expand the options in the **Eject Method** column.    
   A pop-up window is displayed. 
3. Select **TEMPLATE** from the list.  
4. With the same line still selected, click **Eject Method Parameters** in the ribbon.     
   A POS **Payment Bin Eject Parameters** pop-up window is displayed. 
5. Expand the options in the **Value** column.     
   A **Print Template List** pop-up window is displayed.  
6. Select **EPSON_CASH_DRAWER**. 

![printers](printers.PNG)

#### See also

- [<ins>Printer troubleshooting<ins>]({{< ref "../../../../troubleshooting/printer.md" >}})
- [<ins>Printing overview<ins>]({{< ref "../../intro.md" >}})
- [<ins>Print properties<ins>]({{< ref "../../explanation/print_properties/index.md" >}})
- [<ins>Create a simple receipt/line print template<ins>]({{< ref "../receipt_print_template/index.md" >}})
- [<ins>Set up coupon print templates<ins>]({{< ref "../create_print_template_coupon/index.md" >}})