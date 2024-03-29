---
title: "Set up the POS editor"
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
weight: 125
toc: true
type: docs
---
The POS editor gives users the option to set up POS actions and buttons directly from within the POS UI, without having to work in Business Central in parallel. However, to make sure it's operational, you first need to activate it by configuring several options in Business Central. 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Layouts**, and choose the related link. 
2. Create a **New** layout with a **Code** and **Name**.
3. (Optional) Provide a **Template Name** - e.g. **Classic1**.
4. Navigate to the **POS Unit List**.
5. Open a POS unit, and select the newly created layout from the **POS Layout Code** dropdown list.
6. Open the POS, and [<ins>select the layout<ins>]({{< ref "../layout_wizard.md" >}}) that best suits your business needs.     
   A blank/empty layout without any buttons is displayed. If you wish to predefine buttons, follow the instructions in the **Next steps** section below.

#### See also

- [<ins>POS editor<ins>]({{< ref "../../explanation/pos_editor/index.md" >}})
- [<ins>Create buttons in POS menus<ins>]({{< ref "../new_button/index.md" >}})
- [<ins>Create POS menu filters<ins>]({{< ref "../menu_filters/index.md" >}})