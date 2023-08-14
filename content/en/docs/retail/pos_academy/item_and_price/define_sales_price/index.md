---
title: "Sales Price List setup"
description: "Add a new entry in the Price List Lines administrative section."
lead: ""
date: 2023-08-14T13:52:09+02:00
lastmod: 2023-08-14T13:52:09+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "define_sales_price-9dfeaac21fac8dacef74c2e6cd3a650c"
weight: 32
toc: true
type: docs
---
Add a new entry for the item **10010** in the **Price List Lines** administrative section, and populate the following fields with the values provided below:

|  Quantity  |  Unit Price  |  Example | 
| ----------- | ----------- | ----------- | 
| **Code** | A code is automatically generated for the **New Price List** page. | **S00009** |
| **Description** | A short description for the sales price scheme. | **Multiple Prices** | 
| **Assign-to Type** | Specify to whom the price list applies. You can choose between: **All Customers**; **Customer-specific**; **Customer Price Group**; **Customer Disc. Group**; **Campaign**; **Contact-specifics** | **All Customers** |
| **Assign-to No.** | You can insert a code for specific groups other than ALL Customers. | Leave it blank. | 
| **VAT** | Specify which field is displayed in the **Detail** section. It can be **Price & Discount**, **Price**, or **Discount**. | **Price** |
| **Status** | The status of the price scheme. | **Active** |
| **Currency Code** | The currency code of the price list. | Leave it blank. | 
| **Starting/Ending Date** | The date range for the scheme. |  | 
| **Line Defaults**  | You can specify whether it’s possible to change the values in the fields on the price list lines that contain the default values from the header. This does not affect the ability to allow line or invoice discounts. |   |
| **Allow Invoice Disc.** | You can specify whether the invoice discount is allowed. You can change this value on the lines. |   |
| **Allow Line Disc.**  | You can specify whether the line discounts are allowed. You can change this value on the lines.  |   |
| **Lines** | You can define the details of multiple lines and the unit price that applies to them.  |  |

The following actions are available:

- **Verify Lines** – Check the data consistency in the new and modified price list lines, and suggest resolutions in case of conflicts (e.g., delete duplicate lines) and set the **Price List** to Active when the verification is complete. 
- **Copy Lines** – Copy the lines from the existing price list. New prices can be adjusted by a factor and rounded differently. Change the **Price List Status** to **Draft** to run this action.
- **Suggest Lines** – Create the sales price list lines based on the unit price in the Product Card (e.g., line or resource). Change the **Price List Status** to **Draft** to run this action.
