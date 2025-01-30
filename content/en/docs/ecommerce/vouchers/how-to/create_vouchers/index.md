---
title: "Create vouchers in Magento and Business Central"
description: "This guide provides step-by-step instructions for creating a new voucher using a Magento 2 demo account and Business Central."
lead: ""
date: 2023-11-08T12:37:16+01:00
lastmod: 2023-11-08T12:37:16+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_vouchers-0f9629ac7842b4f725c44374054d7536"
weight: 306
toc: true
type: docs
---

This guide provides step-by-step instructions for creating a new voucher using a Magento 2 demo account and Business Central.

{{< alert icon="📝" text="Gift vouchers need to be set up in Business Central before they can be set up in Magento Webadmin."/>}}

#### Prerequisites in Business Central

Before setting up a voucher in Magento, complete the following steps in Business Central:

- Make sure the **Gift Voucher Enabled** option in **Magento Setup** is disabled for Magento 2 projects.
- Make sure *the external_voucher_services* exists in the **Web Services** administrative section. If it does not exist, create it.
- (Optional) Test the webservice:       
  1.	Log into your Business Central account
  2.	Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Web Services**, and choose the related link.
  3.	Search for ”external_voucher_services”
  4.	Click the link in the **SOAP URL** tab.       
    You are redirected to a new page, and prompted for credentials.
  5. If needed, retrieve your username and password from **Magento Admin** > **NaviPartner** > **NaviConnect** > **Integration** > **Service Setup**, then log in.     
    If an XML schema service definition file appears, the service is working. If an error appears instead, you will not be able to proceed.

#### Prerequisites in Magento Webadmin

- Make sure the **Use NaviConnect Credentials**  option is set to yes in **NaviPartner** > **Settings** > **Voucher**.

#### Procedure in Magento

1. Log into **Magento Webadmin**.
2. Click **NaviPartner** > **Settings** > **Voucher**.
3. Confirm that **Use NaviConnect Credentials** is set to **Yes** in **Service Setup**.
4. Set **Is Active** to **Yes** in the **Setup** panel.
5. Ensure that **Creation Type Code** matches the retail voucher type in Business Central.    
   If you don't have access, contact the retail consultant who set up that particular voucher in Business Central to check.
6. Click **Save Config** in the top-right corner.
7. Clear the cache in **System** > **Cache Management**.
8. Navigate to **Catalog** > **Products**.
9. Click the **Add Product** dropdown, and select **Gift Voucher**.
10. Fill out the product details, including product name, SKU, quantity, and stock status.
11. Under **Quantity**, click **Advanced Inventory** and enable **Allow Qty below 0** in **Backorders**.     
    Ensure the **Use Config Settings** checkbox is unchecked to make this option editable. 
12. Select **In Stock** for **Stock Status**.
13. In the **Content** panel, click **Edit with page builder**.
14. Finalize the design, preview if necessary, and click **Save**.

## Next steps

### Add the voucher in the main menu

Once you’ve created a new voucher, you may want to place it in a main menu via a smart menu. To do so, follow the provided steps.

1.	From Magento admin click **NaviPartner** > **Extensions** > **Smart Menu**.
2.	Click **Default Category** in the left-hand list and select **Add Menu Under Selection**. 
3.	Complete the required details in the **Smart Menu**.
4.	Click **Save**.

### Set the voucher amount

1. From Magento admin click **NaviPartner** > **Settings** > **Voucher**.
2. Scroll down to the **Setup** section.
3. Check the currency, type, and value of the voucher in **Price Configuration**.

  {{< alert icon="📝" text="The values shown do not include VAT."/>}}

### Configure taxes for the voucher

1. Navigate to **Catalog** > **Products**.
2. Locate the voucher you just created.
3. Under the **Action** tab, click **Select**, then **Edit**.
4. Find the **Tax Class** option and ensure **Taxable Goods** is selected.
5. Click **Save**.

### Purchase the voucher

To add the voucher to the cart and complete the checkout process, follow [<ins>this guide<ins>]({{< ref "../use_voucher/index.md" >}}).

#### See also

- [<ins>Apply a voucher on an item from the web store<ins>]({{< ref "../apply_voucher/index.md" >}})