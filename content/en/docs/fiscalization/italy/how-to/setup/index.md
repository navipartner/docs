---
title: "Set up fiscalization compliance - Italy"
description: "This article details how to configure NP Retail for compliance with Italian fiscal laws."
lead: ""
date: 2024-02-20T09:28:53+01:00
lastmod: 2024-02-20T09:28:53+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup-c402c78805c34f6ae4f6d00c9c368af8"
weight: 827
toc: true
type: docs
---

The Italian fiscalization is based on the POS system integration with the fiscal printer (RT device) that communicates with the TA (tax authority) and generates printouts for various processes such as:

-	Sales
-	Voucher handling 
-	Discounts
-	Return
-	Cancellation
-	Invoice
-	Cash-in/Cash-out
-	Reports (X report, Z report and EJ report)
-	Receipt copy
-	Lottery handling

To configure NP Retail for compliance with Italian fiscal laws, follow the provided steps:

1. Navigate to the **IT Tax Fiscalization Setup** page, and enable the fiscalization via the toggle switch.
2. Open the **POS Audit Profiles** administrative section, enable the audit log, and set the **Audit Handler** to **IT_ENTRATE**.
3. Make sure this audit profile is set for all POS units from the **POS Unit List** that need to be compliant with Italian fiscalization laws.
4. Move on to the **IT POS Mapping** page, and enter the **Fiscal Printer IP** address for the POS unit connected to the printer, and set the **Fiscal Printer Rounding Type** to **Standard Rounding**.       
   The **Fiscal Printer RT Type** and **Fiscal Printer Serial No.** fields are populated after the **RT Printer Type** and **RT Serial No.** are executed from the POS.
