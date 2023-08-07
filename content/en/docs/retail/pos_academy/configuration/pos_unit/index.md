---
title: "Set up POS units"
description: "A POS unit is a central part of the Retail solution. It consists of hardware and software components that enable services and item sale transactions at retail locations."
lead: ""
date: 2023-08-07T10:18:47+02:00
lastmod: 2023-08-07T10:18:47+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pos_unit-9dc8c8c19a197d4cf46cb7b5223b98ac"
weight: 17
toc: true
type: docs
---

A POS unit is a central part of the Retail solution. It consists of hardware and software components that enable services and item sale transactions at retail locations. In brief, POS units automate the transaction process and tracking of important sales data. As the next step of the POS Academy course, two POS units in the Denmark branch store need to be created and set up.  

To create new POS unit, follow the provided steps: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter POS Unit List, and choose the related link. 
2. Click **New** to create the first POS unit. 
   The **POS Unit Card** is opened. 
3. Populate the necessary fields. 

| Field Name      | Description |   Example    |
| ----------- | ----------- | ----------- |
| **No.** | The unique code for the POS unit. | **01** |
| **Name** | The name of the POS unit. | **POS Unit DK-01**  |
| **POS Store Code** | The POS Store to which the POS Unit is attached. | **01** |
| **POS Default POS Bin** | The payment bin (cash drawer) that will be used by the POS unit. It’s recommended to use the same number as the one provided in the POS Unit No. | **01** |
| **Department Code** | The global dimension assigned to all entries from the store. As the POS unit is attached to POS store 01, dimension 01 is used. If the business needs to track transactions in the General Ledger per POS unit, you can define subdimensions for analysis purposes. | **01** |

{{< alert icon="📝" text="A structured global dimension for the department can be as follows: 1. Level 1 = Dimension value 01; 2. Sub-level = Dimension value PU01 & PU02. By using Analysis by Dimensions, you can report on different levels as well as in total for the POS Store 01."/>}}

| Field Name      | Description |   Example    |
| ----------- | ----------- | ----------- |
| **Project Code** | A global dimension. | Global Dimension 2 is not used by Bring It to You Retail Store Ltd. |
| **POS Type** | The type of POS Unit to be used.  | **Full/Fixed** |
| **Status** | The status of the POS unit. | The field is updated automatically by the system. |

{{< alert icon="📝" text="When creating the 2nd POS Unit for Bring It to You Retail Store Ltd, make sure that the value in the <b>No.</b> field is different than the one used for the first POS unit."/>}}

After setting up the POS units, you need to also configure the relevant POS profiles. 