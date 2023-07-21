---
title: "Create varieties in Business Central"
description: ""
lead: ""
date: 2023-07-10T22:45:45+02:00
lastmod: 2023-07-10T22:45:45+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_variety-884aae4b76c4ea8ef45c345f4c909341"
weight: 96
toc: true
type: docs
---

Variety is a tool that assists users in creating and associating different characteristics with items. The most common characteristics, or variants, of items are **Color**, **Size**, **Waist**, and **Length**. There are also other variants that are specific to certain types of merchandise, for example **Label**, **Wash**, and **Fit** in regards to clothes. 

NP Retail has a tool that can be used for defining the variants associated with various items. The stock is maintained per a combination of variants, and is sold in these particular combinations. The tool doesn't affect any calculation routines (e.g. finding sales prices/cost prices, posting routines etc.). Rather, it represents variants in a more structured way. It also allows users to apply all item variants to an item simultaneously.

The variety creation is performed in several administrative sections in a specific order. To create varieties, follow the provided steps.

1. Populate the fields in the **Variety Setup** administrative section by using the relevant [table]({{< ref "../../reference/variety_setup_ref.md" >}}) as reference.
2. Set up varieties for items. This is done in three layers, starting from **Variety**:

   - [Variety]({{< ref "../../reference/variety_ref/index.md" >}})
   - [Variety Table]({{< ref "../../reference/variety_table_ref/index.md" >}})
   - [Variety Value]({{< ref "../../reference/variety_values_ref/index.md" >}})
3. Create a [combination of varieties]({{< ref "../../reference/group_ref/index.md" >}}) that will later be assigned to items.
4. [Assign the created variety to an item]({{< ref "../assign_variety/index.md" >}}) of your choice.
