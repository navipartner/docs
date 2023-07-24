---
title: "Create a new POS unit (by using an existing one as reference)"
description: ""
lead: ""
date: 2023-07-11T14:24:09+02:00
lastmod: 2023-07-11T14:24:09+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_pos_unit-dfdf88af3f0712feec1004f40b16b53f"
weight: 12
toc: true
type: docs
---

As soon as you have at least one POS unit in the system, you can use configurations and data within as a source of information for creating a new one with ease. 

Each [POS store]({{< ref "../../../pos_store/intro.md" >}}) can contain multiple POS units. Most of the time, these units have an almost identical setup, the difference being their number, (since they have to be unique) and [payment bin]({{< ref "../payment_bins/index.md" >}}) (virtual representation of a cash register, or a safe). To create a new POS unit, follow the provided steps:

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

5. Open the **Default POS Payment Bin** dropdown list, and then **Select from full list**.       
   If there are no payment bins available, [create a new one]({{< ref "../payment_bins/index.md" >}})
6. Click **New** or **Edit List**, and add an entry for the new payment bin.    
   Make sure it has the same **POS Store Code** as the other payment bins used with that POS unit.  
7. (Optional) Refer to the [relevant articles]({{< ref "../../../pos_profiles/intro.md" >}}) for configuring **Profiles**, if you wish them to be different than the ones defined in the former POS unit.

<iframe width="560" height="315" src="https://www.youtube.com/embed/LLJWAW0QFOc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Next steps:

### Link POS unit to user ID

After you create a POS unit, you need to link it to the POS user's ID before it can become fully operational.

1. Navigate to **User Setup**.   
   The easiest way to achieve this is by using the built-in search functionality.
2. In the **User Setup** screen, fill out all necessary fields.  
   Make sure you've added the number of the newly-created POS unit in the **POS Unit No.** field.

The new POS unit is created, attached to the [POS store]({{< ref "../../../pos_store/how-to/new/index.md" >}}), and ready to be used.

