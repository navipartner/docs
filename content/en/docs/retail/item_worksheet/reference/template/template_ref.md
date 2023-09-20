---
title: "Item worksheet template"
description: "Refer to this table of available fields and options in the Item Worksheet Template administrative section."
lead: ""
date: 2023-07-06T14:19:51+02:00
lastmod: 2023-07-06T14:19:51+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "template_ref-8f9504a596d5e246c39a27554de61509"
weight: 203
toc: true
type: docs
---

The **Item Worksheet Template** administrative section contains the following options: 

| Field Name      | Description |
| ----------- | ----------- |
| **Name**  | Specifies the name of the worksheet. |
| **Description** | Specifies the description of the template. | 
| **Register Lines** | When checked, a registered item worksheet and the related records will be created. | 
| **Delete Processed Lines** | If checked, all lines will be removed from the item worksheet when successfully registered. | 
| **Item No. Creation By** | Determines how the item number will be created for all new items. The following options are available: </br> - **No. Series In Worksheet** - item numbers are assigned when inserting lines into the worksheet. This option requires the item number series to be set with **Default Nos.** in the **No. Series** table; </br> - **No. Series On Processing** - Item numbers are assigned when registering the lines from the worksheet. This option requires the item number series to be set with **Default Nos.** in the **No. Series** table; </br> - **Vendor Item No.** - This number will be assigned as the item number. It requires the item number series to be set with **Manual Nos.** in the **No. Series Table**; </br> - **Manually** - The item number needs to be manually inserted into the **Item No.** field in the worksheet. This option requires the item number series to be set with **Manual Nos.** in the **No. Series** table. |
| **Item No. Prefix** | This option defines if the prefix will be used when generating the item number. The **Item No.** is limited to 20 characters. The prefix can only be three characters long, followed by a hyphen ("-"). When using the prefix, the item number format will be *XYZ-XXXXXXXXXXXXXXXX*. The following options are available: </br> - **None** - no prefix; </br> - **From Template** - the value from the **Prefix Code** on the template will be used; </br> - **From Worksheet** - the value from the **Prefix Code** in the worksheet will be used; </br> - **Vendor No.** - the vendor code will be used, and if the vendor code is longer than three characters, only the first three characters will be used as the prefix. | 
| **Prefix Code** | A prefix of max three characters can be set here. This is used for the item number prefix when the **From Template** option is selected. | 
| **Error Handling** | Defines the error handling when validating or registering the worksheet lines. |
| **Create Internal Barcodes** | Defines the creation of barcodes when registering the worksheet lines, if varieties are used, only the barcodes for variants will be created based on varieties. The following options are available: </br> - **None** - no barcode will be created; </br> - **As Alt. No.** - the barcode will be created as an alternative item number; </br> - **As Cross Reference** - the barcode will be created as a cross reference number of the barcode type. | 
| **Create Vendor Barcodes** | Defines when the vendor barcodes are used during the line registration. The following options are available: </br> - **None** - no barcodes are created; </br> - **As Alt. No.** - the barcode will be created as an alternative item number; </br> - **As Cross Reference** - the barcode will be created as a cross reference number of the barcode type. |
| **Sales Price Handling** | Defines the processing of sales prices. The following options are available: </br> - **Item** - only the filed unit price will be filled or updated on the **Item Card**, and the sales prices in the item worksheet can only be specified in the local currency; <br> - **Item+Variant** - the price is inserted or updated in the **Sales Price** table, and if the price for a variety is different, an extra line will be inserted for this variety (the price can be in a different currency other than the local one); </br> - **Item+Date** - the price is inserted in the **Sales Price** table using the current work date as the start date, and any price with dates before the work date will have the ending date filled with the work date (the price can be in a different currency other than the local one); </br> - **Item+Variant+Date** - the price is inserted in the **Sales Price** table using the current work date as the start date, and any price with dates before the work date will have the ending date filled with the work date. If the price for a variety is different, an extra line will be inserted for this variety. The price can be expressed in a different currency than the local one. |
| **Purchase Price Handling** | Defines the processing of purchase prices. The following options are available: </br> - **Item** - only the **Last Direct Unit Cost** field will be populated or updated on the **Item Card**, and the purchase price on the **Item Worksheet Line** can only be specified in the local currency; </br> - **Item+Variant** - the price is inserted or updated in the **Purchase Price** table, and if the price for a variety is different, an extra line is inserted for this variety (the price can be in a different currency other than the local one); </br> - **Item+Date** - the price is inserted in the **Purchase Price** table using the current work date as the start date, and any price with dates before the work date will have the ending date filled with the work date (the price can be in a different currency other than the local one); </br> - **Item+Variant+Date** - the price is inserted in the **Purchase Price** table using the current work date as the start date, and any price with dates before or after the work date will have the ending date filled with the work date. If the price for a variety is different, an extra line will be inserted for the variety. The price can be in a different currency than the local one. |
