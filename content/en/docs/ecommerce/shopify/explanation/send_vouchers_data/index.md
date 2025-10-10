---
title: "Sending Shopify gift card data for retail vouchers sold on POS"
description: "Overview of the Shopify gift card sending routine for retail vouchers sold via POS, including setup, usage, and integration considerations."
lead: ""
date: 2023-09-14T10:31:00+02:00
lastmod: 2023-09-14T10:31:00+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "sendShpgiftcards"
weight: 324
toc: true
type: docs
---
This article explains the process for using the Shopify gift card sending routine specifically for retail vouchers sold via POS. 

A new field **Send from Shopify** has been added on the **Retail Voucher Type** configuration page under section Shopify. This field allows users to enable or disable the functionality for sending retail vouchers directly from Shopify when sold via POS.

When the **Send from Shopify** field is **enabled**, additional fields will be displayed on the POS interface when selling retail vouchers of this type:

|Fied                  |Description       |
|----------------------|------------------|
|**Recipient Name**    | The name of the person who will receive the retail voucher.
|**Recipient E-mail**  | The email address to which the retail voucher will be sent.
|**Send on Date-Time** | The scheduled date and time for sending the voucher to the recipient.
|**Voucher Message**   | A custom message that can be included with the voucher when it is sent.

These fields allow users to configure and manage the Shopify gift card sending routine for the selected retail voucher type, ensuring proper integration and processing.

{{< alert icon="📝" text="These fields are not mandatory. <br> If no information is specified in the Send from Shopify section, Shopify will still send the voucher to the customer selected in the POS sale." />}}