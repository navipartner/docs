---
title: "End-of-day report (POS balance)"
description: "The POS balance report, or the end-of-day report, contains the payments received throughout the day on the selected POS unit, and is used for cash count and balancing."
lead: ""
date: 2023-07-07T12:58:53+02:00
lastmod: 2023-07-07T12:58:53+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "eod-b82e05b662ced07bb38f345c0b74a1de"
weight: 128
toc: true
type: docs
---

The POS balance report, or the end-of-day report, contains the payments received throughout the day on the selected POS unit, and is used for cash count and balancing. 

{{< alert icon="📝" text="You can define the <a href=\"/docs/retail/pos_processes/how-to/payment_bins/\">payment bins</a> like a bank or a safe, and then a common payment bin, where on <a href=\"/docs/retail/pos_processes/how-to/eod/generate_eod/\">posting the cash balance</a>, we transfer them out of the default bin."/>}}

## Statistics

The **Statistics** screen consists of the following segments:

- **Tax summary**.

- **Overview** of daily sales on the POS unit, cash movements, vouchers both issued and received, credit sales, and other details.

- Overview of all applied **Discounts** during the work shift.

- **Turnover** report and a graphical representation of various turnover stats.

![balance_the_pos_v4_all](balance_pos_v4_balancing_screen_%20all.png)

## Counting

The **Counting** screen is displayed when you click **Cash Count** on the POS. In the top-right corner, you can see which currencies have been received in the POS, that require counting and balancing of the POS unit. 

{{< alert icon="📝" text="If the button is marked in red, the currency hasn't yet been counted. After the count is completed, there will be a green tick next to it."/>}}

![counting_transfer_v4](counting_transfer_v4.png)

For more information about individual fields and options on the **Counting** screen, refer to the [reference guide]({{< ref "../reference/counting_ref/index.md" >}}).