---
title: "Shopify integration overview"
description: "Shopify is an ecommerce platform that can be used for building online and offline stores. It offers online retailers services that include payments, marketing, shipping, and customer engagement tools."
lead: ""
date: 2023-07-11T11:09:35+02:00
lastmod: 2023-07-11T11:09:35+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-c6ebb12d5bbf1a493183768306406f98"
weight: 227
toc: true
type: docs
---
Shopify is an ecommerce platform that can be used for building online and offline stores. It offers online retailers services that include payments, marketing, shipping, and customer engagement tools.

NaviPartner out-of-the-box Shopify integration functionality supports the following Shopify integration areas:

- [Sending item information to Shopify]({{< ref "../how-to/synchronize_items/index.md" >}}) (new and updated items and variants);

- [Sending available inventory to Shopify]({{< ref "../explanation/send_inventory/index.md" >}}) (quantity available for sale);

- [Getting sales orders from Shopify]({{< ref "../explanation/getting_orders/index.md" >}}) - two types of integration are available:         

    -	Order processing is done on the Shopify side: we import new orders from Shopify and automatically post them once we receive updated information from Shopify about completed orders (or delete them, if the order was cancelled in Shopify);

    -	Order processing is done in Business Central: in this case we import new orders from Shopify, and users will need to process them in Business Central. Once a sales order is processed and posted in the Business Central we send “fulfilment” and “payment capture” requests to Shopify.

