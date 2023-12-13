---
title: "POS screen contents"
description: "The POS screen consists of POS views, POS menu, and POS submenus. Learn more in this article."
lead: ""
date: 2023-07-07T13:41:42+02:00
lastmod: 2023-07-07T13:41:42+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "sections-5e8f8be78f59ab2004d2dad894ed9fe6"
weight: 126
toc: true
type: docs
---

![pos_menu_views](pos_menus.png)

## POS views

The POS view is the layout of the POS screens. Currently, we have a standard layout that is ready to be used by any operation. We can also customize it for specific needs of a particular business. Our layouts are divided into two main sections: 

- POS Sales View - mainly used for listing the items that are added to the cart.

- POS Payment View - its main purpose is to check out customers and accept one of the payment types.

### POS default views

In the **POS Default Views** administrative section you can configure which POS views are used by default on all or on some of the available POS units.

You can map **Login**, **Payment**, **Sale**, **Balance**, **Locked**, and **Restaurant** POS view types to specific **POS View Codes**, in order to make a personalized POS view selected by default for specified POS units. 

![pos_default_view](pos_default_view.PNG)

## POS menu

POS menus are used for defining the interface used in the POS login view, sales view, and payment view. All menus can be divided into main menus and supporting menus.  

The main menus are displayed in the POS view and those are:

### Login View

![POSmenu](LOGIN.png)

### Sales View

This menu usually consists of buttons created for printing and switching from one POS unit to another. 

- SALE-LEFT
- SALE-TOP
- SALE-BOTTOM

![SALE](SALE.png)

Sale menus are used for adding buttons which will allow users to create, modify and delete sales lines, create sales documents, and print documents.

### Payment View

![PAYMENT](PAYMENT.png)

Payment menus contain buttons which allow users to create, modify and delete payment lines. Additional [buttons]({{< ref "../../how-to/new_button/index.md" >}}) can be added.

- PAYMENT-LEFT
- PAYMENT-TOP
- PAYMENT-BOTTOM

It's also possible to create support menus (popup menus).

![POPUP](POPUP%20MENU.png)

All menus are created in the **POS Menus** page in Business Central.
This page contains the list of all created menus. Menus can be defined for all POS units or for specific ones, in which case it is necessary to provide the **POS Unit No.** of that specific POS unit. It is also possible to provide access for certain menus to specific salespeople only, in which case the **Salesperson code** needs to be provided as well.  

## POS submenus

It's possible to create a POS menu, and use it as a submenu in a POS button. In that scenario, you can set the **Action Type** to **Popup Menu**, and the **Action Code** to the menu you've created. 

![pos_menu_sale_top](pos_menu_sale_top.png)

