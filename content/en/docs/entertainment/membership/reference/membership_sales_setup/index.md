---
title: "Membership sales setup"
description: "In this section you can tie items to a membership and set some rules which determine how that membership should be created."
lead: ""
date: 2024-10-01T11:05:05+02:00
lastmod: 2024-10-01T11:05:05+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "membership_sales_setup-5f1cec71e6411e5e7ef88005d4be9638"
weight: 293
toc: true
type: docs
---

In this section you can tie items to a membership, and set some rules which determine how that membership should be created. Each membership requires a line to be created in the **Membership Sales Setup** before it can be sold. 

The following columns should be populated when creating new lines in this administrative section:

| Column Name     | Description |
| ----------- | ----------- |
| **Type** | The following options are available: </br> <ul> <li> **Item** - a membership is tied to an item; </li> <li>**G/L Account** - a membership is tied directly to a G/L account.</li> </ul> |
| **Membership Code** | Specifies which membership this setup is going to refer to. There can be multiple lines with the same membership code. For example, one line can be tied to bronze adult members, and another to bronze teenage members. |
| **Valid From Base** | The following options are available: </br> <ul> <li> **Sales Date** - from the moment when the membership is purchased; </li> <li> **Date Formula** - from the date determined by a formula (CY-3M); </li> <li> **Prompt** - from a date manually specified on the **Member Information** page when creating a membership. </li> <li> **Activate On First Use** - from the moment the customer uses the membership for the first time. </li> </ul> | 
| **Valid From Date Calculation** | Specifies the formula for calculating the valid-from date. | 
| **Valid Until Calculation** | Specifies the formula for calculating the valid-thru date.  |
| **Duration Formula** | If the **Date Formula** option has been selected in **Valid From Base**, the duration formula is defined in this column. |
| **Auto-Admit Member on Sale** | Specifies whether a ticket needs to be registered when memberships are created. | 
| **Member Card Type** | Specifies an identifying characteristic of a member card. | 
| **Age Constraint Type** | Specifies the acceptable age for a member. You can define the consent type through the **Less Than**, **Less Than or Equal**, **Greater Than**, **Greater Than or Equal** or **Equal** functions. | 
| **Age Constraint (Years)** | Specifies the acceptable age for a member. | 

You can create a membership via the **Create Membership** action in the ribbon. This action creates membership in the same way it would've been created from the POS.

## Membership sales from e-commerce orders

Memberships can also be created from imported e-commerce sales documents when membership-related lines are configured in this setup.

For this flow to work reliably:

- membership lines in incoming e-commerce orders must be mapped to valid **Membership Sales Setup** lines
- required member data must be present in the imported order payload
- age-related constraints must be respected if they are enabled

If age verification is enabled in membership setup and an age-constrained membership is sold online, the order must provide the member's birth date so the age window can be validated.

For storefront-specific setup guidance, refer to:

- [<ins>Shopify membership age verification behavior<ins>]({{< ref "../../../../ecommerce/shopify/how-to/membership_age_verification/index.md" >}})
- [<ins>Set up e-commerce membership sales processing<ins>]({{< ref "../../../../ecommerce/shopify/how-to/ecommerce_membership_sales/index.md" >}})