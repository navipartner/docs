---
title: "Manually add period discounts on POS"
description: "Follow the provided steps to manually add a period discount to items on the POS."
lead: ""
date: 2024-03-06T15:44:23+01:00
lastmod: 2024-03-06T15:44:23+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "add_period_discount_pos-146137164f5702aaec3764cfffae8832"
weight: 135
toc: true
type: docs
---

Make sure the prerequisites are met and follow the provided steps to manually add a period discount to items on the POS.

#### Prerequisites

-	You need to have the [<ins>period discount created in Business Central<ins>]({{< ref "../period_discounts/index.md" >}}). In our example, the period discount is created for the item 70006. The price is **1200** during that period instead of the regular price of **1500**.
-	The period discount needs to be active and the date of the sale needs to be within the date range during which the period discount is effective.

#### Procedure

To add a period price in a sale:

1.	Provide **70003** in the **Item no.** box in the top right corner.       
    A new sales line is added with the price from the **Period Discount Page – 1200**. The discount percentage and the discount amount are calculated.


<iframe width="560" height="315" src="https://www.youtube.com/embed/NynY_ZB-jxc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe