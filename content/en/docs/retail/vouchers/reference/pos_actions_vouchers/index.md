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

The following POS actions can be added to a POS for the purpose of issuing, returning or scanning vouchers. Refer to the provided tables to see how each action's parameters can be modified to better suit your business needs.

## POS Action on issuing a Gift Voucher: ISSUE_VOUCHER 

![vouchers3](vouchers3.png)

Refer to the table with parameters for the POS Action **ISSUE_VOUCHER**: 

| Field Name      | Description | 
| ----------- | ----------- | 
| **Amount** | Specifies the default amount that the issued voucher will be created with. If the amount is provided here, the cashier will not be prompted to provide the amount when issuing a voucher. | 
| **Contact Info**  | If set to **True**, the cashier will be prompted to ask the customer for contact information that will be attached to the voucher. | 
| **Discount Amount** | You can preset the discount amount to be given by the shop on selling a voucher. | 
| **Discount Type** | If the option is set to **Amount**, the value in the **Discount Amount** field will be read as an amount, whereas if the selected option is **Percentage**, the value in the **Discount Amount** field will be read as a percentage. |
| **Quantity** | You can specify the number of vouchers that will be issued. If the quantity is provided here, the cashier will not be prompted to provide the quantity when issuing vouchers. |
| **Scan Reference Nos**  | If set to **True**, an additional page will be displayed whereby the reference number of the voucher can be overridden by scanning another number. This field is used is you have pre-printed voucher cards or plastic vouchers which already have a number assigned to them. |
| **Voucher Type Code** | Specifies which voucher type will be issued when the POS button is pressed. If left unspecified, the cashier will be prompted to select the voucher type when issuing a voucher from the POS. |

## POS Action on issuing a Credit Voucher: ISSUE_RETURN_VOUCHER

![vouchers4](vouchers4.png)

Refer to the table with parameters for the POS Action **ISSUE_RETURN_VOUCHER**: 

| Field Name      | Description | 
| ----------- | ----------- | 
| **Contact Info** | If set to **True**, users are prompted to provide the customer details to associate them with the voucher. | 
| **EndSale** | When you create a credit sale, you are giving a voucher in lieu of returning cash to close a return of item. Hence, you need to set it to true to end the sale. | 
| **Scan Reference Nos** | If set to **True**, an additional page from which you can override the reference number of the voucher created by scanning another number. This field is used is you have pre-printed voucher cards or plastic vouchers on which there is already an assigned number. |   
| **Voucher Type Code** | Specifies which voucher type is set on a POS Menu button. The voucher type is created when the button is used. | 

## POS Action on Redeeming a Voucher: SCAN_VOUCHER

![vouchers5](vouchers5.png)

Refer to the table with parameters for the POS Action **SCAN_VOUCHER**: 
All Voucher issued and redeemed by the same shop use the **SCAN_VOUCHER** action.

| Field Name      | Description | 
| ----------- | ----------- | 
| **EnableVoucherList** | If set to **True**, when the salesperson is prompted to scan the voucher, they will get a list of open vouchers with the voucher type defined in the parameters. |  
| **EndSale** | If set to **True**, and the voucher value matches the sales value, the sale is automatically completed. | 
| **Reference Nos**  | You can preset the button to accept the specified voucher number only. | 
| **Voucher Type Code** | Specifies which voucher type is accepted when the button is used. | 
