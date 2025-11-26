---
title: "Click & Collect orders from Shopify"
description: "Setup of the Click & Collect functionality which enables customers to place an order online through Shopify and pick up their items at a physical store."
lead: ""
date: 2024-01-05T12:19:11+01:00
lastmod: 2024-01-05T12:19:11+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "6778134a8a6483d4d611b074f9c88a2e"
weight: 148
toc: true
type: docs
---


<p style="text-align: justify;">

## Introduction
The Click & Collect functionality enables customers to place an order online through Shopify and pick up their items at a physical store. When a customer completes a purchase on the web shop, the order is automatically synchronized with Business Central. From that point on, the fulfillment process continues in the POS system, allowing store staff to prepare and hand over the item in the physical location.
All operational and inventory updates occur in the background within Business Central, ensuring a seamless and unified workflow between the online and in-store experience.

## Prerequisites
Before using the Click & Collect process, ensure the following prerequisites are met:
 - Shopify integration with Business Central is properly configured and active.
 - Item availability is synchronized between the web shop and the physical store.
 - Store locations are correctly set up in both Shopify and Business Central.
 - POS system is connected to the relevant Business Central environment.

## Required Setup for Click & Collect Order Processing
When a customer purchases a product or service through Shopify, they should receive an order confirmation as part of the standard checkout flow. To ensure that this confirmation is properly generated and aligned with the Business Central integration, several configurations must be in place.

To ensure that Click & Collect orders from Shopify are correctly processed in Business Central, the following configuration steps must be completed:
1.  **Shopify Stores** Page

In the Sales Order Integration section, set the **CC Order Workflow** field to: **EMAIL**

2.  **Collect Store** Page

In the Workflows section, set the Workflow Code field to: **EMAIL** <br>
From this section, open the **Collect Workflow** Card, which contains the configuration settings for processing Click & Collect orders from Shopify in Business Central.

3.  **Collect Workflow** Page

Apply the following settings:
 - For the **Send Order Module** field, select: **Sales Order**
 - In the IC Clearing section:
    - Set **Post On** to: **Delivery**
    - Set **Bill Via** to: **Sales Document**

## Click & Collect process

The Click & Collect flow involves several key components, including the Shopify storefront, Business Central which handles backend processing and monitoring, and the POS system connected to Business Central.

### Shopify
 - The customer selects **Pick Up** as the delivery method during checkout.
 - The customer chooses the specific store where the item will be collected.
 - Payment details are entered, and the purchase is completed in Shopify.

### Order Transfer to Business Central
 - A scheduled Job Queue in Business Central automatically synchronizes Shopify orders.
 - During this process, the system creates a **Collect in Store Order**, which serves as the initial document for managing the pickup workflow.

### Monitoring Click & Collect Orders in Business Central
To review the status of all Click & Collect orders within Business Central, navigate to the **Collect Document List**.
This page provides a comprehensive overview of every order that has entered the **Click & Collect workflow**. Here, you can view details such as the type of document that has been created, the customer associated with the order, the store selected for pickup, and the current status of the order.

In Business Central, it is possible to view the list of all stores where Click & Collect orders can be fulfilled. To access this list, use the Search bar and enter **Collect Stores**. This page provides an overview of all stores configured to support the Click & Collect feature.
Another important page is **Shipment Method Mapping**, where you can review the setup for each store regarding the pickup of ordered items via the Click & Collect functionality.

### POS Click & Collect
When a customer arrives at the store and presents their Click & Collect order **confirmation email**, the store staff should select **Pickup Click & Collect Order** in the POS system. The staff then enters or selects the **Reference Number** associated with the order.
After this step, the sale continues through the POS system in the standard manner. Throughout the process, Business Central automatically updates the order status to **Confirmed**, while Shopify reflects the order as **Fulfilled**, ensuring that both the internal system and the customer-facing platform are fully synchronized.
</p>

#### See also

- [<ins>Set up Click & Collect module in NP Retail<ins>]({{< ref "../setup/setup/index.md" >}})
- [<ins>Create a new Collect Workflow<ins>]({{< ref "../workflow/index.md" >}})
- [<ins>Create a new Collect Store<ins>]({{< ref "../stores/index.md" >}})
