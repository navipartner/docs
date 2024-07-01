---
title: "Printing overview"
description: "Get started with the essential printer configurations for the NP Retail solution."
lead: ""
date: 2024-02-06T15:10:30+01:00
lastmod: 2024-02-06T15:10:30+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-26a6d83b34f019795886bbeb13cf1406"
weight: 277
toc: true
type: docs
---

This documentation section covers the essential printer configuration entities for the NP Retail solution. The first step in getting your environment ready for printing is determining what kind of object it is that you need printed.

## Reports

[<ins>Reports<ins>]({{< ref "../reports/intro.md" >}}) are a part of standard Business Central. They are used for gathering all information based on a requested set of criteria in one place, in combination with a specified layout like RDLC, Word, and Excel. 
They are the best option if you wish to print sales documents, income statements or A5 POS receipts.

Report printing is carried out either with the default printer, or the printer specified in the [<ins>**Printer Selection**<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/ui-specify-printer-selection-reports) administrative section in Business Central. PrintNode should be added here

## Codeunits

[<ins>Codeunits<ins>]({{< ref "how-to/codeunit_printing.md" >}}) are also a part of standard Business Central, but unlike reports, it's necessary to specify the output layout through methods. NaviPartner has two public interfaces - one for Matrix (codeunit 6060039 "NPR RP Matrix Print"), and the other for Line printing (codeunit 6150960 "NPR RP Line Print").

## Print templates

[<ins>Print templates<ins>]({{< ref "how-to/print_template_setup/index.md" >}}) are preestablished document-generating patterns that are populated with data from Business Central tables, and sent to printers. Print templates provide a structured way of mapping data to the output, either through lines or coordinates. In the **Print Template Output Setup** administrative section, you can map different types of templates to printers.

Examples of the most frequent outputs generated with print templates are:

- [<ins>Sales receipts<ins>]({{< ref "how-to/receipt_print_template/index.md" >}})
- [<ins>Price labels<ins>]({{< ref "how-to/create_print_template_label/index.md" >}})
- [<ins>Coupons<ins>]({{< ref "how-to/create_print_template_coupon/index.md" >}})
- [<ins>Exchange labels<ins>]({{< ref "how-to/create_print_template_exchange/index.md" >}})
- [<ins>Vouchers<ins>]({{< ref "how-to/create_print_template_voucher/index.md" >}})
- [<ins>Tickets<ins>]({{< ref "how-to/create_print_template_ticket/index.md" >}})

You can also refer to [<ins>Print template features<ins>]({{< ref "explanation/template_tools/index.md" >}}) to learn more about the tools used for facilitating print template management.

## Fully supported printers

The list of printers fully supported by our team is recorded in [<ins>System Requirements<ins>]({{< ref "../../retail/gettingstarted/system_requirements.md#printers" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/VKI0MNWorPA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

#### See also

- [<ins>Printer troubleshooting<ins>]({{< ref "../../troubleshooting/printer.md" >}})
- [<ins>Receipt printer troubleshooting<ins>]({{< ref "../../troubleshooting/receipt_printer.md" >}})
- [<ins>Label printer troubleshooting<ins>]({{< ref "../../troubleshooting/label_printer.md" >}})
- [<ins>A4 printer troubleshooting<ins>]({{< ref "../../troubleshooting/a4_printer.md" >}})
