---
title: "Create a print template"
description: "You can either create a new template or copy an existing one, change it, and save it in the environment for future use."
lead: ""
date: 2023-07-12T14:08:30+02:00
lastmod: 2023-07-12T14:08:30+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "print_template_setup-756822345a91f75f61fde8cb4a911d3d"
weight: 260
toc: true
type: docs
---

NaviPartner provides a large selection of predefined templates for most typical processes, optimized for various printers and print media. 

However, if none of them suit your needs, you can either create a new template or copy an existing one, change it, and save it in the environment for future use. 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Print Template List**, and open the related link.    
   On fresh installation, an empty template list is displayed.
2. To fetch preconfigured print templates from our Azure server, click **Actions** in the ribbon, followed by **Download Template Data**.     
   The **Import Worksheet** page with available templates is displayed. You can choose to add, skip or replace any of these templates.
3. There are several available options from this point forward:   
   - If you have a prepared template saved locally, you can click **Actions** in the ribbon, followed by **Import Package File** to upload it.
   - If you need to edit one of the existing templates, click **Edit**.
   - If you want to create a copy of one of the existing templates, click **Actions** in the ribbon, followed by **Create Copy**. You can modify this copy as much as needed without impacting the state of the original.
   - Click **New** to create a completely new template, and populate the necessary fields as indicated in further text. 

4. Provide the template **Code**.       
   The code is a descriptive identifier of the template. It should ideally help distinguish this template from the others. For example, **ZT230_COUPON** lets you know what the printer's model and purpose is just from reading the code.
5. Select the **Printer Type**. You can choose between [Matrix and Line printers]({{< ref "../../explanation/print_properties/index.md" >}}).      
   Depending on your selection in the previous step, the next panel will either contain the options related to **Matrix Settings** or **Line Settings**.
6. Configure the settings in the panel below.     
   - The **Line Settings** panel consists of a dropdown list of available line printing devices, and the options for distribution of the item's content in columns. 
   - The **Matrix Settings** panel contains a dropdown list of available printing devices.  
7. (Optional) In the **Processing** panel provide the codeunits which will be used for generating unique scannable tags on the output.    
   The preprocessing codeunit is used for splitting the items into components before they are printed, while the postprocessing codeunit restores the components back into a complete item afterwards. These codeunits are useful if multiple items with extensive lines are printed. 
8. (Optional) For additional setup, use one of the **Actions** in the ribbon:   
   - **Edit Data Items** - State which entities will be used as data sources mapped to the printed item. 
   - **Edit Layout** - Design the layout of the item by providing the X and Y coordinates (for Matrix templates) or the order and content of each line (for Line templates).  
   - **Edit Device Settings** - Configure the device-specific settings. You can override the default settings of a device, typically related to calibration, media specifications or encoding.

<iframe width="560" height="315" src="https://www.youtube.com/embed/VKI0MNWorPA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

#### See also 

- [<ins>Printer troubleshooting<ins>]({{< ref "../../../../troubleshooting/printer.md" >}})
- [<ins>Printing overview<ins>]({{< ref "../../intro.md" >}})
- [<ins>Print properties<ins>]({{< ref "../../explanation/print_properties/index.md" >}})