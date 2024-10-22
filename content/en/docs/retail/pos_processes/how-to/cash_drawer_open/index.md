---
title: "Configure an opening mechanism for a POS unit cash drawer"
description: "This topic walks you through the processes of setting up the cash drawer to automatically open after each sale using the POS Scenarios Profile on the POS unit."
lead: ""
date: 2023-07-11T12:34:46+02:00
lastmod: 2023-07-11T12:34:46+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "cash_drawer_open-b00e2bd9bafb8ba427c0a23f6ecdaf33"
weight: 111
toc: true
type: docs
---

This topic walks you through the processes of setting up the cash drawer to automatically open after each sale using the **POS Audit Profiles** on the POS unit. 

There's two methods for setting up an opening mechanism for a cash drawer:

- With a template
- With OPOS

## Activate the function to eject cash drawer in NP Retail

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Audit Profiles**, and choose the related link.      
   Alternatively, you can navigate to the **POS Unit Card** and drill down to the **POS Audit Profile** field.
2. On the **POS Audit Profile** page, activate the **Bin Eject After Sale** toggle switch.
3. Make sure the **Bin Eject After Sale** toggle switch is activated for audit profiles of all POS units that have the opening mechanism set for the cash drawer.


## Configure an opening mechanism for a POS unit cash drawer with a template

To configure an opening mechanism for a POS unit cash drawer with a template, make sure the prerequisites are met, and follow the provided steps:

### Prerequisites

- Have at least one existing [<ins>POS unit<ins>]({{< ref "../create_pos_unit/index.md" >}}) in the system.
- Have a [<ins>POS payment bin<ins>]({{< ref "../payment_bins/index.md" >}}) linked to the POS unit.
- Have the cash drawer connected to the receipt printer.  

  {{< alert icon="💡" text="The cable between the cash drawer and receipt printer needs to be installed correctly. The end with the label <b>Printer</b> has to go into the receipt printer."/>}}

### Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Unit List**, and choose the related link.     
   A list of all existing POS units is displayed.  
2. Click the POS unit you wish to configure the cash drawer opening mechanism for.
3. Click the dropdown next to the **POS Scenarios Profile** and then **Select from full list**.  
4. Click **New**, or select an existing profile, then click **Manage** followed by **Edit**.
5. Select the **POS Scenarios Set Entries** line with **Workflow Code** **FINISH_SALE**.
6. Click **Manage**, and then click **POS Scenario Steps**.
7. Add **EjectPaymentBin** in **Subscriber Function**.
8. Navigate back and select the edited **POS Scenarios Profile** for the POS unit.
9. Navigate back to the **POS Unit** card.
10. Click the dropdown next to the **Default POS Payment Bin** and then **Select from full list**.  
11. Click **Edit List**.
12. In the field **Eject Method** input **TEMPLATE**, then click **OK**.

## Configure an opening mechanism for a POS unit cash drawer with OPOS

This topic section walks you through the process of setting up the POS Payment Bin to use OPOS to open the Cash Drawer through the POS.

### Prerequisites

- Have at least one [<ins>POS unit<ins>]({{< ref "../create_pos_unit/index.md" >}}).
- Have a [<ins>POS payment bin<ins>]({{< ref "../payment_bins/index.md" >}}) attached to the POS unit.
- Have the cash drawer driver installed for the specific cash drawer. 
- Have the OPOS CCO installed ([<ins>the 1.14.001 CCO installer<ins>](http://monroecs.com/oposccos_current.htm)).

{{< alert icon="💡" text="Since different drivers are used for opening and handling cash drawers, there are different ways in which you can locate the name of the cash drawer locally on the POS. You can either set the <b>Logical Device Name</b> in the <b>Cash Drawer Driver</b> or in the <b>Registry Editor</b>."/>}}

  
### Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Unit List**, and choose the related link.     
   A list of all existing POS units is displayed.  
2. Click the POS unit you wish to configure the cash drawer opening mechanism for.   
   The **POS Unit Card** is displayed. 
3. Click the dropdown next to the **Default POS Payment Bin** and then **Select from full list**.  
4. Click **Edit List**.
5. In the field **Eject Method** input **OPOS**.
6. Click **Eject Method Parameters**.     
   A pop-up window is displayed.
7. In the **Value** field of the pop-up window provide the **Logical Device Name** of the OPOS printer on the POS.      
   The POS unit with this POS payment bin is now using OPOS whenever opening the drawer in POS.

#### See also

- [<ins>Create a new POS unit<ins>]({{< ref "../create_pos_unit/index.md" >}})
- [<ins>Set up POS payment bins<ins>]({{< ref "../payment_bins/index.md" >}})