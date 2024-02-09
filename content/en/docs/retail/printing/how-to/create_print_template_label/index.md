---
title: "Create a new print template - price label"
description: ""
lead: ""
date: 2024-02-08T16:00:22+01:00
lastmod: 2024-02-08T16:00:22+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_print_template_label-0e6540cb771cab2236fb8f1bf1abb44f"
weight: 999
toc: true
type: docs
---

Price labels can be printed in various shapes, sizes and materials to suit the targeted product best. It is for this reason that you may want to create custom price label templates for your business. 

  {{< alert icon="📝" text="NaviPartner provides a large selection of predefined templates for most typical processes, optimized for various printers and print media. You can retrieve these predefined templates with the <b>Download Template Data</b> action in the <b>Print Template List</b> administrative section. Some of these templates are created specifically for printing price labels - Z420T_PRICE_SMALL / RFID_PRICE_SHORTWIDE."/>}}

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Print Template List**, and open the related link.    
   On fresh installation, an empty template list is displayed.
2. Click **New** to open an empty **Template Card**.
3. Provide a unique name for the template in the **Code** field.       
   For the purposes of this example, the code is **DEMO_PRICE_LABEL**.
4. Select **Matrix** in the **Printer Type** field.      
   The **Matrix Settings** panel is displayed below.     
   Matrix and line printing is described in more detail in the [<ins>Printer properties<ins>]({{< ref "../../explanation/print_properties/index.md" >}}) article.
5. Make sure that **Zebra** is selected as the **Matrix Device** in the **Matrix Settings** panel.    
   You've now created the most basic price label print template. However, it's recommended to also define which tables will be data sources for the template. 
6. Click **Edit Data Items**.     
   The **Data Items** page provides an overview of all available data items, their relations, and constraints.      

   When printing price labels, item data is transferred to a common table called **NPR Retail Journal Line** which serves as the initial data source. Any additional data sources should be subsets of this one, which is achieved through **Indentation** and **Data Item Links**. 