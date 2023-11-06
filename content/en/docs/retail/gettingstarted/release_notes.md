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

## Version 27.0 (November 28th 2023)

### Fiscalization compliance with Serbian fiscal laws

As of the version 27, NP Retail will be compliant with Serbian fiscal laws.

For more information and operating instructions refer to the article on [Fiscalization compliance setup - Serbia]({{< ref "../fiscalization/serbia/setup.md" >}}).

### Fiscalization compliance with Croatian fiscal laws

As of the version 27, NP Retail will be compliant with Croatian fiscal laws.

For more information and operating instructions refer to the article on [Fiscalization compliance setup - Croatia]({{< ref "../fiscalization/croatia/setup.md" >}}).


## Version 26.0 (October 28th 2023)

### POS Sale Document Background posting

Posting of POS Sales Documents is now performed in the background provided that is it enabled in the [**POS Posting Profile**]({{< ref "../pos_profiles/how-to/posting_profile/posting_profile.md" >}}).

<div style="position: relative; overflow: hidden; aspect-ratio: 1920/1080"><iframe src="https://share.synthesia.io/embeds/videos/b188bad5-52f6-4b10-b7fb-63f499e3e7dd" loading="lazy" title="Synthesia video player - New Feature: POS Sale Document Background posting" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

### POS Layout Setup Wizard

Users can now set up a POS layout, and add all the necessary buttons more quickly with the new POS Layout Setup Wizard. The wizard offers a set of predefined layouts that you can choose from based on your industry and language requirements. Once selected, the layouts can be previewed before being put to use. 

For more information, examples, and operating instructions refer to the article on [Using the POS Layout Setup Wizard]({{< ref "../pos_layout/how-to/layout_wizard/index.md" >}}).

<div style="position: relative; overflow: hidden; aspect-ratio: 1920/1080"><iframe src="https://share.synthesia.io/embeds/videos/f20dce3f-7c39-4d9e-b201-6d9887575dc1" loading="lazy" title="Synthesia video player - New Feature: POS Wizard" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

### MPOS Editor

The [POS Editor]({{< ref "../pos_processes/how-to/activate_pos_editor/index.md" >}}), introduced in the NP Retail 22 version, now supports MPOS layouts. This new feature has the same benefits as the previous editor – users will no longer need to jump between different systems to edit the MPOS UI.

For more information, examples, and operating instructions refer to the article on [Using the MPOS editor]({{< ref "../pos_processes/how-to/activate_mpos_editor/index.md" >}}).

## Prepayment invoice posting improvements - Serbia

In accordance with Serbian accounting regulations, it is required to post the received prepayment invoices to transitional accounts, and not directly in the vendor accounts. It is only when the final invoice is received that the values from the transitional accounts are posted to the vendor accounts.

With this new feature, you can only enable the **Prepayment** toggle switch when posting bank statements from the payment journal, prepayment invoices or credit memos (in their respective administrative sections in Business Central). 

## Sales prepayment posting improvements - Serbia

With the new release, it is possible to post and issue prepayment invoices, as well as credit memos with the final invoices to customers for businesses in Serbia. This improvement has been developed due to the Serbian accounting regulation which requires that the prepayment isn't directly posted to the customer account until the final invoice is issued.

## VAT report feature - Serbia

In accordance with the Serbian VAT regulations, it is necessary to store the data on turnover, carry out necessary calculations, and report to Tax authorities how much VAT the company is required to pay for.

This new feature gives you the option of easily forwarding such information to the TA (Tax Authority). Each time the invoices are posted, all the accompanying information is recorded in the POPDV report as is legally required. 

The VAT report feature also provides an option of exporting the POPDV report that should be sent to the TA in XML format. 


## Version 25.0 (September 28th 2023)

### Job Queue refresh

A backend process which automatically refreshes Job Queue entries provided that it is **Enabled** in the **Job Queue Refresh Setup** administrative section has been introduced.

By default the Job queue refresh is triggered automatically once a day as soon as the first licensed user with the rights to manage the job queue logs in for the day.

<div style="position: relative; overflow: hidden; aspect-ratio: 1920/1080"><iframe src="https://share.synthesia.io/embeds/videos/3b3c8207-94ee-4a7a-a7d9-fd8ccfb041c9" loading="lazy" title="Synthesia video player - New Feature: Job Que Restart" allow="encrypted-media; fullscreen;" style="position: absolute; width: 100%; height: 100%; top: 0; left: 0; border: none; padding: 0; margin: 0; overflow:hidden;"></iframe></div>

### Azure member registration

This feature enables users to register as members and acquire a membership card more efficiently than when registering at the counter. As soon as a customer provides their name and phone number to the teller, an SMS is sent their way, and through it, they can access and submit a membership registration form. The membership is also dispatched to the customers via SMS. 

In addition to the first SMS, the store has the option of sending an SMS with a temporary membership card, granting access for a specified period. This gives customers the comfort of completing the form wherever and whenever they want. 

For more information and operating instructions refer to the article on [Azure member registration setup]({{< ref "../../entertainment/membership/how-to/azure_member_registration/index.md" >}}).
 

## Version 24.0 (August 28th 2023)

### Total discounts

Total discounts have been introduced in NP Retail. They give you an option of providing a discount benefit to a customer based on the total sales amount of a POS sale, or on the total sales amount of a group of items in a POS sale.

For more information, examples, and operating instructions refer to the article on [Setting up total discounts]({{< ref "../discounts/how-to/total_discount/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/YDXMMCEQJNs?si=MKpu6NWNyhSFyVrc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### POS grid editor

A new feature which allows users to change the number of rows and columns in the POS screen grids via the POS Editor has been introduced. It gives users the option of fully customizing the number of buttons that will be displayed on the screen, as well as their height. 

<iframe width="560" height="315" src="https://www.youtube.com/embed/x2BY-a8Kr6o?si=PK1YKL3_-Qk4IEnU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Fiscalization compliance with Serbian fiscal laws - in progress

We are currently working on making our POS solution compliant with Serbian fiscal laws.

## Version 23.0 (June 14th 2023)

### Getting Started Wizard 

A new wizard for simplifying the NP Retail installation process has been introduced. It helps users with quickly setting up the necessary NP Retail components, such as POS Stores, POS Units, POS Profiles, POS Payment Methods, and the POS Posting Setup. 

The Getting Started wizard consists of a basic configuration checklist accompanied with adequate instructional videos to assist you throughout the initial setup process. 

After you’ve been acquainted with the setup, you can proceed to download and import print templates and the NP Retail setup packages and create the basic NP Retail components. 

For more information and operating instructions refer to the article on the [Getting Started Wizard]({{< ref "getting_started_wizard.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/zSJ3ieGtdXE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Click and Collect prepayment  

The NP Retail Click & Collect feature has been expanded with the Prepayment feature. When creating a Click & Collect order, it is now possible to choose whether the prepayment will be allowed for the purchase amount or percentage. 

{{< alert icon="📝" text="This feature isn’t active by default. If you wish to enable it in your environment, there are several parameters that need to be configured first." />}}

For more information and operating instructions, refer to the article on [Setting up prepayment for Click & Collect]({{< ref "../click_and_collect/how-to/prepayment_bc/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/XvXVOwxP2xk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Version 22.0 (May 28th 2023)

In this release, NP Retail has undergone performance optimization, including transfer of POS to CDN. Additionally, the following features have been developed:

### Group codes

This feature gives users the ability to mark the POS sale exported from the POS to a standard sales order with a predefined group code. It allows the import of standard sales orders to a POS sale to be filtered by a group code.

A new administrative section **Group Codes** has been added to Business Central to support this addition, along with two new parameters introduced for the **SALES_DOC_EXP** and **SALES_DOC_IMP** POS actions.

For more information and operating instructions, refer to the [Group code setup]({{< ref "../pos_processes/how-to/group_codes/index.md" >}}) article.

<iframe width="560" height="315" src="https://www.youtube.com/embed/wpfHkwfprNA?si=ZS4iF8xG4RwXNKC6" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### MPOS actions for improved barcode scanning

Two new MPOS actions for improved barcode scanning have been introduced:  

- **M_SCANDITITEMINFO** - users can use the camera on their mobile devices to scan item barcodes and receive the predefined information about that item. 

- **M_SCANDITSCAN** – users can use the camera on their mobile devices to scan item barcodes and find the same barcode in direct vicinity.

For more information and operating instructions, refer to the article on [MPOS action setup for Scandit]({{< ref "../mpos/how-to/scandit/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/m8_tJSHWH1g?si=yqehGNhlrOuIRill" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### MPOS redesign

Our MPOS has undergone a complete UI overhaul, making the previous scaled-down version of the regular MPOS more modern and streamlined. 

For operating instructions, refer to the article on [MPOS setup]({{< ref "../mpos/how-to/mpos_view/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/ayTm-uh3sQs?si=PtrK5r-RYfDVE8hP" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### New POS editor

With the new POS editor, POS buttons and actions can now be configured solely from within the POS UI no longer requiring accompanying setup in Business Central. This means that it's not necessary to leave the POS to change a button or a workflow parameter. Users will be able to see their changes being reflected instantly without jumping back and forth multiple windows. Consequently, the POS configuration is simplified and load time reduced.

For operating instructions, refer to the article on [POS editor activation]({{< ref "../pos_processes/how-to/activate_pos_editor/index.md" >}})

<iframe width="560" height="315" src="https://www.youtube.com/embed/adHwN8IQwI0?si=u-vQ8ojtqzGvLuin" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Version 21.0 (April 28th 2023)

### V4 Balancing feature (end-of-day balance)

In this release, NP Retail has undergone some backend performance enhancements. Furthermore, the V3 POS Balancing feature has been sunsetted and fully replaced with the [V4 Balancing feature]({{< ref "../pos_processes/how-to/eod/generate_eod.md" >}}).

## Version 20.0 (March 27th 2023)

### GS1 coupons posting with G/L account

You can now create a G/L account that is used for posting GS1 flat rate discount coupons. The discount is applied as a new G/L line with a negative amount, which is calculated from the barcode. 

For more information and operating instructions, refer to the [GS 1 coupon setup]({{< ref "../coupons/how-to/gs1/gs1_setup.md" >}}) article.

<iframe width="560" height="315" src="https://www.youtube.com/embed/N77fT6kmIwM?si=Sr5lGAV7mLHjaxXs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### MobilePay QR code on customer screen 

Customers can now use the MobilePay app to scan QR codes from the customer screen and purchase goods from a store with their electronic wallet.

For more information, refer to the article on [MobilePay feature usage]({{< ref "../../integrations/mobilepay/how-to/qr_code.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/1XR6E__XJCs?si=2EvlnsDMbGcP3e-C" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Version 19.0 (March 7th 2023)

### Limiting payment types to specific items

You can now create payment methods that are used on the POS for purchasing only the items or item categories you single out during its creation. This option is especially useful when you wish to establish vouchers as viable types of payment for specific items only.

For more information and operating instructions, refer to the following articles:

- [Meal, eco, and consumption vouchers]({{< ref "../vouchers/explanation/meal_eco/index.md" >}})
- [Limit payment types to specific items]({{< ref "../vouchers/how-to/meal_eco_setup/index.md" >}})

<iframe width="560" height="315" src="https://www.youtube.com/embed/yazYweS68-E?si=kNrcMzWEZGoUkpBN" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Bin change from the POS

With the new release, if there are multiple bins in a single store location, you can choose which bin the item is taken from during the POS sale. This is done with the new **CHANGE_BIN** POS action that can be added to the POS menu as a button.

For more information and operating instructions, refer to the article on [Changing the bin from a POS sale]({{< ref "../pos_processes/how-to/change_bin/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/IilNBACUfco?si=EPgVja0rX4lrMUHH" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Responsibility center change from the POS

You can now change the selected [responsibility center](https://learn.microsoft.com/en-us/dynamics365/business-central/inventory-responsibility-centers) from an open POS sale. When changing the responsibility center, the dimensions in the POS sale change to the dimensions of the newly selected responsibility center. This is done with the new **CHANGE_RESP_CENTER** POS action that can be added to the POS menu as a button. 

For more information and operating instructions, refer to the article on [Changing the Responsibility Center from a POS sale]({{< ref "../pos_processes/how-to/responsibility_center/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/En8d-cAsWng?si=qbsrkG62ShbMlADS" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Sending email receipts from the POS

You can now send emails with purchase receipts to customers from the POS. This can be done with the new **SEND_RECEIPT** POS action that can be added to the POS menu as a button. 

For more information and operating instructions, refer to the article on [Sending receipt to customers on purchase]({{< ref "../pos_processes/how-to/pos_sale_receipts/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/1SdL5NZTKKc?si=ou1DZojpEPHVnWbL" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Second display control

You can now get the customer's signature on the second display upon returning of items, and enclose that with the invoice for that transaction.

For more information and operating instruction refer to the article on [returning items with the help of the second POS screen]({{< ref "../pos_processes/how-to/display2/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/Y5zKIo-nT-0?si=-_naNYmuhcSK_D_T" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Version 18.0 (January 28th 2023)

### Take a photo (from the POS)

You can now take photos of products and other items (like documents) directly from the POS. Among other things, this feature significantly improves the return process, allowing cashiers to capture the state of items at the moment of their return, and record the transaction receipts.

For more information and operating instructions, refer to the article on the [Take Photo]({{< ref "../pos_processes/how-to/take_photo/index.md" >}}) feature.

<iframe width="560" height="315" src="https://www.youtube.com/embed/XmVeUrNa42U?si=7Q7_zay7MZU0f5vI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### GS1 coupons

The GS 1 flat rate discount coupon has been introduced to NP Retail. [GS1](https://www.gs1us.org/upcs-barcodes-prefixes/additional-ways-to-identify-products/coupons) is a standard that facilitates connection between a product and all its vital data, allowing trackability, workflow efficiency, and information-sharing via electronic means. GS1 coupons can now be created on scanning, then used, and finally archived as soon as the POS sale is finalized. 

For more information and operating instructions, refer to the article on the [Coupons]({{< ref "../coupons/how-to/gs1/gs1_setup" >}}).

### HTML display profile - enhanced customer interaction and sales experience

A new POS profile has been introduced for desktop POS units with multiple displays. Its purpose is to enhance customer interaction and sales experience by allowing you to display media content on the POS screen. This content can be in the form of images, videos or even an entire website.

For more information and operating instructions, refer to the article on the [POS HTML display profile]({{< ref "../pos_profiles/how-to/html_profile/html_profile.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/jbnVawpaA44?si=hUqQx0OnTq9KZBQO" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### V4 POS balancing feature - end-of-day process

A new version of the balancing feature has been released. For more information and setup instructions, refer to the article on the [POS balancing feature V4]({{< ref "../pos_processes/how-to/eod/generate_eod.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/BtP2yRqvloQ?si=OTjhFtVCF4rhrlRc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### NP Power BI for Retail

[NP Power BI for Retail](https://appsource.microsoft.com/en-us/product/power-bi/navipartner.np-power-bi-for-retail?tab=Overview) is a new tool that can be used to analyze sales through multidimensional views and provide a detailed insight into business performance. 

For more information and operating instructions, refer to the articles on the [NP Power BI for Retail]({{< ref "../../power_bi/retail/intro.md" >}}).

### Softpay integration - Tap on Phone feature

NP Retail is now integrated with Softpay, which also includes the Tap on Phone feature, which essentially turns your smartphone into a contactless POS terminal capable of accepting payments from customers' cards or mobile wallets. 

For more information and operating instructions, refer to the articles on the [Softpay integration]({{< ref "../eft/explanation/softpay/index.md" >}})