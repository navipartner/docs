---
title: "Variety setup"
description: "Before varieties are used, you need to apply certain configurations in the Variety Setup administrative section."
lead: ""
date: 2023-07-10T22:49:49+02:00
lastmod: 2023-07-10T22:49:49+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "variety_setup_ref-118711abe9b14ebcc7436fca74ab330a"
weight: 192
toc: true
type: docs
---

Before varieties are used, you need to apply certain configurations in the **Variety Setup** administrative section.

The **General** section contains the following options:

| Field Name      | Description |
| ----------- | ----------- |
| **Variety Enabled**       | This toggle switch should be enabled in order for varieties to work.     |
| **Item Journal Blocking**   | Specifies whether postings can be performed without variants. You can choose between **Allow Non Variant** - a line in the item journal can be posted both with and without a variant code (open mode); **Sale Block Item if Variant** - if the **Entry Type** of the item journal line is **Sale** or **Purchase**, then a **Variant Code** input will be required (loose mode); **Total Block Item if Variants** - An item journal line can't be posted without a **Variant Code** input.      |
| **Variant Description**/ **Variant Description 2**  |  These fields specify how the description on the variant item should be populated. The available options are **Variety Table Setup First 50** - the first 50 characters from the variety table setup will be taken; **Variety Table Setup Next 50** - the first 50 characters from the variety table setup will be taken; **Variety Table Setup First 50 + Item Description 1** - the corresponding description field from the **Item Card** will be taken.   |
| **Create Variant Code From** | Here, you can add a codeunit to copy variant codes from another source. |
| **Custom Description** | If **Activated**, when an item with a variant is selected in sales/purchase lines, the item description will be copied on the sales/purchase line description, and the variant will be copied in **Description 2**.   |
| **Pop up Variety Matrix**  | If selected, the variety matrix will pop up on documents when an item with variants is selected. It applies to documents like Sales Order, Sales Return Order, Purchase Order, Purchase Return Order and Transfer Order. There’s also an individual setup for each document type, so you can choose to activate each type of document if required.   |
| **Variant Std. No. Series**  | This field is used for stating the variant number series. The maximum length is 10 characters.  |
| **Activate Inventory in Variety Lookup on POS** | When you use varieties on POS, there’s a variety lookup on which you can activate the inventory. | 

The **Barcode (Item Ref.)** section can be used both with and without varieties. The following options are relevant for both **Alternative No.** (the default way of using barcodes in NP Retail), and **Item Cross Reference** (Microsoft's standard barcodes) barcode usage methods.

| Field Name      | Description |
| ----------- | ----------- |
| **Create Item Reference Automatically**       | If enabled, the barcode will be created automatically when an item or an item variant is created. The assigned item reference number can be scanned on the POS as a barcode.      |
| **Barcode Type**   | Specifies the type of barcodes that are supported by NP Retail. The following options are available: **Blank** - no barcode will be created; **EAN8** - an EAN8 barcode will be generated (a number series needs to be set up with a length of 7); **EAN13** - an EAN13 barcode will be generated (a number series needs to be set up with a length of 12).     |
| **No. Series (Item)** and **No. Series (Variant)**  | Select the number series that will be used to generate barcodes. The length of the barcode needs to be equal to the selected barcode type - 1 (EAN13 = 12 digits; EAN8 = 7Digits). If the number is left blank, a barcode will not be created.   |
| **Item Ref. Description (Item)** | -  When the item cross reference is created, it's possible to select how the Description field on the item cross reference is filled in. It's possible to select either **Description** or **Description 2** from the **Item Card**.  |
|  **Item Ref. Description (Variant)**   | When the item cross reference is created with a variant, it's possible to select how the description field on the item cross reference is filled in. It's possible to select either **Description** or **Description 2** from the **Item Card**, or **Description 1** or **Description 2** from the variant.  |

In the **View** section, it's possible to hide the inactive values via the designated field if you don't want to show combinations in the matrix form that isn't used on a specific item.

## Variety Fields Setup

From the **Variety Setup** administrative section, under the **Action Tab: Process**, you can configure the variety fields. **Variety Field Setup** allows you to control which field is displayed on the **Variety Matrix** when you are on different pages.  

![varieties2](varieties2.PNG)

On the **Variety Fields Setup** screen, there is an **Action Tab: Insert Default Setup** which simplifies the configuration. Once clicked, the default values will be set on the default tables. If you want to customize the display, you need to manually change the settings or add new tables and fields in the Variety **Fields Setup**. The following fields and options are available:  

| Field Name      | Description |
| ----------- | ----------- |
| **Type** | The following options are available: </br> **Field** - Allows you to specify a table and a field; </br> **Internal** - Allows you to specify a predefined function like inventory, a variant for this specific combination, and item reference barcode. |
| **Table No. + Field No.** | The following options are available: </br> **Field Type** - Specifies the table and field number that you want available in the matrix; </br> **Internal Type** - Specifies the function that you want to show by typing a number from the list above. |
| **Sort Order** | You can create a custom sort order that the fields are listed in. | 
| **Description** | The content specified in this field will be shown in **Show Field** s illustrated below in the example of **Sales Line** (**Table 37**), the field **Quantity** is shown in the **Variety Matrix**. |
| **Validate Field** | If this field is ticked, the data provided in the matrix will be validated in the database. Note that unchecking this checkbox may result in data integrity issues. |
| **Editable Field** | Determines whether the field is editable or not. |
| **Table Default** | When working on a sales order, you will insert items from **Table 37** to the sales lines (standard Business Central table with clothing items).  | 

![varieties3](varieties3.PNG)

#### See also

- [<ins>Set up variety matrix facilities on Sales Orders<ins>]({{< ref "../../how-to/matrix.md" >}})
- [<ins>Create varieties in Business Central<ins>]({{< ref "../../how-to/create_variety.md" >}})
- [<ins>Block a variant<ins>]({{< ref "../../how-to/block_variant.md" >}})