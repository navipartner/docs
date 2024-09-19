---
title: "Shopify stores"
description: "A separate Shopify Store needs to be created in Business Central for each Shopify shop you want to integrate with."
lead: ""
date: 2024-09-13T10:17:12+02:00
lastmod: 2024-09-13T10:17:12+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "shopify_store-c2a39488e4b4a87853e0a2d025d69897"
weight: 324
toc: true
type: docs
---

A separate Shopify Store needs to be set up in Business Central for each Shopify shop you want to integrate with. You can do so from the **Shopify Integration Setup** administrative section, or you can find the **Shopify Stores** administrative section with the Business Central search function. 

The **Shopify Store** page contains store-specific settings. You can select whether the integration is enabled with the store, and then pick the integration areas you want to be covered. 

  ![shopify_store](images/shopify_store.PNG)

The following fields and options can be set up in the **General** section:

| Field name      | Description |
| ----------- | ----------- |
| **Code** | Specifies a unique ID that will be used by Business Central to refer to this store. | 
| **Description** | Specifies the description of the Shopify store. |
| **Enabled** | Specifies whether the integration with this Shopify store is enabled. This is the master on/off switch for the integration with the Shopify store. | 

The following fields and options can be set up in the **Item List Integration** section:

| Field name      | Description |
| ----------- | ----------- |
| **Enabled** | Specifies whether the item list integration is enabled. If yes, item information will be sent to Shopify. | 
| **Set Shopify Name/Descr. in BC** | Specifies whether you will be able to update Shopify item names and descriptions from within Business Central. If disabled, when the Shopify name or description of an item needs to be changed you'll have to do it in Shopify. Business Central will reflect the value set in Shopify and won't send any changes to names/descriptions you create in Business Central to Shopify. |
| **Do Not Sync Sales Prices** | Specifies whether sending item sales prices to Shopify is enabled or not. |
| **Item Webhooks:** </br> **Auto Sync Item Changes from Shopify** | Specifies whether product changes made directly in Shopify are automatically synced to Business Central or not. For this feature to work, you need to [<ins>register the webhook handler application<ins>]({{< ref "../../how-to/register_webhook_handler_app/index.md" >}}). </br> There are several limitations to this functionality however: </br> <ul> <li> The option is only available for BC SaaS environments. </li> <li> The feature won't create new items in Business Central. It can only update the existing item data (including their sync status). </li> </ul> |  

The following fields and options can be set up in the **Inventory Integration** section:

| Field name      | Description |
| ----------- | ----------- |
| **Send Inventory Updates** | Specifies whether the available-to-sell inventory (stock balances) will be sent to Shopify. |
| **Include Transfer Orders** | Specifies whether outstanding transfer order lines are considered when calculating the available-to-sell inventory. |
| **Send Negative Inventory** | Specifies whether the negative inventory is sent to Shopify. If disabled, zero will be sent instead. |

The following option can be set up in the **Retail Voucher Integration** section:

| Field name      | Description |
| ----------- | ----------- |
| **Enabled** | Specifies whether the retail voucher integration is enabled. If yes, the system will allow retail vouchers purchased in your offline shops (POS) to be used (redeemed) both on POS and in Shopify. </br> **Note:** There are several additional [<ins>retail voucher integration area setups<ins>]({{< ref "../../how-to/retail_voucher_integration_area/index.md" >}}) you need to perform for the functionality to work correctly. |

The following fields and options can be set up in the **Sales Order Integration** section:

| Field name      | Description |
| ----------- | ----------- |
| **Enabled** | Specifies whether the sales order integration is enabled or not. If enabled, the system will set up and use a job queue to download new and updated orders from Shopify. </br> **Note:** There are several additional [<ins>sales order integration area setups<ins>]({{< ref "../../how-to/sales_order_setup/index.md" >}}) you need to perform for the functionality to work correctly. |
| **Allowed Payment Statuses** | Specifies the allowed Shopify payment statuses. New orders will only be imported from Shopify if the order has an allowed payment status. | 
| **Get Payment Lines from Shopify** | Specifies the point at which the system retrieves order payment information from Shopify and creates sales order payment lines in Business Central. This can occur when the order is first imported or just before the payment capture requests are sent to Shopify. | 
| **Post on Completion** | Specifies whether the sales order is automatically posted in Business Central when the associated Shopify order is marked as closed in Shopify. | 
| **Delete on Cancellation** | Specifies whether the sales order is automatically deleted from Business Central when the associated Shopify order is cancelled in Shopify. | 
| **Send Order Fulfilments** | Specifies whether the order fulfillment requests are sent from Business Central to Shopify. Order fulfillment requests are sent for sales orders that have been posted as shipped. | 
| **Send Payment Capture Requests** | Specifies whether payment capture requests will be sent from Business Central to Shopify. Payment capture requests are sent for sales orders that have been posted as invoiced. | 
| **Send Close Order Requests** | Specifies whether close order requests will be sent from Business Central to Shopify. Close order requests are sent for sales orders that have been posted as invoiced. | 
| **Currency Code** | Specifies the currency code of the Shopify Store. Orders imported from Shopify will be created in Business Central with this currency code. | 
| **Get Orders Starting From** | Specifies the date and time from which sales orders should be downloaded from the Shopify store on the first run. Thereafter, only the orders created or updated since the last time the process was run will be downloaded. | 
| **Last Orders Imported At** | Specifies the date and time the sales orders were last imported from the Shopify store. Only the orders created or updated after this time will be imported when the process is triggered again. | 

The following fields and options can be set up in the **Connection Parameters** section:

| Field name      | Description |
| ----------- | ----------- |
| **Shopify URL** | Specifies the URL to your Shopify store. Enter the URL that people will use to access your store, e.g. *https://navipartner.myshopify.com*. |
| **Shopify Access Token** | Specifies the Shopify [<ins>access token<ins>]({{< ref "../../how-to/register_shopify_custom_app/index.md" >}}), which is the *Admin API Access Token* from the Shopify private app setup. | 
| **Shopify Store ID** | Specifies the Shopify internal ID assigned to this store. The field is populated automatically after you run the connection testing procedure. | 

{{< alert icon="❗" text="Whenever you make changes on this page, you and other environment users need to log into Business Central again for the changes to take effect." />}}

## Next steps

- [<ins>Register the webhook handler app<ins>]({{< ref "../../how-to/register_webhook_handler_app/index.md" >}})