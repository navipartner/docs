---
title: "Set up item categories"
description: "When creating item categories, the same item category card is used for creating both parent and children item categories."
lead: ""
date: 2024-03-18T09:37:09+01:00
lastmod: 2024-03-18T09:37:09+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "item_category_setup-a3b0030f57f6834f130e49b387140c9e"
weight: 113
toc: true
type: docs
---

When creating item categories, the same item category card is used for creating both parent and children item categories. To set up item categories, follow the provided steps:

## Create a parent item category

To create a new parent item category, follow the provided steps:

1.	Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Item Categories**, and choose the related link.     
    A list of all existing **Item Categories** is displayed.
2.	Click **New**.    
    The **Item Category Card** pop-up window is displayed.
3.	For the parent item category, populate the following fields in the **General** section:

|  Field Name  |   Description  |  Example    |
| ----------- | ----------- | ----------- |
| **Code**  | A unique code for the item category. | **SHOP** |
| **Name**  | The short description of the item category. | **Shop Items** |
| **Parent Category**  | If there’s a category that is the parent to this one, it should be specified here. | Leave it blank. | 
| **Item Template Code** | The code used for referencing the item template added to the item category. | Leave it blank. | 
| **Global Dimension 1 Code** | A Dimension can be attached to the item category. |  Leave it blank. | 
| **Global Dimension 2 Code** | A Dimension can be attached to the item category. |  Leave it blank. | 
| **Blocked** | If blocked, you are not able to add a parent (header) to an item. The category attached to item is done at the child level. | Activated |
| **Main Category** | The main category is used when converting the Item Group from NP Retail into an Item category. In an Item group, there is a MAIN group which is the highest level and used only for reporting purposes and not active as such. | Disactivated | 
| **Main Category Code** | The main category code is the equivalent to the MAIN Item Group from NP Retail. Currently, it is used only if converting from an NP Retail Item Group into an Item category. |  Leave it blank. | 

4.	Fill all necessary fields in the **Attribute** section.

|  Field Name  |   Description  |  Example    |
| ----------- | ----------- | ----------- |
| **Attribute** | You can create an attribute that is called Type and assign a default value of SHOP to it. In this way, in the **Item List**, you can use the filtering function to retrieve items with the SHOP value only. | Leave it blank. | 
| **Default Value** | If you set the **Attribute Type**, you can set SHOP as the default value. | Leave it blank. | 
| **Unit of Measure** | If you set an attribute (a property) that uses a Unit of Measure, you can set a specific Unit of Measure at this level. | Leave it blank. | 
| **Inherited From** | Item attributes for parent item categories are inherited by child item categories. | Leave it blank. | 

## Create a child item category

To create new child item category, follow the same steps as above:

1.	Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Item Categories**, and choose the related link.     
    A list of all existing **Item Categories** is displayed.
2.	Click **New**.    
    The **Item Category Card** pop-up window is displayed.
3.	For the parent item category, populate the following fields in the **General** section:

|  Field Name  |   Description  |  Example    |
| ----------- | ----------- | ----------- |
| **Code**  | A unique code for the item category. | **GARMENT** |
| **Name**  | The short description of the item category. | **Garment Items** |
| **Parent Category**  | If there’s a category that is the parent to this one, it should be specified here. | **SHOP** | 
| **Item Template Code** | The code used for referencing the item template added to the item category. | **GAR** | 
| **Global Dimension 1 Code** | A Dimension can be attached to the item category. |  Leave it blank. | 
| **Global Dimension 2 Code** | A Dimension can be attached to the item category. |  Leave it blank. | 
| **Blocked** | If blocked, you are not able to add a parent (header) to an item. The category attached to item is done at the child level. | Disactivated |
| **Main Category** | The main category is used when converting the Item Group from NP Retail into an Item category. In an Item group, there is a MAIN group which is the highest level and used only for reporting purposes and not active as such. | Disactivated | 
| **Main Category Code** | The main category code is the equivalent to the MAIN Item Group from NP Retail. Currently, it is used only if converting from an NP Retail Item Group into an Item category. |  Leave it blank. | 

4.	Fill all necessary fields in the Attribute section.

|  Field Name  |   Description  |  Example    |
| ----------- | ----------- | ----------- |
| **Attribute** | Attributes help group and filter items. | **FABRIC**; You can create an attribute that is called **FABRIC** so that garments of same materials can be grouped. Also, if **TYPE** was created in parent category, then it will inherit this attribute as well. | 
| **Default Value** |  | **COTTON** | 
| **Unit of Measure** | If you set an attribute (a property) that uses a Unit of Measure, you can set a specific Unit of Measure at this level. | Leave it blank. | 
| **Inherited From** | Item attributes for parent item categories are inherited by child item categories. | **INHERITED** | 

### Item template example

![item_category3](item_category3.PNG)

### References

- [<ins>Microsoft documentation - How to category items in the inventory<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/inventory-how-categorize-items)
- [<ins>Microsoft documentation - How to work with item attributes<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/inventory-how-work-item-attributes)
- [<ins>Microsoft documentation - How to categorize items<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/inventory-how-categorize-items)