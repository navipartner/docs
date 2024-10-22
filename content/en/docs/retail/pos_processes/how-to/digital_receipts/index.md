---
title: "Set up digital receipts"
description: "You can use Fiskaly API to generate digital receipts after POS sales have been concluded. To set up this feature, follow the steps listed in this article."
lead: ""
date: 2024-01-22T09:08:39+01:00
lastmod: 2024-01-22T09:08:39+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "digital_receipts-bc58b94c9b4d6bf7b612d46fca9c472f"
weight: 111
toc: true
type: docs
---

Digital receipts are a virtual replacement for printed receipts, which reduce the length of the payment path, speed up the process of issuing receipts, and provide a more convenient assurance for warranty or return purposes. 
 
{{< alert icon="📝" text="Fiskaly API works in the background to support generating of digital receipts after POS sales have been concluded."/>}}

To set up digital receipts, make sure the prerequisites are met, and follow the provided steps:

## Prerequisites in Fiskaly Dashboard

1. Click **Settings**, followed by **API Keys** in the Fiskaly Dashboard sidebar.
2. Click **Create API Key**.

## Procedure in Business Central

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Digital Receipt Setup**, and choose the related link.      
   The administrative section for setting up digital receipts is displayed.
2. Activate the feature via the **Enable** toggle switch.     
   The feature can be used globally as a result. 
3. Provide the **API Key** and **API Secret** in the indicated fields.       
   - API key is a unique identifier used for establishing connection with the Fiskaly API.
   - API secret denotes the confidential authentication code paired with your API key. 
4. Click **Test API Credentials** in the ribbon.     
   This action is used for validating the provided API key and secret, and ensuring the effectiveness of your Fiskaly API credentials. You will not be able to turn on the digital receipt functionality unless the credentials are successfully tested.     
   The outcome is reflected in the state of the **Credentials Test Success** toggle switch, and the date/time of the last test is recorded in the **Last Credentials Test Time** field.
5. If the credentials are tested and approved, click **POS Receipt Profiles** in the ribbon.     
   Alternatively, you can find the **POS Receipt Profiles** with the Business Central's *Tell Me* feature.
6. Click **New**, and populate the [<ins>available fields and options<ins>]({{< ref "../../../pos_profiles/reference/receipt_profile/index.md" >}}).
7. Open the **POS Unit List** administrative section, and find the POS unit you wish to set up. 
8. Open its **POS Unit Card**, and set the **POS Receipt Profile** to the one you've created in the previous steps.    
   This POS unit now supports the digital receipt functionality.

## Next steps

### (Optional) Add logo to the digital receipt header

Fiskaly provides an option to add a logo of your choice to the digital receipt header. You can do this from the Fiskaly Dashboard.

1. Click **Fiskaly Receipt** in the sidebar of the Fiskaly Dashboard.     
   A new page is displayed.
2. Choose **Merchant Dashboard** from the available options.     
   From here, you can configure various settings for your receipts.
3. Access the **Global Styles** section, and click **Receipt Logo**.
4. Select the picture/logo for your digital receipt, and click **Apply**.     

   ![fiskaly_logo](Images/fiskaly_logo.PNG)

### (Optional) Configure the PRINT_RECEIPT POS action

The [<ins>POS action<ins>]({{< ref "../../reference/pos_actions_ref/index.md" >}}) **PRINT_RECEIPT** has two parameters that you can configure, depending on how you wish to use the feature. 

  - **Print Physical Receipts** - When set to true, the associated action will be used for reprinting physical receipts. This parameter is set to true by default.
  - **Issue Digital Receipts** - When set to true, the associated action will be used for displaying the QR code of the selected POS sale again if it's been closed on accident. This parameter is set to false by default.

If you need help with configuring this POS action and its parameter, refer to the article on [<ins>Creating buttons in POS menus<ins>]({{< ref "../../../pos_layout/how-to/new_button/index.md" >}}).

### Issue digital receipts on the POS

1. Perform a [<ins>POS sale<ins>]({{< ref "../sales_cycle/index.md" >}}).       
   After a regular POS sale has been completed, and the payment accepted, a pop-up window that contains a QR code is displayed.
   ![scan_qr_sale](Images/scan_qr_sale.PNG)

   {{< alert icon="📝" text="For the QR code to be successfully displayed, you need to make sure the <b>Issue Digital Receipts</b> parameter of the <b>PRINT_RECEIPT</b> action is set to true."/>}}

2. Scan the QR code to open a PDF link with a visualized digital receipt.     
   You can also find the QR code if you open the **POS Entry Card**, and locate the factbox section, where the **POS Sales Digital Receipts** line is located. If you click the number on the **POS Sales Digital Receipts** line, the corresponding digital receipts linked to that POS entry are displayed.


<iframe width="560" height="315" src="https://www.youtube.com/embed/Z4e4GaR_82U?si=P4JQ4i0dJ1xydrBo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

#### See also

- [<ins>Digital receipt POS actions<ins>]({{< ref "../../reference/digital_receipt_actions/index.md" >}})