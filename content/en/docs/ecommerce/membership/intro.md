---
title: "Membership overview (e-commerce)"
description: "Memberships are created to provide special offers and benefits to loyal customers of e-commerce websites."
lead: ""
date: 2023-11-15T10:55:14+01:00
lastmod: 2023-11-15T10:55:14+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-e3b1645b10c0293b86a688f619d4b7f3"
weight: 308
toc: true
type: docs
---
Memberships are created to provide special offers and benefits to loyal customers of e-commerce websites. Membership plans are created separately from products, which gives some flexibility in deciding how the access to special benefits is granted. It's possible to assign multiple products to a single membership plan, over a specified period of time or indefinitely.

Membership items that are supported on the e-commerce platform can be seen in Magento Webadmin if you navigate to **Catalog** > **Products**, and open the **Add Products** dropdown. 

   {{< alert icon="📝" text="Membership items can't be created in Magento Webadmin - they are synced from Business Central."/>}}

   ![magento_products](magento_products.PNG)

All membership items can be easily filtered by using the **Type** filter, and choosing **Membership**.

   ![filter](filter.PNG)

You can see the specifics of each membership associated with an item in its **Membership Setup**, **Member Card Delivery**, **Member Card Barcode Generation**, and **Membership Forms** sections.

The following fields are synced from Business Central in the **Membership Setup** section: 

- **Membership Type Code**
- **Auto-Activate**
- **Max Members**
- **Guardianship**
- **Minimum Member Age**
- **Maximum Member Age**
- **Age Constraint Target**
- **Subscription**
- **Validate Email** 

The following fields aren't synced from Business Central. However, they can to be updated in Magento Webadmin:

- **Allow Setting Unlimited Guest Count**
- **Company Membership**


### See also

- [<ins>Membership options - Magento Webadmin<ins>]({{< ref "explanation/magento_options/index.md" >}})
- [<ins>Membership options - Business Central<ins>]({{< ref "explanation/bc_options/index.md" >}})
- [<ins>Custom pricing for members<ins>]({{< ref "explanation/pricing/index.md" >}})
- [<ins>Register as a member on an e-commerce website<ins>]({{< ref "how-to/new_member/index.md" >}})