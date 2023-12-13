---
title: "Create buttons in POS menus"
description: "The POS Editor is a collection of options for customizing the POS screen, located in the ribbon up-top. You can also use it to create new buttons in the POS"
lead: ""
date: 2023-07-07T13:55:38+02:00
lastmod: 2023-07-07T13:55:38+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "new_button-9e67811d913501feefc2d5a8dd97e6cf"
weight: 125
toc: true
type: docs
---

To create new buttons in the POS menu, make sure the prerequisite is met, and follow the provided steps:

#### Prerequisites

- Enable the [<ins>POS Editor<ins>]({{< ref "../activate_pos_editor/index.md" >}}).

#### Procedure

1. Open the POS.    
   The [<ins>POS Layout Setup Wizard<ins>]({{< ref "../layout_wizard/index.md" >}}) is displayed.
2. Select the layout category from the available options, or close the Wizard to create all buttons and options manually.
3. (Optional) If there's no space left, press **Grids** in the POS Editor, and edit the number of rows or columns for the selected screen area to make room for new buttons.
4. Press on an empty cell in the POS screen area you wish to add the button to, followed by **Edit** in the dropdown list that is displayed.     
   The **Edit Button** window is displayed. It contains various customizable elements for buttons.     

   ![new_button](Images/new_button.PNG)

5. Provide the **Caption**, and make sure you've attached the desired POS **Action** to it.     
   If the POS action you need doesn't exist yet, you can [<ins>create it<ins>]({{< ref "../../../pos_processes/reference/pos_actions_ref/index.md" >}}).
6. (Optional) You can also provide an image for the button background, change its color, and even add a password that will be required before the button's action is triggered.
7. Once you're satisfied with your changes, press **Save**.    
   The button is now displayed in the selected POS screen area.

