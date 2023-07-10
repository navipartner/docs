---
title: "Create new buttons in the MPOS menu"
description: ""
lead: ""
date: 2023-07-06T14:47:56+02:00
lastmod: 2023-07-06T14:47:56+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "add_buttons-66236ce5d8dfdfb94445f31731d79f6e"
weight: 999
toc: true
type: docs
---

To create new buttons in the MPOS menu, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Menus** and open the related link. 
2. To add buttons to a menu, select the row in which the menu is and click **Buttons** in the ribbon.
3. Click **New** and insert the necessary data for a button:

 Field Name      | Description |
| ----------- | ----------- |
| **Caption** | The caption that will appear on the button in the POS. |
| **Tooltip** | The text that will be displayed if the cursor is placed on the button.
| **Action type** | The type of action that will be triggered when someone clicks the button. There are five different types: popup menu, action, item, customer, and payment type. |
| **Action code** | The code of the action that will be triggered by clicking the button. |
| **Block** | This field needs to be checked if the action should be blocked. |
| **Background Color** | The color of button in the POS unit. |
| **Caption Position** | The position of the caption on the button (options – **Top**, **Center**, **Bottom**). |
| **Position X** | The number of the position in the x axis of the menu where this button will be positioned. | 
| **Position Y** | The number of the position in the y axis of the menu where this button will be positioned. |
| **Enabled** | You can determine whether the field is enabled in the POS. If some of the necessary actions have been performed, the button will be enabled. For example, if the sales line is entered, the button **Delete Line** will be enabled. |
| **POS unit No.** | If the button needs to be visible only in one POS unit, that POS unit's number needs to be stated here. | 
| **Salesperson Code** | If the button needs to be seen only by one salesperson, the salesperson's code needs to be stated here. |

All data is automatically saved. 