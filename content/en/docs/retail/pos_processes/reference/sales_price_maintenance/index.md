---
title: "Sales price maintenance"
description: "Sales price can be maintained for all customers, a specific customer, campaign or a group of specified customers."
lead: ""
date: 2023-07-12T14:01:43+02:00
lastmod: 2023-07-12T14:01:43+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "sales_price_maintenance-eeae5a64ceb45d152021afc6e72357de"
weight: 115
toc: true
type: docs
---

Sales price can be maintained for all customers, a specific customer, campaign or a group of specified customers. For instance, prices for staff are often based on the **Last Direct Cost** to which a factor is added. Therefore, each time the **Last Direct Cost** changes, the price for staff should be updated as well. This process is maintained by the sales price maintenance feature. 

The following fields and options are available:

| Field Name      | Description |
| ----------- | ----------- |
| **ID** | Specifies the sequential number used for identification of the sales price maintenance entry. |
| **Sales Type** | Specifies the sales type for which the corresponding sales price is created. This is where you select how many entities will be affected by the given sales price (all customers, a specific customer, customer price group or a designated sales price campaign). |
| **Sales Code** | Specifies the code used for retrieving specific entities from the **Sales Type** selected in the previous field. |
| **Price List Code** | Specifies the code of the price list that is retrieved and affected by this price maintenance scenario. |
| **Currency Code** | Specifies the code of the currency in which the prices are expressed. |
| **Prices Including VAT** | Specifies whether the prices are VAT-inclusive. |
| **VAT Bus. Posting Gr. (Price)** | Retrieve the VAT percentage if the price is VAT-inclusive. |
| **Allow Invoice Disc.** | Specifies if the invoice discount is set on the sales price for this group. |
| **Allow Line Disc.** | Specifies if the line discount is set on the sales price for this group. | 
| **Internal Unit Price** | Specifies the price on which the calculation is based. |
| **Factor** | Specifies the factor for the unit price. | 

#### See also

- [<ins>Pricing<ins>]({{< ref "../../explanation/pricing/index.md" >}})
- [<ins>Multiple prices on a group of items<ins>]({{< ref "../../explanation/multiple_prices_item_group/index.md" >}})
- [<ins>Sales Price List setup<ins>]({{< ref "../../how-to/sales_price_setup/index.md" >}})
- [<ins>Sales Price setup<ins>]({{< ref "../../how-to/sales_price_setup/index.md" >}})