---
title: "Create new buttons in the MPOS menu"
description: "Refer to this article to learn how to create new buttons in the MPOS menu."
lead: ""
date: 2023-07-06T14:47:56+02:00
lastmod: 2023-07-06T14:47:56+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "add_buttons-66236ce5d8dfdfb94445f31731d79f6e"
weight: 236
toc: true
type: docs
---

To create new buttons in the NP Retail POS mobile app, make sure the prerequisite is met, and follow the provided steps:

#### Prerequisite

- Activate the [<ins>MPOS editor<ins>]({{< ref "../activate_mpos_editor/index.md" >}}).

#### Procedure

1. Open the POS with the MPOS layout in which you want to create buttons from your desktop/browser version of Business Central.
   
   {{< alert icon="📝" text="Although you can't edit buttons and actions on your mobile device directly, all changes performed on the desktop are applied in the NP Retail POS mobile app upon reload."/>}}

2. Open the [<ins>MPOS Editor<ins>]({{< ref "../../../pos_layout/explanation/pos_editor/index.md" >}}) by clicking <image src="Images/cog.PNG" width="30" height="30">.
3. Click on an empty cell in the MPOS screen area you wish to add the button to, followed by **Edit** in the dropdown list that is displayed. You can also edit an existing button, as presented in the screenshot below.     
   The **Edit Button** window is displayed. It contains various customizable elements for buttons.     

   ![edit_mpos_button](Images/edit_mpos_button.PNG)

4. Provide the **Caption**, and make sure you've attached the desired POS **Action** to it.     
   If the POS action you need doesn't exist yet, you can [<ins>create it<ins>]({{< ref "../../../pos_processes/reference/pos_actions_ref/index.md" >}}).
5. (Optional) You can also provide an image for the button background, change its color, and even add a password that will be required before the button’s action is triggered.
6. Once you’re satisfied with your changes, click **Save**.     
   The button is now displayed in the selected MPOS screen area.
7. Open the NP Retail POS mobile app to view the changes on your mobile device.      
   
   {{< alert icon="📝" text="You may need to refresh the app for the changes to take effect."/>}}