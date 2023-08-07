---
title: "Create a POS theme"
description: "Refer to this guide if you wish to create a new custom POS theme."
lead: ""
date: 2023-07-11T16:17:49+02:00
lastmod: 2023-07-11T16:17:49+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pos_theme-b2023e7a461b090532b51b266a068683"
weight: 125
toc: true
type: docs
---

To create a POS theme, you need to do the following:

1. Create a new CSS file for the style.
2. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Web Client Dependencies**, and choose the related link. 
3. Create a new stylesheet dependency, and name it.
4. Click **Import File**, and import the stylesheet.
5. In the **POS Themes** page, create a new record, name it *ATHEME*.
6. Click **Theme Dependencies** to create a new record for that theme. Add the following information:
   - Set **View** for the **Target Type**.
   - Leave the **Target Code** blank.
   - Leave the **Target View Type** unchanged.
   - Set **Stylesheet** as the **Dependency Type**.
   - Add **ATHEME** in **Dependency Code**.
7. Navigate to the **POS View Profile** in the POS unit, and change the theme accordingly. For each **POS View Profile** that requires this theme, set the **POS Theme Code** to **ATHEME**.      
