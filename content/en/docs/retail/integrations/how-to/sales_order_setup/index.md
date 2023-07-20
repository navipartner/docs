---
title: "Sales Order integration area setup"
description: ""
lead: ""
date: 2023-07-11T11:23:41+02:00
lastmod: 2023-07-11T11:23:41+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "sales_order_setup-b488645bc4f691f15a792c29ba431166"
weight: 999
toc: true
type: docs
---

This topic contains instructions for all setups related to the **Sales Order Integration** area.

## Set up E-commerce stores

A distinct e-commerce store needs to be created in Business Central for each value sent from Shopify as a JSON key "Source Name" of the Shopify order JSON file.

![Fragments of incoming Shopify order json files with the source name specified](json_key_sales_order.png)

To define an e-commerce store:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **E-commerce Stores** and select the related link.      
   The page containing all the existing e-commerce stores in the system is displayed.
2. Click **New** and specify all values that correspond to your business needs in the provided fields.       
   The **Code** and **Salesperson/Purchaser Code** fields are mandatory.

## Set up Shipment Method Mapping

The shipment method mapping needs to be set up for each value sent from Shopify as the "code" property in the Shopify order JSON file's "shipping_lines" array.

![Fragments of "shipping_lines" json array of an incoming Shopify order json file](json_shipment_method.png)

To define a shipping method mapping:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Shipment Method Mapping** and select the related link.        
   The page containing all the existing shipment method mappings in the system is displayed.  
2. Click **New** and specify all values that correspond to your business needs in the provided fields.       
   The **External Shipment Method Code** and **Shipment Fee No.** fields are mandatory.


## Set up Payment Method Mapping

The payment method mapping needs to be set up in Business Central for each value sent from Shopify as the "gateway" property in the Shopify order JSON file.

![Fragments of an incoming Shopify order json file with payment type specified](json_payment_method_mapping.png)

To define a payment method mapping:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Payment Method Mapping** and select the related link.        
   The page containing all the existing payment method mappings in the system is displayed.
2. Click **New** and specify all values that correspond to your business needs in the provided fields.    
   The **External Payment Method Code** and **External Payment Type** fields are mandatory.

## Set up Location mapping

Location mapping is used for identifying the code of the Business Central location the items are shipped from, as well as the shipping agent and its service code. During the order import process, the system searches for the location code and/or shipping agent, which depend on the customer's country and postal code.

The location mapping setup is taken into account only if the system can't identify the **Location Code** and/or **Shipping Agent Code** during the evaluation of the **Shipment Method Mapping**.

To set up location mapping:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **E-commerce Stores** and select the related link.        
   The page containing all e-commerce stores in the system is displayed.
2. Create a new e-commerce store or edit the existing one, then click **Related**, followed by **Location Mapping**.      
   The **Location Mapping** popup window is displayed.
3. Set up the location mapping according to your business requirements.
