---
title: "Print Template Output Setup"
description: "Print templates provide a structured way of mapping data to the output, either through lines or coordinates."
lead: ""
date: 2023-07-12T14:07:19+02:00
lastmod: 2023-07-12T14:07:19+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "print_template_output_setup-45d17a03446be094bb45d94d065daea3"
weight: 259
toc: true
type: docs
---

Print templates provide a structured way of mapping data to the output, either through lines or coordinates. In the **Print Template Output Setup** administrative section, you can map different types of templates to printers. The following printer types associated with templates are available:

## Line print

With this template, the content is defined in a line-by-line manner. Although reliable, this method lacks in flexibility. It is most suitable in scenarios which require extensive text to be printed (e.g. receipts).

The line print template is used for BOCA (typically used in self-service context) and EPSON printers (typically used by the POS). 

## Matrix print

The Matrix printer type requires the specific X and Y coordinates to generate the output. This method is most suitable for labels, tickets, and other objects of static size. You can specify the coordinates by editing the template's layout in its **Template Card**.

The matrix template is used for ZEBRA, BOCA, BLASTER, and CITIZEN printers. 

<iframe width="560" height="315" src="https://www.youtube.com/embed/VKI0MNWorPA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Troubleshooting 

[<ins>Printer troubleshooting<ins>]({{< ref "../../../troubleshooting/printer.md" >}})