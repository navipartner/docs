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
weight: 259
toc: true
type: docs
---

This documentation section covers the essential printer configuration entities for the NP Retail solution. The first step in getting your environment ready for printing is determining what kind of object it is that you need printed.

## Reports

Reports are a part of the standard Business Central package. They are used for gathering all information based on a requested set of criteria in one place. The gathered information is related to the context of the specific page you're requesting it from. 
They are the best option if you wish to print sales documents, income statements, A5 POS receipts, cards or [<ins>RDLC files<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/ui-rdlc-report-layouts).

Report printing is carried out either with the default printer, or the printer specified in the [<ins>**Printer Selection**<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/ui-specify-printer-selection-reports) administrative section in Business Central.

## Codeunits

Codeunits reference pieces of printer-friendly code that determine what kind of content will be printed. Combining a codeunit and a specific layout results in a specific output that is recognized and supported by printers. 

For example, if you combine the print code **BLAST-PRICE** for the layout and the codeunit ID **6014547** for the program, the printer will be ready to print a price label.

## Print templates

[<ins>Print templates<ins>]({{< ref "how-to/print_template_setup/index.md" >}}) are preestablished document-generating patterns that are populated with data from Business Central tables, and sent to printers. Print templates provide a structured way of mapping data to the output, either through lines or coordinates. In the **Print Template Output Setup** administrative section, you can map different types of templates to printers.

Examples of the most frequent outputs generated with print templates are:

- [<ins>Sales receipts<ins>]({{< ref "how-to/receipt_print_template/index.md" >}})
- [<ins>Price labels<ins>]({{< ref "how-to/create_print_template_label/index.md" >}})
- Coupons
- [<ins>Exchange labels<ins>]({{< ref "how-to/exchange_label/index.md" >}})
- Vouchers
- Tickets

You can also refer to [<ins>Print template features<ins>]({{< ref "explanation/template_tools/index.md" >}}) to learn more about the tools used for facilitating print template management 

## Fully supported printers

The list of printers fully supported by our team is recorded in [<ins>System Requirements<ins>]({{< ref "../../retail/gettingstarted/system_requirements.md#printers" >}})

## See also

- [<ins>Printer troubleshooting<ins>]({{< ref "../../troubleshooting/printer.md" >}})
- [<ins>Receipt printer troubleshooting<ins>]({{< ref "../../troubleshooting/receipt_printer.md" >}})
- [<ins>Label printer troubleshooting<ins>]({{< ref "../../troubleshooting/label_printer.md" >}})
- [<ins>A4 printer troubleshooting<ins>]({{< ref "../../troubleshooting/a4_printer.md" >}})
- [<ins>Printer setup - POS Academy<ins>]({{< ref "../pos_academy/printing/printing_setup/index.md" >}})