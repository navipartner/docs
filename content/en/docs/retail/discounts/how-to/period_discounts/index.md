---
title: "Set up period discounts"
description: ""
lead: ""
date: 2023-07-05T17:26:43+02:00
lastmod: 2023-07-05T17:26:43+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "period_discounts-87f592416abc7b6fd2e1ba824b14c3ce"
weight: 999
toc: true
type: docs
---

Period discounts can be used when there are periods of time during which some items have different (lower) prices. Period discounts allow users to set up that period and prices which items will have for its duration. After the period expires, the item price reverts to its default state.

To set up period discounts, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Period discount**, and choose the related link.             
   The **Period Discount List** is opened as a result. 

2. To create a new period discount, chose **New** from the ribbon.     
   The **Period Discount** card is opened.

3. Insert the necessary information in the **General** tab:

| Field Name      | Description |
| ----------- | ----------- |
| **Code**       | The unique code for a period discount.     |
| **Description**   | The short description of a period discount.        |
| **Status**  | After all the necessary data for period discount is inserted, the status of the period discount needs to be changed to **Active**. If there is need to disable the period discount, the status has to be changed to **Closed**. |
| **Block Custom Discount** | If enabled, the custom discounts will be blocked for items from period discount lines. |

4. Insert the necessary information in the **Conditions** tab:

| Field Name      | Description |
| ----------- | ----------- |
| **Starting Date**       | The date on which the period discount will become active.     |
| **Closing Date**   | The date until which the period discount will be active.        |
| **Starting Time**  | The time of day from which the period discount will become active. |
| **Closing Time** | The time of day until which the period discount will be active. |
| **Period Type** | The period in a week during which the period discount is active. You can choose between: **Every day** (period discount is active every day); **Weekly** (it will be possible to chose a day of the week when the period discount will be active). |
| **Customer Disc. Group Filter** | If the period discount is active only for certain customers, you should select their customer discount group in this field. |

5. Insert the **Item No.** and **Period Price** in the **Period Discount Lines**.