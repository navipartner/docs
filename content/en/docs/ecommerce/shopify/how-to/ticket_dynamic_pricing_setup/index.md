---
title: "Set Up Ticket Dynamic Pricing in Shopify"
description: "Learn how to configure ticket products and dynamic pricing in the Shopify Ticket App, including pricing profile setup and Business Central synchronization."
lead: ""
date: 2026-05-04T00:00:00+00:00
lastmod: 2026-05-04T00:00:00+00:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "ticket_dynamic_pricing_setup-8f3a1b2c4d5e6f7a8b9c0d1e2f3a4b5c"
weight: 331
toc: true
type: docs
---

## Shopify app ticket setup

After installing the application, enter the required configuration parameters:

- Tenant ID
- Business Central (BC) environment
- Company

Click **Save Connection Info** and verify that the **BC connection status is marked as "Connected" (green indicator)**:

![BC connection status](Pasted_image_20260430131050.png)

{{< alert icon="📝" text="Sometimes you have to reload the page to make sure it's connected." />}}

## Adding first ticket product

1. Navigate to **Products** from the main sidebar menu:

   ![Products sidebar](Pasted_image_20260430131802.png)

2. Click **Add Product** and fill in the required product details (e.g. name, description, price, etc.).

3. Ensure the following configuration is applied:
   - Inventory tracking: **Disabled (Not tracked)**
   - Product type: **Non-physical product**

   ![Product configuration](Pasted_image_20260430132321.png)

4. In the **SKU field**, enter the Ticket Item Number retrieved from Business Central:

   ![SKU field](Pasted_image_20260430132532.png)

Once completed, the ticket product is ready to be assigned to a ticket collection or used as a standalone product on a product page.

## Dynamic Pricing Setup

1. Navigate to the **Ticket App** from the sidebar and open **Settings**:

   ![Ticket App Settings](Screenshot_2026-04-30_134414.png)

2. Within the **Dynamic Pricing Settings** section:
   - Enable **Dynamic Pricing**
   - Add the ticket product using its SKU
   - After configuration, click **Submit**.

   ![Dynamic Pricing Settings](Pasted_image_20260430135002.png)

   Alternatively, navigate to **Products → Ticket**, scroll all the way down, and click **"Use Dynamic Pricing"** in the **Blocks** section for the relevant product:

   ![Use Dynamic Pricing block](Screenshot_2026-05-04_104149.png)

3. After submitting the dynamic ticket configuration, select **Trigger Price Update**:

   ![Trigger Price Update](Pasted_image_20260430135801.png)

4. Click **Trigger**:

   ![Trigger button](Pasted_image_20260430135816.png)

{{< alert icon="📝" text="Ticket prices are automatically synchronized with Business Central every 24 hours. For immediate synchronization, manual triggering is required." />}}

## Verifying Updated Variants

1. Navigate to the **Products** section and open the relevant ticket product.
2. Confirm that newly generated variants are present.
3. Ensure that the variants match the pricing profiles defined in Business Central:

   ![Verified variants](Pasted_image_20260430135910.png)

## Pricing Profiles Configuration

1. In Shopify Admin, navigate to **Content → Metaobjects** from the sidebar menu:

   ![Metaobjects](Pasted_image_20260430144138.png)

2. Open **Ticket Dynamic Pricing Profile**:

   ![Ticket Dynamic Pricing Profile](Pasted_image_20260430144242.png)

3. Click **Add Entry** and create a custom pricing profile:

   ![Add Entry](Pasted_image_20260430144422.png)

4. For each profile, you can define:
   - Calendar tile color
   - Text color
   - Legend label (display name in calendar UI)

## Mapping Pricing Profiles to Business Central

To link Shopify pricing profiles with Business Central pricing rules, configure **Variant Tags** accordingly:

1. Click the **Variant Tags** field and enter all relevant pricing profiles:

   ![Variant Tags](Pasted_image_20260430150646.png)

2. For the **Base Price**, use the **Admission Code**.

3. For additional pricing rules, use the following format:

   ```
   AdmissionCode_ScheduleCode_RuleLineNo
   ```

   ![Pricing rule format](Pasted_image_20260430150901.png)
   ![Pricing rule example](Pasted_image_20260430150928.png)

4. Required values can be found in Business Central under: **Ticket Item → Ticket → Pricing Profiles**.
