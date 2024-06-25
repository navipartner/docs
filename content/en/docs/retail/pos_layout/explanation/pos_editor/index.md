---
title: "POS Editor"
description: "The POS Editor is a collection of options for customizing the POS screen. It contains labels that correspond to customizable areas on the POS screen, such as Sale Lines and Totals."
lead: ""
date: 2023-12-13T12:39:58+01:00
lastmod: 2023-12-13T12:39:58+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pos_editor-b3051d6f308475fc1f93aaf64382286a"
weight: 126
toc: true
type: docs
---

The POS (Frontend) Editor is a collection of options for customizing the POS screen, located in the ribbon up-top. It contains labels that correspond to customizable areas on the POS screen, such as Sale Lines and Totals.

You can bring up the POS editor by pressing the <image src="Images/cog.PNG" width="30" height="30"> button at the bottom right corner of the screen. 

{{< alert icon="📝" text="The POS Editor is also used for customizing the NP Retail POS mobile app layout."/>}}

The following screen areas can be customized on the Login view and in the Sale view respectively: 

## Login view editor

### Logo

You can upload a desired logo or provide a URL path to it. The logo will be displayed on the login screen only. If needed, you can change the logo or clear it later. 

### Panel Rows

Use the panel rows to select the content that will be displayed in the box on the left side of the screen, as well as the order in which it is listed. For example, the box can contain information on the last performed sale, balance, and the code of the salesperson who has conducted the sale. It is also possible to select the font size for the box content.

### Panel Bottom Line

You can also select which content is going to be displayed in the panel footer, e.g. the number of the POS unit that has performed the previous sale. As with the **Panel Rows**, you can choose the font size and the order of the textual components.

### Footer

Like the title suggests, you can modify the content of the POS login view footer. The values included by default are data on the last sale and the current date.

## Sale view editor

### Grids

The **Grids** option allows you to choose how many columns and rows each of the POS menus (*SALE-LEFT*, *SALE-TOP*, and *SALE-BOTTOM*) will contain. This option is especially useful when you want to make room for [<ins>new buttons<ins>]({{< ref "../../how-to/new_button/index.md" >}}) on the screen. If, while defining new buttons in the grid, you've left any undesired empty spaces, you can remove them all simultaneously via the **Remove Empty Buttons** option.

### Sale Lines

**Sale Lines** lets you choose which item-related data should be included when adding items in the cart. 

  ![sale_lines](Images/sale_lines.PNG)

You can also change the font size of the column titles.

### Totals

**Totals** lets you choose which amounts should be included in the Sale Lines footer area, e.g. total amount, the VAT amount, etc. You can also edit their respective labels, and change font sizes, if needed. Additionally, it's possible to rearrange their order by dragging and dropping them to a different place in the dropdown list. 

### Product Panel

The Product Panel section is located below the Sale Lines, and above the SALE-LEFT part of the POS screen. The **Product Panel** option in the POS Editor ribbon lets you choose which product data should be included on the POS screen, e.g. Unit Cost, Quantity, etc.

You can also change the font size and rearrange the product information order by dragging and dropping each of them to a different place in the dropdown list. 

### Footer

The Footer section is located at the very bottom of the POS screen. It can contain information such as Date, Salesperson Code, and so on. The **Footer** option in the POS Editor ribbon allows you to choose the piece of information you wish to be included there. 

As is the case for most other POS Editor options, you can rearrange information order, and change the font size. You can also choose the content alignment (e.g. left, center, left).

### POS Layout and Template dropdowns

The **Layout** dropdown contains a list of layouts that were previously created in the **POS Layouts** administrative section in Business Central, as well as the layouts created and saved with the help of POS Layout Setup Wizard. You can choose any available layout and edit it however you wish.

The **Template** dropdown contains the list of available templates. Changing a template mid-setup can rearrange some of the options you've customized.

   ![layout_and_template](Images/layout_and_template.PNG)

### Other options

- Once you're satisfied with your customizations, you can **Save** them. 
- Alternatively, you can **Clear Changes**, and start anew.
- The <image src="Images/cog.PNG" width="30" height="30"> icon brings up **Global Settings** which are intended for advanced users.
- The <image src="Images/weird_icon.PNG" width="30" height="30"> icon opens the [<ins>POS Layout Setup Wizard<ins>]({{< ref "../../how-to/layout_wizard/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/TOnYujxa7wc?si=pWIaJMF9Y0YYZmGQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

#### See also

- [<ins>POS editor<ins>]({{< ref "../pos_editor/index.md" >}})
- [<ins>Create buttons in POS menus<ins>]({{< ref "../../how-to/new_button/index.md" >}})
- [<ins>Create POS menu filters<ins>]({{< ref "../../how-to/menu_filters/index.md" >}})
- [<ins>Use the POS Layout Setup Wizard<ins>]({{< ref "../../how-to/layout_wizard/index.md" >}})