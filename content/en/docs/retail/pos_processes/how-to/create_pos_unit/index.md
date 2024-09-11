---
title: "Create a new POS unit (by using an existing one as reference)"
description: "As soon as you have at least one POS unit in the system, you can use configurations and data within as a source of information for creating a new one with ease."
lead: ""
date: 2023-07-11T14:24:09+02:00
lastmod: 2023-07-11T14:24:09+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_pos_unit-dfdf88af3f0712feec1004f40b16b53f"
weight: 111
toc: true
type: docs
---

A POS unit is a central part of the Retail solution. It consists of hardware and software components that enable services and item sale transactions at retail locations. In brief, POS units automate the transaction process and tracking of important sales data.

As soon as you have at least one POS unit in the system, you can use configurations and data within as a source of information for creating a new one with ease. 

Each [<ins>POS store<ins>]({{< ref "../../../pos_store/intro.md" >}}) can contain multiple POS units. Most of the time, these units have an almost identical setup, the difference being their number, (since they have to be unique) and [<ins>payment bin<ins>]({{< ref "../payment_bins/index.md" >}}) (virtual representation of a cash register, or a safe). To create a new POS unit, follow the provided steps:

## Prerequisites

 - Have at least one POS unit defined in the environment.

## Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Unit List**, and choose the related link.     
   A list of all existing POS units is displayed.  
2. Open the POS unit card you wish to use as a reference for creation of a new POS unit.     
   The **POS Unit Card** popup window is displayed.
3. Click **New**.
4. Populate the necessary fields (except **Default POS Payment Bin**) in the new POS unit by using the first POS unit card as a reference.    
   You can switch back and forth between the two POS unit cards until you're satisfied with your configuration.

    {{< alert icon="💡" text="Make sure that the value in the <b>No.</b> field is different than the one used for the first POS unit."/>}}

    The following fields and options are available:

| Field Name      | Description |  
| ----------- | ----------- | ----------- |
| **No.** | The unique code for the POS unit. | 
| **Name** | The name of the POS unit. | 
| **POS Store Code** | The POS Store to which the POS Unit is attached. | 
| **POS Default POS Bin** | The payment bin (cash drawer) that will be used by the POS unit. It’s recommended to use the same number as the one provided in the POS Unit No. |
| **Department Code** | The global dimension assigned to all entries from the store. If the business needs to track transactions in the General Ledger per POS unit, you can define subdimensions for analysis purposes. | 

{{< alert icon="📝" text="A structured global dimension for the department can be as follows: 1. Level 1 = Dimension value 01; 2. Sub-level = Dimension value PU01 & PU02. By using Analysis by Dimensions, you can report on different levels as well as in total for the POS Store."/>}}

| Field Name      | Description |   Example    |
| ----------- | ----------- | ----------- |
| **Project Code** | A global dimension. | 
| **POS Type** | The type of POS Unit to be used.  | 
| **Status** | The status of the POS unit. | 


5. Open the **Default POS Payment Bin** dropdown list, and then **Select from full list**.       
   If there are no payment bins available, [<ins>create a new one<ins>]({{< ref "../payment_bins/index.md" >}})
6. Click **New** or **Edit List**, and add an entry for the new payment bin.    
   Make sure it has the same **POS Store Code** as the other payment bins used with that POS unit.  
7. (Optional) Refer to the [<ins>relevant articles<ins>]({{< ref "../../../pos_profiles/intro.md" >}}) for configuring **Profiles**, if you wish them to be different than the ones defined in the former POS unit.

<iframe width="560" height="315" src="https://www.youtube.com/embed/LLJWAW0QFOc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Next steps:

### Link POS unit to user ID

After you create a POS unit, you need to link it to the POS user's ID before it can become fully operational.

1. Navigate to **User Setup**.   
   The easiest way to achieve this is by using the built-in search functionality.
2. In the **User Setup** screen, fill out all necessary fields.  
   Make sure you've added the number of the newly-created POS unit in the **POS Unit No.** field.

The new POS unit is created, attached to the [<ins>POS store<ins>]({{< ref "../../../pos_store/how-to/new/index.md" >}}), and ready to be used.

#### See also

- [<ins>POS profiles<ins>]({{< ref "../../../pos_profiles/intro.md" >}})
- [<ins>POS screen contents<ins>]({{< ref "../../../pos_layout/explanation/sections/index.md" >}})
- [<ins>Configure master/slave POS units<ins>]({{< ref "../../how-to/master_slave_pos/index.md" >}})
- [<ins>Configure an opening mechanism for a POS unit cash drawer<ins>]({{< ref "../../how-to/cash_drawer_open/index.md" >}})
- [<ins>Transfer cash between POS units<ins>]({{< ref "../../how-to/bin_transfer_action/index.md" >}})