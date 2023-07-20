---
title: "Stock-take by Dimension"
description: ""
lead: ""
date: 2023-07-06T15:23:47+02:00
lastmod: 2023-07-06T15:23:47+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "stocktake_dimension-938e4597668f1e1e52cda8668814da6d"
weight: 102
toc: true
type: docs
---

Filtering items according to Dimensions is by default hidden, and can be made available on request. 

The Global Dimension Codes on the stock-take worksheet act as filters to the item table, and can narrow the scope to include only items with those Dimension codes as in-scope items. You can manually specify other Dimension codes and values for each line in the worksheet that will be used during posting.

To make this process more convenient, the configuration can define both the Dimension values for filtering, and the Dimension values for posting. Those Dimension code values on the form itself (in the **Scope** tab) are transferred to the worksheet Dimension filters. The Dimension codes specified on the configuration lines, however, are applied to the item on the worksheet lines. The Dimension specified on the worksheet line will be carried over to the Item Inventory Journal. 

If the Dimension setup allows it, it will be possible to capture the cost of quantity adjustments on the Dimension code value other than the ones defined on the actual item. However, inventory can't be split on Dimension code values with this module. 
