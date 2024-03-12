---
title: "POS Payment View Event Setup"
description: "POS Payment View Event Setup can be used for entering a certain dimension in a POS transaction."
lead: ""
date: 2023-07-12T13:56:27+02:00
lastmod: 2023-07-12T13:56:27+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "payment_view_ref-06cd95e79a1921c3b62f100874a793fb"
weight: 115
toc: true
type: docs
---

POS Payment View Event Setup can be used for entering a certain dimension in a POS transaction. For example, you can create a setup in which you can analyze each transaction based on the Dimension you provide. 

Its most common usage involves attaching a dimension value for post codes, so that you can track the sales per post codes. Nevertheless, it can be used for any dimension that is configured in the **POS Payment View Event Setup**.

You can also define how frequently the dimension pop-up window is going to be displayed in POS transactions.

The **POS Payment View Event Setup** page consists of two or three sections, depending on some of your choices:

In the **General** section you can define which dimension will be used, and how often it will be displayed in POS transactions:

| Field Name  | Description |
| ----------- | ----------- |
| **Dimension Popup Enabled** | If this field is checked, a pop-up window will be displayed when you click the **Payment Method** button.   |
| **Dimension Code**   | Specifies which dimension will pop up in the POS.        |
| **Popup per**  | A popup can be displayed per a **POS Store**, **POS unit** or **All**. </br> It specifies the base for calculation of the frequency used in the **Popup every** field. E.g. If you add **POS Store** here and **3** in the **Popup every** field, a pop-up window will be displayed following every 3 transactions that are carried out in a POS store, in a specified period.  |
| **Popup every** | Specifies the time interval after which the popup will recur. </br> By default, if you wish the pop-up window to be displayed on every transaction, you should set it to **1**. |
| **Popup Start time** | Specifies the starting time for the popup. |
| **Popup End time** | Specifies the ending time for the popup. |
| **Dimension Popup Mode** | Specifies what the popup looks like. You can select between the following layouts: **List**, **Input**, and **Numpad**. |
| **Create New Dimension Values** | If enabled, a new dimension will be created if it doesn't exist in the dimension values list when the user inputs the value in the dimension popup. |
| **Skip Popup on Dimension Value** | Specifies whether the popup will be skipped if a value for the dimensions has already been assigned to the POS sale. |
| **Show Only for Selected POS Units** | If activated, a section will be displayed in the **POS Payment View Event Setup** for you to assign the specific POS units that you wish to use this function on. |

In **Popup Dimension Filter** section you can set up an **Item** or an **Item Category** which needs to be in the sales lines so the popup is displayed in the POS.

Finally, if you've enabled **Show Only for Selected POS Units**, the **POS Unit Filter** panel will be displayed. You can use it to select on which POS units the pop-up window will be displayed when you perform payment for a sale.

{{< alert icon="📝" text="The <b>POS Unit Filter</b> section has replaced the <b>POS Scenarios Profile</b> on the POS unit, so you are no longer required to do any setup on the <b>POS Scenarios Profile Setup</b> on each POS unit individually anymore."/>}}

#### See also

- [<ins>Payment methods<ins>]({{< ref "../../how-to/payment_methods/index.md" >}})
- [<ins>Payment operations<ins>]({{< ref "../../how-to/payment_operations/index.md" >}})