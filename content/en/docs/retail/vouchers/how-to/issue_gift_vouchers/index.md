---
title: "Issue a gift voucher"
description: "Learn how to issue vouchers from the POS through the example of gift vouchers."
lead: ""
date: 2023-08-03T11:16:10+02:00
lastmod: 2023-08-03T11:16:10+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "vouchers-aeeed779b59014f43fd6c9effe520721"
weight: 139
toc: true
type: docs
---

Retail vouchers are a payment type that the voucher owner can use to purchase various goods and services. The most common ones are gift vouchers and credit vouchers. Gift vouchers are mostly sold to customers, while credit vouchers are issued as a refund in the return sale process or a refund for a partially spent gift voucher.

To issue gift vouchers, make sure the prerequisites are met, and follow the provided steps:

#### Prerequisites in Business Central

- The **Gift Voucher Retail Voucher Type** needs to be [<ins>defined<ins>]({{< ref "../../explanation/voucher_types/index.md" >}}) in the company setup.
- The [<ins>**Issue Gift Voucher (General)**<ins>]({{< ref "../../reference/pos_actions_vouchers/index.md" >}}) [<ins>button needs to be set<ins>]({{< ref "../../../pos_layout/how-to/new_button/index.md" >}}).

#### Procedure on POS

1.	Open the POS.
2.	Press **Retail Gift Voucher** followed by **Issue Voucher (General)**.
3.	Choose a gift voucher.    
    A pop-up window is displayed.
4.	Enter **1** in the **Quantity** field.
5.	Press **OK**.      
    A pop-up window is displayed.
6.	Enter **6.000** in the **Amount** field.
7.	Press **OK**.      
    A gift voucher is displayed in the **POS Sales Lines** with **Reference No. 2904100108599** and the Amount **6.000**.
8.	Press **Go to Payment**.
9.	Choose **Cash Payment**.
10.	Click **OK**.      
    The sale is finished, and the gift voucher is issued. You can see information about the voucher you've issued in  **Retail Voucher Entries**.

    {{< alert icon="📝" text="In this example, the parameters for issuing a voucher weren't modified, so the cashier is prompted to provide the voucher quantity and amount. Had the <b>ISSUE_VOUCHER</b> POS action's parameters been specified, the steps 4 thru 7 wouldn't have been necessary. "/>}}


<iframe width="560" height="315" src="https://www.youtube.com/embed/ZPpyT5wZDhc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

#### See also

- [<ins>Voucher types<ins>]({{< ref "../../explanation/voucher_types/index.md" >}})
- [<ins>Create a voucher on a sales order<ins>]({{< ref "../create_new_sales_order/index.md" >}})