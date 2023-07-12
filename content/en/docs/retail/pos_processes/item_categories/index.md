---
title: "Item categories (reference guide)"
description: ""
lead: ""
date: 2023-07-12T13:49:53+02:00
lastmod: 2023-07-12T13:49:53+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "item_categories-87266ed9134ca63ea6de3bd5d4920d8a"
weight: 999
toc: true
type: docs
---

Item categories are defined in the **Item Category Card** by defining the following fields and options:

| Field Name      | Description |
| ----------- | ----------- |
| **Code** | Specifies the identifier of the entire category. |
| **Description** | Specifies the item category's description. |
| **Parent Category** | Specifies the higher level of the category to which this category is linked. | 
| **Item Template Code** | It's possible to predefine some default values when creating an item using this specific category. You can preset a different unit of measure, posting setup, the price including VAT, and so on. |
| **Global Dimension 1 & Global Dimension 2** | These dimensions can be preset, so the item will inherit them. |
| **Blocked** | You can block the category so that it can't be assigned to an item. Typically, you can block the first level, which results in the parent category being used as a header. This also happens if the category is no longer being used.  |
| **Main Category** | Here, you can define the logic of the first level, i.e. use the main category as sort of a header. |
| **Attributes** | You can preset different attributes (e.g. color, size or another specific property like **Item Type**) to the category. When an item assigned to that category is created, it will inherit the attributes automatically. | 
