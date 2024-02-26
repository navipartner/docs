---
title: "Set up ticket print templates"
description: "This topic describes the process of creating print templates for tickets in NP Retail."
lead: ""
date: 2024-02-26T11:10:28+01:00
lastmod: 2024-02-26T11:10:28+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_print_template_ticket-3d1efdd6e1f366c5998d48895e95e2a3"
weight: 261
toc: true
type: docs
---

Tickets offer their users means of gaining entry to various attractions. Depending on their setup, they can be used once, or for an extended duration of time. To configure print templates used for printing tickets, follow the provided steps: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Print Template List**, and open the related link.    
   On fresh installation, an empty template list is displayed.
2. Click **Actions** in the ribbon, followed by **Download Template data** in the dropdown list that is displayed.    
   After a few moments, you will have a full list of preset ready-to-use print templates compatible with the NP Retail solution.
3. Depending on the ticket type you wish to print, search either for the **EPSON_TM_SIMPLE** template for [<ins>line printing<ins>]({{< ref "../receipt_print_template/index.md" >}}) or the **ZT230_TM_ALLYEAR** for [<ins>matrix printing<ins>]({{< ref "../create_print_template_label/index.md" >}}) in the list.    
4. Open the template card, and click **Edit Data Items** in the ribbon.      
   The main data source is the **TM Ticket** table. It contains all necessary information on tickets, such as their ID, validity time frame, the related receipt number, and so on.   
   You can add additional data sources as subsets of the main data source, or the existing subset sources (**TM Ticket Type**, **TM Ticket Access Entry** etc.).
5. Click **Edit Layout**.     
   Depending on your previous choice of template, either the **Template Line Designer** or the **Template Matrix Designer** is displayed. You can edit elements that are displayed on printed tickets here. You can also edit the coordinates within the content is placed in the **Template Matrix Designer**.
6. Click **Edit Device Settings** if you wish to provide additional configuration for the printing hardware.

#### See also

- [<ins>Create a simple receipt/line print template<ins>]({{< ref "../receipt_print_template/index.md" >}})
- [<ins>Create a new price label/matrix template<ins>]({{< ref "../create_print_template_label/index.md" >}})
- [<ins>Ticket module overview<ins>]({{< ref "../../../../entertainment/ticket/intro.md" >}})