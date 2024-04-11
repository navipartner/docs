---
title: "Set up printing with codeunits"
description: "When printing with codeunits, it's necessary to specify a layout through methods."
lead: ""
date: 2024-03-01T11:24:59+01:00
lastmod: 2024-03-01T11:24:59+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "codeunit_printing-35709276c8d274d95cc38af2fe697add"
weight: 262
toc: true
type: docs
---

When printing with codeunits, it's necessary to specify a layout through methods. NaviPartner has two public interfaces - one for Matrix (codeunit 6060039 "NPR RP Matrix Print"), and the other for Line printing (codeunit 6150960 "NPR RP Line Print").

There are multiple default ready-to-use codeunits available in the system, but it's also possible to create new ones and import them to your NP environment. Each codeunit needs to consist of a unique ID which is used to reference it when selecting which content is printed.

Besides the required unique ID, each codeunit consists of the following elements:

- column distribution parameters and element placement coordinates
- data items and layout specifics
- preset commands e.g. papercut, open drawer etc.
- the process buffer elements which determine the printing procedure specifics

To select a codeunit for printing purposes, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Print Template Output Setup**, and open the related link.    
   A list of configured print templates is displayed.
2. Add **New**.
3. Open the dropdown list in the **Codeunit ID** column, followed by **Select from full list**.       
   A list of all existing codeunits is displayed. They are usually accompanied by descriptions which help you determine their purpose. 
4. Choose the codeunit you wish to print, and bear in mind that they either fit the [<ins>line<ins>]({{< ref "../receipt_print_template/index.md" >}}) or the [<ins>matrix<ins>]({{< ref "../create_print_template_label/index.md" >}}) print scenario.      

   {{< alert icon="💡" text="If you're selecting print output via codeunits, it's not necessary to populate the <b>Print Template</b> field." />}}

5. Specify the **Output Type** by selecting one of the following options:

   - **Printer Name** – Specifies the name of the printer which is connected via USB, IP Address or cable to the POS Unit. It is a direct connection and can be established via a network as well.
   - **MPOS HTTP** - Printing is implemented via the Internet Print Protocol (IPP), which is encapsulated in the Hypertext Transfer Protocol (HTTP). With Internet printing, you can manage any shared printer on the print server from your MPOS.
   - **MPOS Bluetooth** - Bluetooth printers operate via wireless technology that can be configured to operate across iOS, Android & Windows devices.
   - **PrintNode** - PrintNode is a hosted printing service that can help you quickly, easily and securely add remote printing to your application.

6. Make sure you've selected the correct printer in the **Output Path** field.     
   The print job will be sent to it once initiated. 

#### See also

- [<ins>Create a new price label/matrix template<ins>]({{< ref "../create_print_template_label/index.md" >}})
- [<ins>Create a simple receipt/line print template<ins>]({{< ref "../receipt_print_template/index.md" >}})
- [<ins>Set up coupon print templates<ins>]({{< ref "../create_print_template_coupon/index.md" >}})
- [<ins>Printer troubleshooting<ins>]({{< ref "../../../../troubleshooting/printer.md" >}})