---
title: "Manually add mix discounts on POS"
description: "Follow the provided steps to add a mix discount on the POS."
lead: ""
date: 2024-03-06T15:35:03+01:00
lastmod: 2024-03-06T15:35:03+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "add_mix_discount_pos-48a7d277a5c9262cca3f3dde5dc93e65"
weight: 135
toc: true
type: docs
---
Follow the provided steps to add a mix discount on the POS.

#### Prerequisite

-	You need to have a [<ins>mix discount created in Business Central<ins>]({{< ref "../create_mix_discount/index.md" >}}). In our example, the mix discount is created for the quantity of 2, and the affected items are **73008** and **73009**. The total amount for both items is **1000**.

#### Procedure

To add a mix discount in a sale:

1.	Provide **73008** in the **Item no.** box in the top right corner.         
    A new sales line is added with the regular initial price.
2.	Provide **73009** in the **Item no.** box in the top right corner.   
    A new sales line is added. Both items are assigned the same discount percentage, and the total amount of the sale is now **1000**. The discount amounts and the **Amounts Including VAT** are calculated.