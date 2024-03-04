---
title: "Printer properties"
description: "Printer properties provide a structured way of mapping data to the output, either through lines or coordinates."
lead: ""
date: 2023-07-12T14:07:19+02:00
lastmod: 2023-07-12T14:07:19+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "print_template_output_setup-45d17a03446be094bb45d94d065daea3"
weight: 264
toc: true
type: docs
---

The following properties for print templates are available in NP Retail:

## Line print

With this property, the content is defined in a line-by-line manner. Although reliable, it lacks in flexibility. The line print property is the most suitable option in scenarios which require extensive text to be printed (e.g. receipts).

It is used for BOCA (typically used in self-service context) and EPSON printers (typically used by the POS). 

[**<ins>Create a simple receipt/line print template<ins>**]({{< ref "../../how-to/receipt_print_template/index.md" >}})

## Matrix print

The Matrix print template property requires the specific X and Y coordinates to generate the output. This method is the most suitable one for labels, tickets, and other objects of static size. You can specify the coordinates by editing the template's layout in its **Template Card**.

The matrix template is used for ZEBRA, BOCA, BLASTER, and CITIZEN printers. 

[**<ins>Create a new price label/matrix template<ins>**]({{< ref "../../how-to/create_print_template_label/index.md" >}})

<iframe width="560" height="315" src="https://www.youtube.com/embed/VKI0MNWorPA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

#### See also 

- [<ins>Printer troubleshooting<ins>]({{< ref "../../../../troubleshooting/printer.md" >}})
- [<ins>Printing overview<ins>]({{< ref "../../intro.md" >}})
- [<ins>Printer extensions<ins>]({{< ref "../printer_extensions.md" >}})