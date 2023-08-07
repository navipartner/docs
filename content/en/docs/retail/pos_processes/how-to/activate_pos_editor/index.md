---
title: "Activate POS editor"
description: "The POS editor gives users the option to set up POS actions and buttons directly from within the POS UI, without having to work in Business Central in parallel."
lead: ""
date: 2023-07-11T16:09:15+02:00
lastmod: 2023-07-11T16:09:15+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "activate_pos_editor-592a2bb74e78ff5f88c8230aff81df0d"
weight: 111
toc: true
type: docs
---
The POS editor gives users the option to set up POS actions and buttons directly from within the POS UI, without having to work in Business Central in parallel. However, to make sure it's operational, you first need to activate it by configuring several options in Business Central. 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Layout**, and choose the related link. 
2. Create a **New** layout with a **Code**, **Name**, and an adequate **Template** - **Classic1**.
3. Navigate to the **POS Unit List**.
4. Open a POS unit, and select the newly created layout from the **POS Layout Code** dropdown list.
5. Open the POS, and reload by pressing **F5**.     
   A blank/empty layout without any buttons is displayed. If you wish to predefine buttons, follow the instructions in the **Next steps** section below.

## Next steps

### Predefine POS buttons

1. Enter the **Edit mode** by pressing the cog icon in the bottom right corner of the screen.
2. Press **New Layout**.
3. Select a template, give it a **Name**, and make sure the **Default layout** is picked.
4. Exit the **Edit mode** by pressing the cog icon at the bottom right corner of the screen.      
   Users now have an editor layout with buttons.