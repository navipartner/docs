---
title: "Create vouchers in Magento and Business Central"
description: "This topic describes the process of creating a new voucher by using a Magento 2 demo account and Business Central."
lead: ""
date: 2023-11-08T12:37:16+01:00
lastmod: 2023-11-08T12:37:16+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_vouchers-0f9629ac7842b4f725c44374054d7536"
weight: 305
toc: true
type: docs
---

This topic describes the process of creating a new voucher by using a Magento 2 demo account and Business Central.

{{< alert icon="📝" text="Gift vouchers need to be set up in Business Central before they can be set up in Magento Webadmin."/>}}

#### Prerequisites in Business Central

- Make sure the **Gift Voucher Enabled** option in **Magento Setup** is disabled for Magento 2 projects.
- Make sure *the external_voucher_services* exists in the **Web Services** administrative section. If not, it should be created.
- (Optional) Test the webservice:       
  1.	Log into your Business Central account
  2.	Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Web Services**, and choose the related link.
  3.	Search for ”external_voucher_services”
  4.	Click the link in the **SOAP URL** tab.       
    You are redirected to a new page, and prompted to provide your credentials.
  5. If needed, retrieve your username and password from **Magento Admin** > **NaviPartner** > **NaviConnect** > **Integration** > **Service Setup**, then log in.     
    An XML schema service definition file is displayed. If you see an error instead of an XML schema, you will not be able to proceed with the process 

#### Prerequisites in Magento Webadmin

- Make sure the **Use NaviConnect Credentials**  option is set to yes in **NaviPartner** > **Settings** > **Voucher**.

#### Procedure in Magento

1. Log into **Magento Webadmin**.
2. Click **NaviPartner** > **Settings** > **Voucher**.
3. Make sure that the option **Use NaviConnect Credentials** is set to **Yes** in **Service Setup**.
4. Set the **Is Active** option to **Yes** in the **Setup** panel.
5. Make sure the **Creation Type Code** matches the retail voucher type in Business Central.    
   If you don't have access, you can contact the retail consultant who set up that particular voucher in Business Central to check.
6. Once you're done with the setup, click **Save Config** in the top right corner.
7. Make sure you've cleared the cache in **System** > **Cache Management**.
8. Navigate to **Catalog** > **Products** in Magento admin.
9. Open the **Add Product** dropdown, and click **Gift Voucher**.
10. Fill out the details on the product page such as product name, SKU, quantity, and stock status.
11. Click **Advanced Inventory** option under **Quantity** and enable **Allow Qty below 0** in **Backorders**.     
    Make sure the **Use Config Settings** checkbox isn't checked, as it makes the previous option non-editable. 
12. Select **In Stock** for the **Stock Status**.
13. Scroll down to the **Content** panel, and click **Edit with page builder**.
14. Once you've finalized the design and provided the necessary details, you can either preview the design or simply **Save**.

## Next steps

### Place the voucher in the main menu

Once you’ve created a new voucher, you may want to place it in a main menu via a smart menu. To do so, follow the provided steps.

1.	From Magento admin click **NaviPartner** > **Extensions** > **Smart Menu**.
2.	Click **Default Category** in the list on the left, and click **Add Menu Under Selection**. 
3.	Fill out the rest of the details inside the **Smart Menu**.
4.	Click **Save**.

### Determine voucher amount

1. From Magento admin click **NaviPartner** > **Settings** > **Voucher**.
2. Scroll down to the **Setup** section, and look the currency, type, and value of the voucher in **Price Configuration**.

  {{< alert icon="📝" text="Bear in mind that the values are prices without VAT included."/>}}

### Set up taxes for the voucher

1. Click **Catalog** > **Products** in the main menu of Magento Webadmin.
2. On the list of products find the voucher that you've just created.
3. Click **Select** under the **Action** tab, and then click **Edit**.
4. Look for the Tax Class option in the new window, and make sure you've selected **taxable goods** within **Tax Class** option.
5. Click **Save**.

### Purchase the voucher

To add the voucher to the cart from the web store, and perform the checkout, follow [<ins>this guide<ins>]({{< ref "../use_voucher/index.md" >}}).