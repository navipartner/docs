---
title: "Voucher types"
description: ""
lead: ""
date: 2023-07-11T09:53:13+02:00
lastmod: 2023-07-11T09:53:13+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "voucher_types-a5569e27d8d01c54d56f7667949e08d9"
weight: 999
toc: true
type: docs
---

Retail vouchers can be used as a payment type in their own right, so the owner of the voucher can use them to purchase various goods and services.

Retailers offer different types of vouchers. The most common ones are gift vouchers and credit vouchers. There are five sections in the **Retail Voucher Type Card**:

- **General**      
  In the **General** section you can define the **Code** and **Description** of a voucher. This section also contains a number of open, closed, and archived vouchers.

- **Send Voucher**

  In the **Send Voucher** section you can define the **Reference No.** - the account number under which the sale of the voucher will be posted. This section also contains the method used for sending the retail voucher. Vouchers can be sent to a printer via email or SMS. The template and the code unit for sending needs to be set up in relation to all methods.

- **Setup Voucher**

In the **Setup Voucher** section you can define voucher amount  (if amount is entered, all vouchers created from this voucher type will be created with value entered in this field), POS stores in which vouchers can be used (if POS store group is entered, voucher can be used only in stores set up in POS store group) and fixed date period during vouchers will be valid (starting and ending date).

- **Validate Voucher**

  If a voucher has a validity period, it needs to be defined in the **Validate Voucher** section. When a voucher is used for payment, the system will check its validity period.

- **Apply Payment**

  Rules for redeeming vouchers are created in the **Apply Payment** section. In this section there are two modules for validating vouchers. 

  - **Default** - It implies that the voucher will be redeemed in total. If the sales amount is lower than the voucher amount, you can define that a credit voucher will be created as a refund in **Setup** > **Setup Apply Payment**.
  - **Partial** - It implies that the voucher amount will be used partially, and that the leftover amount can be used another time.

<iframe width="560" height="315" src="https://www.youtube.com/embed/ZPpyT5wZDhc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>