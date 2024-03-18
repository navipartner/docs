---
title: "POS actions for Retail Vouchers"
description: "Learn how the available actions associated with retail vouchers can be used to set up vouchers in the context of a POS store."
lead: ""
date: 2023-08-16T15:00:47+02:00
lastmod: 2023-08-16T15:00:47+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pos_actions_vouchers-0dd5daa8477f2bde9f6592378e45b3e3"
weight: 141
toc: true
type: docs
---

## POS Action on issuing a Gift Voucher: ISSUE_VOUCHER 

![vouchers3](vouchers3.png)

Refer to the table with parameters for the POS Action **ISSUE_VOUCHER**: 

| Field Name      | Description | Example | 
| ----------- | ----------- | ----------- |
| **Amount** | You can fix the value of the voucher to be issued. | **0**  |
| **Contact Info**  | If set to **True**, the system will ask for the customer details to associate the customer details with the voucher. | **False/True** |
| **Discount Amount** | You can preset the discount amount to be given by the shop on selling a voucher. | **0** | 
| **Discount Type** | If the option is set to **Amount**, the value in the **Discount Amount** field will be read as an amount, whereas if the selected option is **Percentage**, the value in the **Discount Amount** field will be read as a percentage. | None | 
| **Quantity** | You can specify the quantity of vouchers that will be created. If not specified, a pop-up window for specifying the quantity to be issued will be displayed. | **0**  |
| **Scan Reference Nos**  | If set to **True**, an additional page will be displayed whereby the reference number of the voucher can be overridden by scanning another number. This field is used is you have pre-printed voucher cards or plastic vouchers which already have a number assigned to them. |  **False/True** |
| **Voucher Type Code** | Specifies which voucher type is set on a POS Menu button. | **GIFTVOUCHER** |

## POS Action on issuing a Credit Voucher: ISSUE_RETURN_VOUCHER

![vouchers4](vouchers4.png)

Refer to the table with parameters for the POS Action **ISSUE_RETURN_VOUCHER**: 

| Field Name      | Description | Example | 
| ----------- | ----------- | ----------- |
| **Contact Info** | If set to **True**, users are prompted to provide the customer details to associate them with the voucher. |   **False/True** |
| **EndSale** | When you create a credit sale, you are giving a voucher in lieu of returning cash to close a return of item. Hence, you need to set it to true to end the sale. | **True** |
| **Scan Reference Nos** | If set to **True**, an additional page from which you can override the reference number of the voucher created by scanning another number. This field is used is you have pre-printed voucher cards or plastic vouchers on which there is already an assigned number. |    **False/True** |
| **Voucher Type Code** | Specifies which voucher type is set on a POS Menu button. The voucher type is created when the button is used. | **CREDITVOUCHER** | 

## POS Action on Redeeming a Voucher: SCAN_VOUCHER

![vouchers5](vouchers5.png)

Refer to the table with parameters for the POS Action **SCAN_VOUCHER**: 
All Voucher issued and redeemed by the same shop use the **SCAN_VOUCHER** action.

| Field Name      | Description | Example | 
| ----------- | ----------- | ----------- |
| **EnableVoucherList** | If set to **True**, when the salesperson is prompted to scan the voucher, they will get a list of open vouchers with the voucher type defined in the parameters. |     **False/True** |
| **EndSale** | If set to **True**, and the voucher value matches the sales value, the sale is automatically completed. | **True** |
| **Reference Nos**  | You can preset the button to accept the specified voucher number only. | Leave it blank. |
| **Voucher Type Code** | Specifies which voucher type is accepted when the button is used. | **Code**  |
