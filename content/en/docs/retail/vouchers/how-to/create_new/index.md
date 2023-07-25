---
title: "Create a new voucher"
description: "After the voucher type is created, the voucher needs to be purchased. Learn more about the creation process."
lead: ""
date: 2023-07-11T10:02:01+02:00
lastmod: 2023-07-11T10:02:01+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_new-426fa473a22162001f02b91ea909ff52"
weight: 45
toc: true
type: docs
---

After the voucher type is created, the voucher needs to be purchased.

1. The buttons for issuing vouchers should be created in the POS, so that the voucher can be sold. The button must have **Action – ISSUE_VOUCHER** set.   
   The parameters set on this button determine which voucher will be created with which amount, and how much the customer will pay for it.

![parameters](parameters.png)

- **Amount** - when the button is used, if the amount is entered, the voucher will be created with this value.
- **ContactInfo** - If the voucher should contain contact information select True. In this way, at the time of voucher creation in the POS, a window in which contact information can be entered will be displayed.
- **DiscountAmount** - The price of the voucher will be reduced according the discount amount provided in this field.
- **DiscountType** - You can choose between a specific amount, percentage, or no specific type.
- **Quantity** - when the button is used, if quantity is entered, it will be created this number of vouchers.
- **ScanReferenceNos** - This value should be set to **false**.
- **VoucherTypeCode** - Choose which voucher type will be created when the button is used.
{{< alert icon="📝" text="If the information about the voucher type, quantity, amount, discount isn't entered in parameters, when choosing button with the <b>Issue voucher</b> action, a window displays prompting you to provide this information."/>}}

2. After the button has been created, click on it, and the line with a voucher will be added to the sales lines.
3. Navigate to the payment, and click **OK** to end the sale.      
   After the sale is finalized, you will see a new voucher created in the **Retail vouchers** list.