---
title: "Set up exchange labels"
description: "This topic describes the process of setting up exchange labels, which can later be scanned on the POS to automatically create a negative sales line for return of items."
lead: ""
date: 2023-11-07T10:04:50+01:00
lastmod: 2023-11-07T10:04:50+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "exchange_label-7e9ed683b3ccdfec3902838ddacf275e"
weight: 263
toc: true
type: docs
---

Exchange labels are issued by retailers to customers if they want to exchange a purchased item for the same item with a different quality (color, size) or a completely different item, rather than return the purchased item and receiving a refund.

This topic describes the process of setting up exchange labels, which can later be scanned on the POS to automatically create a negative sales line for return of items.

#### Prerequisites

- Have a print template using the exchange label table as the data source. 
- Have a number series which doesn't contain non-number digits.

#### Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Exchange Label Setup**, and open the related link.    
   The administrative section containing the list of all exchange labels is displayed.
2. Populate the necessary fields:

| Field Name      | Description |
| ----------- | ----------- |
| **EAN Prefix Exchange Label** | Specifies the first two digits of the Exchange Label. | 
| **Exchange Label Nos.** | Specifies the number series used for the exchange label. Note that the exchange label is created as an EAN13 code, so the length of the prefix + the selected no. series should be 12 at most. |
| **Purchase Price Code** | If wish to write the price on the printed exchange label, but you also wish to hide it, this field can be used to create a cipher which is used for modifying the printed price. For example, having a **Purchase Price Code** of **ABCDEFGHIJ** may entail that a price of **349,95** will become **DEJJF** on the printed exchange label. | 

  {{< alert icon="📝" text="To use the <b>Purchase Price Code</b> you need to first need to enable the <b>Cipher the Price</b> option in the <b>Print Template</b> page, where the specific line needs to have the <i>Processing Codeunit=6014550</i> and the <i>Processing Function ID=CIFFERCODE</i>."/>}}

| Field Name      | Description |
| ----------- | ----------- |
| **Exchange Label Exchange Period** | Specifies the validity duration of the exchange label. By default, the period is set to **3Y**. |
| **Exchange Label Default Date** | Specifies the default starting date for the exchange label validity. If the field is left blank, the default date is the day of the label's creation.  |
| **Insert Cross Reference When Finishing Sale** | The exchange labels are stored in the **Exchange Label** table. They are created either when using the POS action **PRINT_EXCH_LABEL** or by ticking this checkmark. An entry is automatically created in the **Exchange Label** table when finalizing a sale, although the label isn't automatically printed. | 