---
title: "Set up POS Pricing Profile"
description: "Each POS can have different customer price lists, customer discount list, and price matching."
lead: ""
date: 2023-07-04T14:50:35+02:00
lastmod: 2023-07-04T14:50:35+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pricing_profile-da447e20a520f3ce0bf7bc93a4af0c1e"
weight: 121
toc: true
type: docs
---


Each POS can have different customer price lists, customer discount list, and price matching. To set up POS pricing profiles, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Pricing Profiles** and choose the related link.
2. Create **New**.
3. Type in the name of POS Pricing Profile in the field **Code**.
4. Add a **Description**.
5. In the **Customer Pricing Group** field select the corresponding value of the customer pricing group.
6. In the **Customer Discount Group** field select the corresponding value of the customer discount group.

![POS_set](POS_new.png)

7. In the field **Item Price Function** choose between:     
   - **Find Best Retail Price function**,   
   - **Find HQ Connector Price**.

 ![POS_2](POS_matching.png)

 {{< alert icon="❗" text="When configuring the pricing profile, it's important to check whether any specific <b>Sales Price List</b> is referenced from an <b>Item Card</b> that is also affected by the pricing profile. Any sales price list set to <b>All Customers</b> may override setup from the <b>POS Pricing Profile</b>, and be used as the price source for all customers."/>}}

## Next steps

### Set POS Pricing Profile on POS Unit

The created POS pricing profile needs to be set on a POS unit for the settings to be applied:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Unit List**, and choose the related link.
2. Open the **POS Unit Card**
3. Add the created profile in the **POS Pricing Profile** field.

## Configure price list for POS Pricing Profile

If you use **Customer Pricing Group** and **Customer Discount Group** for specifying different prices for different customer groups, you can create specific 
Sales Price List for the POS Price Profile. 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Sales Price Lists**, and choose the related link.
2. Click **New**.
3. Create a price list with **POS Pricing Profile** as the **Assign-to Type**.
4. Specify **Price List Lines**.
5. Activate the **Price List**.



#### See also

- [<ins>Multiple prices on a group of items<ins>]({{< ref "../../../pos_processes/explanation/multiple_prices_item_group/index.md" >}})
- [<ins>Sales price list setup<ins>]({{< ref "../../../pos_processes/how-to/sales_price_setup/index.md" >}})
- [<ins>Sales price setup<ins>]({{< ref "../../../pos_processes/how-to/sales_price_setup/index.md" >}})
- [<ins>Sales price maintenance<ins>]({{< ref "../../../pos_processes/reference/sales_price_maintenance/index.md" >}})