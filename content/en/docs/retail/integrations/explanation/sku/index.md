---
title: "Shopify SKU (Stock Keeping Unit)"
description: ""
lead: ""
date: 2023-07-11T11:20:11+02:00
lastmod: 2023-07-11T11:20:11+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "sku-2bfe94f4c3fda66c5e6804ba19f1dcdf"
weight: 123
toc: true
type: docs
---

Whenever an item or an item variant update request is sent to Shopify, the **Shopify Product ID** and the **Shopify Variant ID** are automatically included in the request (or **Shopify Inventory Item ID**, if this is an inventory or unit cost update request).

If there aren't any values for the fields in Business Central, the system will initially attempt to get the IDs from Shopify by providing the Shopify SKU number. For the integration to work properly, the SKU fields in Shopify need to contain the following information:

- Items without variants - the SKU needs to be equal to the Business Central item number.
- Items with variants - each variant SKU needs to be equal to the Business Central item number and Business Central variant code, separated by an underscore (for example: 8000_1)
