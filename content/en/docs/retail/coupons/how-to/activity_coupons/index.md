---
title: "Create and set up activity coupons"
description: "To create discount coupons for activities, follow the steps provided in this article."
lead: ""
date: 2023-12-15T13:50:09+01:00
lastmod: 2023-12-15T13:50:09+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "activity_coupons-2139db87687a9c23bf03058e56484171"
weight: 171
toc: true
type: docs
---

To create discount coupons for activities, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Coupon Types** and choose the related link.         
   A list of all existing coupon types is displayed.
2. Click **New**.
3. In the **General** section, populate the **Code**, **Discount Type**, and the **Discount Amount/%** (depending on the selected discount type).
4. In the **Issue Coupon** section, set the coupon module to **Default**. 
5. Provide a unique reference number in the **Reference No. Pattern**.     
   If you wish to print coupons to hand over to customers, you can define your template or a report to be used for the coupon printing. You can also print coupons externally, with the selected reference number.
6. In the **Validate Coupon** section, set the **Validate Coupon Module** to **Default**.
7. In the **Apply Coupon** section, set the following options:
    - Enable **Multi-Use Coupon** and specify the **Multi-Use Qty.**.
    - Set the **Apply Discount Module** to **ACTIVITY**. 
    - Set **Max Use per Sale** to the desired amount. This amount specifies how many times the unique coupon number can be used.
8. (Optional) Click **Setup** in the ribbon, followed by **Setup Apply Discount**.     
   The **Activity Coupon Item List** window is displayed.
9. (Optional) In the **Apply discount on items with** dropdown, you can set the priority for the discount based on pricing.
10. Once you've completed the setup, enable the coupon type, and then click **Issue Coupon**.     
    The **Request Coupon Qty.** popup window is displayed. 
11. Select the quantity of coupons to be issued, and click **OK**.

#### See also

- [<ins>Coupon troubleshooting<ins>]({{< ref "../../../../troubleshooting/coupon.md" >}})
- [<ins>Discount types<ins>]({{< ref "../../../discounts/explanation/discount_types/index.md" >}})
- [<ins>Create a new coupon<ins>]({{< ref "../new_coupon/index.md" >}})