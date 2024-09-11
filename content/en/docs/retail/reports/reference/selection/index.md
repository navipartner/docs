---
title: "Report selection"
description: "The Report Selection - Retail administrative section is used for setting up codeunits, reports, print templates or documents that are printed in different retail processes and scenarios."
lead: ""
date: 2024-06-28T11:44:45+02:00
lastmod: 2024-06-28T11:44:45+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "selection-547f8ff290acfd56108e1eab75db3474"
weight: 260
toc: true
type: docs
---

The **Report Selection - Retail** administrative section is used for setting up codeunits, reports, print templates, and documents that are printed in different retail processes and scenarios.

You can choose one of the areas or tasks which indicate which printing details will be configured:

| Report Name      | Description |
| ----------- | ----------- |
| **Price Label** | Used for printing item price labels. | 
| **Terminal Receipt** | Used for printing receipts for credit card terminals. |
| **Exchange Label** | Used for printing exchange labels for items on a POS sale line. | 
| **Warranty Certificate** | Used for printing documents or barcodes for warranty purposes. |
| **Shelf Label** | Used for printing shelf labels for items. |
| **Sign** | Used for printing documents to sign after POS sales are performed in special circumstances. | 
| **Bin Label** | Used for printing bin label for items. |
| **Sales Receipt**| Used for printing sales receipt tickets when performing POS sales. | 
| **Large Sales Receipt** | Used for printing sales receipts in A4 format when performing POS sales. |
| **Balancing Receipt** | Used for printing balancing receipts on completing the EOD process for the POS unit. | 
| **Sales Document Confirmation** | Used for printing sales receipts when sales orders or customer invoices are generated from POS. The sales order and sales invoices are defined in the **Report Selection - Sales** administrative section. | 
| **Large Balancing Receipt** | Used for printing balancing receipts in A4 format for the EOD process from the **POS Entry List** administrative section. | 
| **Begin Workshift** | Used for printing workshift receipts when starting a new workshift. | 
| **Transfer Order** | Used for printing transfer order slips when transfer orders are performed from the POS. | 
| **Inventory PutAway Label** | Used for printing inventory putaway slips when putaways are performed from the POS. | 
| **Bin Transfer** | Used for printing bin transfer slips when performing cash transfer from the POS. |


As for the available fields and options, refer to the following table to learn what each of them is used for:

| Field Name      | Description |
| ----------- | ----------- |
| **Sequence** | Specifies the sequence in which the material is printed. It's applied in retail scenarios which require multiple printout types to be initiated. The lowest sequence number is printed first. |
| **POS Unit** | Specifies a POS unit on which a printing job is performed. If there are different printer types attached to different POS units, and these printers use their own print templates, you can define a different POS unit for each option. | 
| **Report ID** | If reports are used for printing, their ID can be defined here. | 
| **Report Name** | This field is populated automatically if you provide a report ID in the previous field. |
| **Codeunit Code** | If you're using print templates or specific codeunits for printing, you need to populate this field with an adequate codeunit ID. Each printer type supported by NaviPartner has its own codeunit. |
| **Codeunit Name** | This field is populated automatically if you provide a codeunit code in the previous field. |
| **Print Template** | Specifies the print template used for printing. |
| **Optional** | Specifies whether printing is optional or not. If deactivated, printout will be issued after performing specific retail actions. If activated, instead of issuing the printout automatically, you will be prompted to confirm whether printing should be done or not. | 

{{< alert icon="📝" text="Although you define the material to be printed in <b>Report Selection - Retail</b>, you need to select which printer is going to be used for the printout in <b>Print Template Output Setup</b> for printing from print templates, and in <b>Printer Selection</b> for printing from reports."/>}}

#### See also

- [<ins>Report selection for documents in Business Central - Microsoft Docs<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/across-report-selections)
- [<ins>Printer selection in Business Central - Microsoft Docs<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/ui-specify-printer-selection-reports)
- [<ins>Set up printing with codeunits<ins>]({{< ref "../../../printing/how-to/codeunit_printing/index.md" >}})