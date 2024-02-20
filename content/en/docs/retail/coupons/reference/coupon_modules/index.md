---
title: "Coupon modules"
description: "There is a variety of modules that handle various uses of coupons. They are described in more detail in this article."
lead: ""
date: 2023-09-26T11:42:30+02:00
lastmod: 2023-09-26T11:42:30+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "coupon_modules-816448d947c46e8e6c7dbe07001a013b"
weight: 999
toc: true
type: docs
---

The way coupons work is by using a combination of different codeunits that are made to issue, validate or apply discounts in a certain way. There is a variety of modules that handle various uses of coupons.

The following modules are currently available:

| Type      | Code |  Action  | Event Codeunit ID | Event Codeunit Name | 
| ----------- | ----------- | ----------- | ----------- | ----------- |
| **Issue Coupon** | **DEFAULT** | Used for issuing coupons; has specific condition for redeeming. | **6151592** | **NPR NpDc Module Issue: Default** |
| **Issue Coupon** | **GS1** | Used for the GS1 module. GS1 coupons are issued by suppliers, not from our system. | **6060028** | **NPR NpDc Module Issue GS1** |
| **Issue Coupon** | **MEMBER-LOYALTY** | Used for issuing coupons based on the rule established in the Member Management Module. | **6060143** | **NPR MM Loyalty Coupon Mgr** |
| **Issue Coupon** | **ON-SALE** | Used for issuing coupons along with the sale ticket when items are purchased and printed on the POS. | **6151600** | **NPR NpDc Module Issue: OnSale** |
| **Issue Coupon** | **PRINT** | Used for issuing coupons and printing them. | **6151598** | **NPR NpDc Print Module** |
| **Validate Coupon** | **DEFAULT** | Used for checking whether a coupon is valid within a defined date range. If the **End Date** field is left blank in the **Coupon Card**, it will be valid indefinitely. | **6151593** | **NPR NpDc ModuleValid.: Defa.** |
| **Validate Coupon** | **ITEM_LIST** | Used for checking whether the coupon is valid according to the defined list of items. The items need to be present on the sale line on the POS when performing the sale. | **6151597** | **NPR NpDc Module Valid. Item L.** |
| **Validate Coupon** | **ITEM_LIST_MAG** | Used for checking whether the coupon is valid according to the defined list of Magento items. The Magento items need to be present on the sale in the web shop. | **6014480** | **NPR NpDc Mod. Val. Item L. M.** |
| **Validate Coupon** | **TIME** | Used for checking the date/time frame for the coupon validity. | **6151599** | **NPR NpDc Module Validate: Time** |
| **Apply Discount** | **DEFAULT** | Used for awarding a discount according to the settings on the coupon. | **6151594** | **NPR NpDc Module Apply: Default** |
| **Apply Discount** | **EXTRA_ITEM** | Used for awarding a discount to the selected item, as well as adding the item to POS when the coupon is scanned. | **6151595** | **NPR NpDc ModuleApply: Xtr Item** |
| **Apply Discount** | **EXTRA_ITEM_QTY** | Used for awarding the discount to the specific item selected to be discounted. It also adds the item to the POS when the coupon is scanned. The validation is performed based on the defined quantity. | **6151595** | **NPR NpDc ModuleApply: Xtr Item** |
| **Apply Discount** | **GS1** | Used for awarding the discount according to what has been defined in the GS1 barcode. | **6060085** | **NPR NpDc Module Apply GS1** |
| **Apply Discount** | **ITEM_LIST** | Used for awarding a discount according to the settings/rates set on the **Item List**.  | **6151596** | **NPR NpDc Module Apply ItemList** |

#### See also

- [<ins>Coupon troubleshooting<ins>]({{< ref "../../../../troubleshooting/coupon.md" >}})
- [<ins>Discount types<ins>]({{< ref "../../../discounts/explanation/discount_types/index.md" >}})
- [<ins>Discount coupon setup<ins>]({{< ref "../../how-to/discount_coupon_usecases/index.md" >}})
- [<ins>Create a new coupon<ins>]({{< ref "../../how-to/new_coupon/index.md" >}})
- [<ins>Create and set up activity coupons<ins>]({{< ref "../../how-to/activity_coupons/index.md" >}})