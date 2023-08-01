---
title: "What's new in NP Retail"
description: "Find out about the features published in the latest releases of the NP Retail solution."
lead: ""
date: 2023-04-24T11:52:06+02:00
lastmod: 2023-04-24T11:52:06+02:00
draft: false
images: []
menu:
  docs:
    parent: "gettingstarted"
    identifier: "release_notes"
weight: 2
toc: true
type: docs
---

Learn which new features and improvements have been introduced in the newest versions of the NP Retail solution:

## Version 24.0 (July 28th 2023)

### Total discounts

Total discounts have been introduced in NP Retail. They give you an option of providing a discount benefit to a customer based on the total sales amount of a POS sale, or on the total sales amount of a group of items in a POS sale.

For more information, examples, and operating instructions refer to the article on [Setting up total discounts]({{< ref "../discounts/how-to/total_discount/index.md" >}})

### POS grid editor

A new feature which allows users to change the number of rows and columns in the POS screen grids via the POS Editor has been introduced. It gives users the option of fully customizing the number of buttons that will be displayed on the screen, as well as their height. 

## Version 23.0 (June 14th 2023)

### Getting Started Wizard 

A new wizard for simplifying the NP Retail installation process has been introduced. It helps users with quickly setting up the necessary NP Retail components, such as POS Stores, POS Units, POS Profiles, POS Payment Methods, and the POS Posting Setup. 

The Getting Started wizard consists of a basic configuration checklist accompanied with adequate instructional videos to assist you throughout the initial setup process. 

After you’ve been acquainted with the setup, you can proceed to download and import print templates and the NP Retail setup packages and create the basic NP Retail components. 

For more information and operating instructions refer to the article on the [Getting Started Wizard]({{< ref "getting_started_wizard.md" >}})

<iframe width="560" height="315" src="https://www.youtube.com/embed/zSJ3ieGtdXE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Click and Collect prepayment  

The NP Retail Click & Collect feature has been expanded with the Prepayment feature. When creating a Click & Collect order, it is now possible to choose whether the prepayment will be allowed for the purchase amount or percentage. 

{{< alert icon="📝" text="This feature isn’t active by default. If you wish to enable it in your environment, there are several parameters that need to be configured first." />}}

For more information and operating instructions, refer to the article on [Setting up prepayment for Click & Collect]({{< ref "../click_and_collect/how-to/prepayment_bc/index.md" >}})

<iframe width="560" height="315" src="https://www.youtube.com/embed/XvXVOwxP2xk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Version 22.0 (May 28th 2023)

In this release, NP Retail has undergone performance optimization, including transfer of POS to CDN. Additionally, the following features have been developed:

### Group codes

This feature gives users the ability to mark the POS sale exported from the POS to a standard sales order with a predefined group code. It allows the import of standard sales orders to a POS sale to be filtered by a group code.

A new administrative section **Group Codes** has been added to Business Central to support this addition, along with two new parameters introduced for the **SALES_DOC_EXP** and **SALES_DOC_IMP** POS actions.

For more information and operating instructions, refer to the [Group code setup]({{< ref "../pos_processes/how-to/group_codes/index.md" >}}) article.

<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/a78117b9-9ac9-480d-84d7-c1961842326a" loading="lazy" title="Synthesia video player - New Feature: Export/Import Group codes" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

### MPOS actions for improved barcode scanning

Two new MPOS actions for improved barcode scanning have been introduced:  

- **M_SCANDITITEMINFO** - users can use the camera on their mobile devices to scan item barcodes and receive the predefined information about that item. 

- **M_SCANDITSCAN** – users can use the camera on their mobile devices to scan item barcodes and find the same barcode in direct vicinity.

For more information and operating instructions, refer to the article on [MPOS action setup for Scandit]({{< ref "../mpos/how-to/scandit/index.md" >}}).

<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/af673f15-f1a2-4feb-a335-a9ac2fd45c6c" loading="lazy" title="Synthesia video player - New Feature: MPOS Improved barcode scanning" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

### MPOS redesign

Our MPOS has undergone a complete UI overhaul, making the previous scaled-down version of the regular MPOS more modern and streamlined. 

For operating instructions, refer to the article on [MPOS setup]({{< ref "../mpos/how-to/mpos_view/index.md" >}}).

<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/de9a7cbc-268b-49bb-9df1-56537ed433ec" loading="lazy" title="Synthesia video player - New Feature: New MPOS Layout" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

### New POS editor

With the new POS editor, POS buttons and actions can now be configured solely from within the POS UI no longer requiring accompanying setup in Business Central. This means that it's not necessary to leave the POS to change a button or a workflow parameter. Users will be able to see their changes being reflected instantly without jumping back and forth multiple windows. Consequently, the POS configuration is simplified and load time reduced.

For operating instructions, refer to the article on [POS editor activation]({{< ref "../pos_processes/how-to/activate_pos_editor/index.md" >}})

<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/d9ec4a31-da28-47c1-a964-208d2a29af7f" loading="lazy" title="Synthesia video player - New Feature: New POS Editor" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

## Version 21.0 (April 28th 2023)

### V4 Balancing feature (end-of-day balance)

In this release, NP Retail has undergone some backend performance enhancements. Furthermore, the V3 POS Balancing feature has been sunsetted and fully replaced with the [V4 Balancing feature]({{< ref "../pos_processes/how-to/eod/generate_eod.md" >}}).

## Version 20.0 (March 27th 2023)

### GS1 coupons posting with G/L account

You can now create a G/L account that is used for posting GS1 flat rate discount coupons. The discount is applied as a new G/L line with a negative amount, which is calculated from the barcode. 

For more information and operating instructions, refer to the [GS 1 coupon setup]({{< ref "../coupons/how-to/gs1/gs1_setup.md" >}}) article.

<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/37d76d0e-edaa-4067-9bb4-c9dbbe2a7e3b" loading="lazy" title="Synthesia video player - New Feature: GS1 Coupons" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

### MobilePay QR code on customer screen 

Customers can now use the MobilePay app to scan QR codes from the customer screen and purchase goods from a store with their electronic wallet.

For more information, refer to the article on [MobilePay feature usage]({{< ref "../integrations/how-to/qr_code.md" >}}).

<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/37f8bf55-6084-4825-b287-23f5a4d1bee4" loading="lazy" title="Synthesia video player - New Feature: MobilePlay QR Code payment" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

## Version 19.0 (March 7th 2023)

### Limiting payment types to specific items

You can now create payment methods that are used on the POS for purchasing only the items or item categories you single out during its creation. This option is especially useful when you wish to establish vouchers as viable types of payment for specific items only.

For more information and operating instructions, refer to the following articles:

- [Meal, eco, and consumption vouchers]({{< ref "../vouchers/explanation/meal_eco/index.md" >}})
- [Limit payment types to specific items]({{< ref "../vouchers/how-to/meal_eco_setup/index.md" >}})

<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/1bfaa867-e9d0-41b8-b660-9af1b51026c0" loading="lazy" title="Synthesia video player - New Feature: Limiting payment types for specific items (Belgian vouchers)" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

### Bin change from the POS

With the new release, if there are multiple bins in a single store location, you can choose which bin the item is taken from during the POS sale. This is done with the new **CHANGE_BIN** POS action that can be added to the POS menu as a button.

For more information and operating instructions, refer to the article on [Changing the bin from a POS sale]({{< ref "../pos_processes/how-to/change_bin/index.md" >}}).

<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/20e98ccd-0283-4092-b0ca-627b84fcdbc2" loading="lazy" title="Synthesia video player - New Feature: Change bin" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

### Responsibility center change from the POS

You can now change the selected [responsibility center](https://learn.microsoft.com/en-us/dynamics365/business-central/inventory-responsibility-centers) from an open POS sale. When changing the responsibility center, the dimensions in the POS sale change to the dimensions of the newly selected responsibility center. This is done with the new **CHANGE_RESP_CENTER** POS action that can be added to the POS menu as a button. 

For more information and operating instructions, refer to the article on [Changing the Responsibility Center from a POS sale]({{< ref "../pos_processes/how-to/responsibility_center/index.md" >}}).

<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/5b7d04a9-c202-49fe-90bf-c2dc8da3ecf7" loading="lazy" title="Synthesia video player - New Feature: Change Responsibility Center from POS" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

### Sending email receipts from the POS

You can now send emails with purchase receipts to customers from the POS. This can be done with the new **SEND_RECEIPT** POS action that can be added to the POS menu as a button. 

For more information and operating instructions, refer to the article on [Sending receipt to customers on purchase]({{< ref "../pos_processes/how-to/pos_sale_receipts/index.md" >}}).

<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/7e37de5d-ab4e-4217-9e46-dafee10ccabb" loading="lazy" title="Synthesia video player - New Feature: Send Receipt" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

### Second display control

You can now get the customer's signature on the second display upon returning of items, and enclose that with the invoice for that transaction.

For more information and operating instruction refer to the article on [returning items with the help of the second POS screen]({{< ref "../pos_processes/how-to/display2/index.md" >}}).

<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/bcb78cc7-925f-4182-bfdb-79fa15061b2e" loading="lazy" title="Synthesia video player - New Feature: Display 2 Control" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

## Version 18.0 (January 28th 2023)

### Take a photo (from the POS)

You can now take photos of products and other items (like documents) directly from the POS. Among other things, this feature significantly improves the return process, allowing cashiers to capture the state of items at the moment of their return, and record the transaction receipts.

For more information and operating instructions, refer to the article on the [Take Photo]({{< ref "../pos_processes/how-to/take_photo/index.md" >}}) feature.

<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/d67f2a75-b897-46d8-80e1-50a83e9603b1" loading="lazy" title="Synthesia video player - New Feature: Take Photo" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

### GS1 coupons

The GS 1 flat rate discount coupon has been introduced to NP Retail. [GS1](https://www.gs1us.org/upcs-barcodes-prefixes/additional-ways-to-identify-products/coupons) is a standard that facilitates connection between a product and all its vital data, allowing trackability, workflow efficiency, and information-sharing via electronic means. GS1 coupons can now be created on scanning, then used, and finally archived as soon as the POS sale is finalized. 

For more information and operating instructions, refer to the article on the [Coupons]({{< ref "../coupons/how-to/gs1/gs1_setup" >}}).

<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/37d76d0e-edaa-4067-9bb4-c9dbbe2a7e3b" loading="lazy" title="Synthesia video player - New Feature: GS1 Coupons" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

### HTML display profile - enhanced customer interaction and sales experience

A new POS profile has been introduced for desktop POS units with multiple displays. Its purpose is to enhance customer interaction and sales experience by allowing you to display media content on the POS screen. This content can be in the form of images, videos or even an entire website.

For more information and operating instructions, refer to the article on the [POS HTML display profile]({{< ref "../pos_profiles/how-to/html_profile/html_profile.md" >}}).

<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/48a111db-645a-4ab4-85b6-4551b787b45f" loading="lazy" title="Synthesia video player - New Feature: Customer Display" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

### V4 POS balancing feature - end-of-day process

A new version of the balancing feature has been released. For more information and setup instructions, refer to the article on the [POS balancing feature V4]({{< ref "../pos_processes/how-to/eod/generate_eod.md" >}}).

<div style="position: relative; overflow: hidden; padding-top: 56.25%;"><iframe src="https://share.synthesia.io/embeds/videos/ec8e0a32-7578-4569-a608-664743059921" loading="lazy" title="Synthesia video player - New Feature: POS Balancing v4" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

### NP Power BI for Retail

[NP Power BI for Retail](https://appsource.microsoft.com/en-us/product/power-bi/navipartner.np-power-bi-for-retail?tab=Overview) is a new tool that can be used to analyze sales through multidimensional views and provide a detailed insight into business performance. 

For more information and operating instructions, refer to the articles on the [NP Power BI for Retail]({{< ref "../../power_bi/retail/intro.md" >}}).

### Softpay integration - Tap on Phone feature

NP Retail is now integrated with Softpay, which also includes the Tap on Phone feature, which essentially turns your smartphone into a contactless POS terminal capable of accepting payments from customers' cards or mobile wallets. 

For more information and operating instructions, refer to the articles on the [Softpay integration]({{< ref "../eft/explanation/softpay/index.md" >}})