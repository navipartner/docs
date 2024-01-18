---
title: "What's new in NaviPartner"
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

Learn which new features and improvements have been introduced in the newest versions of our solutions:

## Version 30.0 (January 28th 2024)

### Bin transfer improvements

A new line will automatically be added to the **POS Payment Bin Transfer Journal** when the **Transfer Out** action is performed from one POS unit towards another. When the transaction is complete, and the **Transfer In** action is triggered on the target POS unit, the transfer journal line only needs to be validated without the need to populate any additional fields.

An intermediary bin through which both inbound and outbound transfer transactions are posted is used in this process. The bin needs to be specified in the new **In-Transfer Bin Code** field that has been placed in the **POS End of Day/Bin Tr. Profile Card** administrative section in Business Central.

### Digital receipts - Fiskaly

As we continue to integrate NaviPartner's solutions with [Fiskaly](https://www.fiskaly.com/), it will be possible to generate a QR code that will serve as a digital receipt for every POS sale. To support the development of this feature, the following changes have been introduced:

- A new **POS Receipt Profiles** administrative section has been added to Business Central. This POS profile is used for storing all configurations related to digital receipts.
- New API has been introduced to support retrieval of digital receipts from Fiskaly.
- All successfully generated digital receipts are stored in the new **POS Sale Digital Receipt Entry** administrative section. 


## Version 29.0 (December 28th 2023)

### Bin Transfer UI improvements

The process of transferring cash in and out of bins from the POS has been optimized, and the dialog in which these actions are performed has been redesigned. 

![transfer_bin_29](transfer_bin_29.png)

### External website content on the customer screen

Salespeople can now make the customer display (second display) point to an external website with merchant-specific content they wish to display to the customers, after which they may switch back to the **Receipt** view. This website can, for example, contain a sign-up form, terms and conditions or some similar content that may be relevant for the current transaction. 

You can also enable the **Virtual Keyboard** plugin - an on-screen keyboard which the customer can use to input data on the external website, which is useful for populating various registration forms. 

For more information and operating instructions refer to the article on [<ins>Displaying external website content on the customer screen<ins>]({{< ref "../pos_layout/how-to/website_customer_screen.md" >}}).

### Integration with the Planet Payment EFT

Planet Payment is now a valid payment option for customers who wish to use the cloud terminal integration. This integration requires only a couple of installation steps to become operational, and no hardware components. 

### Fiscalization compliance with Danish fiscal laws

As of January 1. 2024, NP Retail will be fully compliant with all current requirements of Danish fiscal laws. 

As the regulation requires, users will be able to initiate data export compliant with the Standard Audit File for Tax (SAF-T) format for cash registers. In Denmark, the SAF-T format adheres to the Organization for Economic Co-operation and Development (OECD) standard, and serves as the designated file format for reporting. The exported file will be in XML format, and downloaded to the user's computer as soon as the export is finalized.

For more information and operating instructions refer to the article on [<ins>Fiscalization compliance setup - Denmark<ins>]({{< ref "../../fiscalization/denmark/how-to/setup/index.md" >}}).

## Version 28.0 (November 28th 2023)

### Belgian eID reader for POS

The Belgian eID feature enables retailers to integrate with different loyalty services to give Belgian customers discounts or vouchers. When set up, the POS operator can now read Belgian electronic identity cards to retrieve customers' data. The retrieved data is stored in Business Central, and can be processed to link the customer to their purchases.

{{< alert icon="📝" text="Additional setup is required for establishing proper implementation on how the customer's data should be processed. There is no default behavior, as each retailer may require different data and/or a different way of processing it."/>}}

For more information and operating instructions refer to the article on [<ins>Adding Belgian eID feature to POS<ins>]({{< ref "../vouchers/how-to/belgian_eid.md" >}}).

## POS Payment View Event Setup updates

The following improvements have been added to the **POS Payment View Event Setup** administrative section:

  - A new **Show Only for Selected POS Units** toggle switch has been added. If enabled, the **POS Unit Filter** panel is displayed, and you can use it to specify which POS units will bring up the Dimension pop-up when the payment is supposed to be processed.
  - The **POS Unit Filter** panel has replaced the **POS Scenarios Profile**, so you're no longer required to perform individual setup for payments on each POS unit separately.
  - When you press the payment button, the payment pop-up is displayed, whereas in the previous releases, you would move from the **Sales** view to the **Payment** view to achieve the same result by default.

### Fiscalization compliance with Serbian fiscal laws

As of the version 28, NP Retail will be compliant with Serbian fiscal laws.

For more information and operating instructions refer to the article on [<ins>Fiscalization compliance setup - Serbia<ins>]({{< ref "../../fiscalization/serbia/how-to/setup/index.md" >}}).

### Fiscalization compliance with Croatian fiscal laws

As of the version 28, NP Retail will be compliant with Croatian fiscal laws.

For more information and operating instructions refer to the article on [<ins>Fiscalization compliance setup - Croatia<ins>]({{< ref "../../fiscalization/croatia/how-to/setup.md" >}}).

### Fiscalization compliance with Slovenian fiscal laws

As of the version 28, NP Retail will be compliant with Slovenian fiscal laws.

For more information refer to the article on [<ins>Fiscalization overview - Slovenia<ins>]({{< ref "../../fiscalization/slovenia/intro.md" >}}).

### Fiscalization compliance with Bulgarian fiscal laws

As of the version 28, NP Retail will be compliant with Bulgarian fiscal laws.

For more information refer to the article on [<ins>Fiscalization compliance setup - Bulgaria<ins>]({{< ref "../../fiscalization/bulgaria/how-to/setup/index.md" >}}).

### POS editor visual improvements

- A new layout **Classic 6** has been added to the [<ins>POS editor<ins>]({{< ref "../pos_layout/how-to/activate_pos_editor/index.md" >}}). It provides a new layout/structure of buttons and grids that you can use on the POS.

    ![classic6](classic6.PNG)

- You can now also use the color picker to change the color of any button in the POS layout instead of having to manually paste the color hex value of your choice.

   ![color_picker](color_picker.PNG)

<iframe width="560" height="315" src="https://www.youtube.com/embed/ov6Reqshq70?si=6Qo3VrGeTiLT1-Wj" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>


## Version 27.0 (October 28th 2023)

### POS Sale Document Background posting

Posting of POS Sales Documents is now performed in the background provided that is it enabled in the [<ins>**POS Posting Profile**<ins>]({{< ref "../pos_profiles/how-to/posting_profile/posting_profile.md" >}}).


### POS Layout Setup Wizard

Users can now set up a POS layout, and add all the necessary buttons more quickly with the new POS Layout Setup Wizard. The wizard offers a set of predefined layouts that you can choose from based on your industry and language requirements. Once selected, the layouts can be previewed before being put to use. 

For more information, examples, and operating instructions refer to the article on [<ins>Using the POS Layout Setup Wizard<ins>]({{< ref "../pos_layout/how-to/layout_wizard/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/gMNjQMtJJhw?si=HobHN2vYeK8eV5xQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### MPOS Editor

The [<ins>POS Editor<ins>]({{< ref "../pos_layout/how-to/activate_pos_editor/index.md" >}}), introduced in the NP Retail 22 version, now supports MPOS layouts. This new feature has the same benefits as the previous editor – users will no longer need to jump between different systems to edit the MPOS UI.

For more information, examples, and operating instructions refer to the article on [<ins>Using the MPOS editor<ins>]({{< ref "../mpos/how-to/activate_mpos_editor/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/o2FdbYVLXUo?si=TcyeiSn5fGS7NbAo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Prepayment invoice posting improvements - Serbia

The prepayment feature has been adapted to support the requirement of the Serbian fiscal law to post the received prepayment invoices to transitional accounts, and not directly in the vendor accounts. It is only when the final invoice is received that the values from the transitional accounts are posted to the vendor accounts.

<iframe width="560" height="315" src="https://www.youtube.com/embed/iTMgz5-8tCQ?si=Z7AWxCCwWTJT4Z15" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>


## VAT report feature - Serbia

In accordance with the Serbian VAT regulations, it is necessary to store the data on turnover, carry out necessary calculations, and report how much VAT the company is required to pay for to Tax Authorities.

This new feature gives you the option of easily forwarding such information to the TA (Tax Authority). Each time the invoices are posted, all the accompanying information is recorded in the POPDV report as is legally required. 

The VAT report feature also provides an option of exporting the POPDV report that should be sent to the TA in XML format. 

<iframe width="560" height="315" src="https://www.youtube.com/embed/_FMOfDBBYVc?si=K432wKmnsMw7_djZ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Version 26.0 (September 28th 2023)

### Restaurant module improvements

- Now we can set up auxiliary serving steps, which won't be treated by the system as part of general serving flow, and which can be run by a salesperson on demand. They can for instance be used for sending drink requests to kitchen station.
- In addition to seating code, we can now display seating no. and waiter code in the **Kitchen Requests** page.
- You can also view kitchen requests associated with specific waiters directly on their waiter cards, improving coordination and communication within your restaurant.
- Furthermore, there's a new POS action that allows you to display open kitchen requests directly from the POS.

### Job Queue refresh

A backend process which automatically refreshes job queue entries provided that it is **Enabled** in the **Job Queue Refresh Setup** administrative section has been introduced.

By default the job queue refresh is triggered automatically once a day as soon as the first licensed user with the rights to manage the job queue logs in for the day.

<iframe width="560" height="315" src="https://www.youtube.com/embed/-A2Iio6dEOM?si=nFgBUuyXJbXl9DaD" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Azure member registration

This feature enables users to register as members and acquire a membership card more efficiently than when registering at the counter. As soon as a customer provides their name and phone number to the teller, an SMS is sent their way, and through it, they can access and submit a membership registration form. The membership is also dispatched to the customers via SMS. 

In addition to the first SMS, the store has the option of sending an SMS with a temporary membership card, granting access for a specified period. This gives customers the comfort of completing the form wherever and whenever they want. 

For more information and operating instructions refer to the article on [<ins>Azure member registration setu<ins>]({{< ref "../../entertainment/membership/how-to/azure_member_registration/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/K3E4beZycI0?si=L9cRlryy4cbs3ajh" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>


## Version 25.0 (August 28th 2023)

### Total discounts

Total discounts have been introduced in NP Retail. They give you an option of providing a discount benefit to a customer based on the total sales amount of a POS sale, or on the total sales amount of a group of items in a POS sale.

For more information, examples, and operating instructions refer to the article on [<ins>Setting up total discounts<ins>]({{< ref "../discounts/how-to/total_discount/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/YDXMMCEQJNs?si=MKpu6NWNyhSFyVrc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### POS grid editor

A new feature which allows users to change the number of rows and columns in the POS screen grids via the POS Editor has been introduced. It gives users the option of fully customizing the number of buttons that will be displayed on the screen, as well as their height. 

<iframe width="560" height="315" src="https://www.youtube.com/embed/x2BY-a8Kr6o?si=PK1YKL3_-Qk4IEnU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Fiscalization compliance with Serbian fiscal laws - in progress

We are currently working on making our POS solution compliant with Serbian fiscal laws.

## Version 24.0 (June 14th 2023)

### Getting Started Wizard 

A new wizard for simplifying the NP Retail installation process has been introduced. It helps users with quickly setting up the necessary NP Retail components, such as POS Stores, POS Units, POS Profiles, POS Payment Methods, and the POS Posting Setup. 

The Getting Started wizard consists of a basic configuration checklist accompanied with adequate instructional videos to assist you throughout the initial setup process. 

After you’ve been acquainted with the setup, you can proceed to download and import print templates and the NP Retail setup packages and create the basic NP Retail components. 

For more information and operating instructions refer to the article on the [<ins>Getting Started Wizard<ins>]({{< ref "getting_started_wizard.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/zSJ3ieGtdXE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Click and Collect prepayment  

The NP Retail Click & Collect feature has been expanded with the Prepayment feature. When creating a Click & Collect order, it is now possible to choose whether the prepayment will be allowed for the purchase amount or percentage. 

{{< alert icon="📝" text="This feature isn’t active by default. If you wish to enable it in your environment, there are several parameters that need to be configured first." />}}

For more information and operating instructions, refer to the article on [<ins>Setting up prepayment for Click & Collect<ins>]({{< ref "../click_and_collect/how-to/prepayment_bc/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/XvXVOwxP2xk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Version 22.0 (May 28th 2023)

In this release, NP Retail has undergone performance optimization, including transfer of POS to CDN. Additionally, the following features have been developed:

### Group codes

This feature gives users the ability to mark the POS sale exported from the POS to a standard sales order with a predefined group code. It allows the import of standard sales orders to a POS sale to be filtered by a group code.

A new administrative section **Group Codes** has been added to Business Central to support this addition, along with two new parameters introduced for the **SALES_DOC_EXP** and **SALES_DOC_IMP** POS actions.

For more information and operating instructions, refer to the [<ins>Group code setup<ins>]({{< ref "../pos_processes/how-to/group_codes/index.md" >}}) article.

<iframe width="560" height="315" src="https://www.youtube.com/embed/wpfHkwfprNA?si=ZS4iF8xG4RwXNKC6" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### MPOS actions for improved barcode scanning

Two new MPOS actions for improved barcode scanning have been introduced:  

- **M_SCANDITITEMINFO** - users can use the camera on their mobile devices to scan item barcodes and receive the predefined information about that item. 

- **M_SCANDITSCAN** – users can use the camera on their mobile devices to scan item barcodes and find the same barcode in direct vicinity.

For more information and operating instructions, refer to the article on [<ins>MPOS action setup for Scandit<ins>]({{< ref "../mpos/how-to/scandit/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/m8_tJSHWH1g?si=yqehGNhlrOuIRill" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### MPOS redesign

Our MPOS has undergone a complete UI overhaul, making the previous scaled-down version of the regular MPOS more modern and streamlined. 

For operating instructions, refer to the article on [<ins>MPOS setup<ins>]({{< ref "../mpos/how-to/activate_mpos_editor/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/ayTm-uh3sQs?si=PtrK5r-RYfDVE8hP" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### New POS editor

With the new POS editor, POS buttons and actions can now be configured solely from within the POS UI no longer requiring accompanying setup in Business Central. This means that it's not necessary to leave the POS to change a button or a workflow parameter. Users will be able to see their changes being reflected instantly without jumping back and forth multiple windows. Consequently, the POS configuration is simplified and load time reduced.

For operating instructions, refer to the article on [<ins>POS editor activation<ins>]({{< ref "../pos_layout/how-to/activate_pos_editor/index.md" >}})

<iframe width="560" height="315" src="https://www.youtube.com/embed/adHwN8IQwI0?si=u-vQ8ojtqzGvLuin" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Version 21.0 (April 28th 2023)

### V4 Balancing feature (end-of-day balance)

In this release, NP Retail has undergone some backend performance enhancements. Furthermore, the V3 POS Balancing feature has been sunsetted and fully replaced with the [<ins>V4 Balancing feature<ins>]({{< ref "../pos_processes/how-to/generate_eod/index.md" >}}).

## Version 20.0 (March 27th 2023)

### GS1 coupons posting with G/L account

You can now create a G/L account that is used for posting GS1 flat rate discount coupons. The discount is applied as a new G/L line with a negative amount, which is calculated from the barcode. 

For more information and operating instructions, refer to the [<ins>GS 1 coupon setup<ins>]({{< ref "../coupons/how-to/gs1/gs1_setup.md" >}}) article.

<iframe width="560" height="315" src="https://www.youtube.com/embed/N77fT6kmIwM?si=Sr5lGAV7mLHjaxXs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### MobilePay QR code on customer screen 

Customers can now use the MobilePay app to scan QR codes from the customer screen and purchase goods from a store with their electronic wallet.

For more information, refer to the article on [<ins>MobilePay feature usage<ins>]({{< ref "../../integrations/mobilepay/how-to/qr_code.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/1XR6E__XJCs?si=2EvlnsDMbGcP3e-C" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Version 19.0 (March 7th 2023)

### Limiting payment types to specific items

You can now create payment methods that are used on the POS for purchasing only the items or item categories you single out during its creation. This option is especially useful when you wish to establish vouchers as viable types of payment for specific items only.

For more information and operating instructions, refer to the following articles:

- [<ins>Meal, eco, and consumption vouchers<ins>]({{< ref "../vouchers/explanation/meal_eco/index.md" >}})
- [<ins>Limit payment types to specific items<ins>]({{< ref "../vouchers/how-to/meal_eco_setup/index.md" >}})

<iframe width="560" height="315" src="https://www.youtube.com/embed/yazYweS68-E?si=kNrcMzWEZGoUkpBN" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Bin change from the POS

With the new release, if there are multiple bins in a single store location, you can choose which bin the item is taken from during the POS sale. This is done with the new **CHANGE_BIN** POS action that can be added to the POS menu as a button.

For more information and operating instructions, refer to the article on [<ins>Changing the bin from a POS sale<ins>]({{< ref "../pos_processes/how-to/change_bin/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/IilNBACUfco?si=EPgVja0rX4lrMUHH" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Responsibility center change from the POS

You can now change the selected [<ins>responsibility center<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/inventory-responsibility-centers) from an open POS sale. When changing the responsibility center, the dimensions in the POS sale change to the dimensions of the newly selected responsibility center. This is done with the new **CHANGE_RESP_CENTER** POS action that can be added to the POS menu as a button. 

For more information and operating instructions, refer to the article on [<ins>Changing the Responsibility Center from a POS sale<ins>]({{< ref "../pos_processes/how-to/responsibility_center/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/En8d-cAsWng?si=qbsrkG62ShbMlADS" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Sending email receipts from the POS

You can now send emails with purchase receipts to customers from the POS. This can be done with the new **SEND_RECEIPT** POS action that can be added to the POS menu as a button. 

For more information and operating instructions, refer to the article on [<ins>Sending receipt to customers on purchase<ins>]({{< ref "../pos_processes/how-to/pos_sale_receipts/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/1SdL5NZTKKc?si=ou1DZojpEPHVnWbL" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### Second display control

You can now get the customer's signature on the second display upon returning of items, and enclose that with the invoice for that transaction.

For more information and operating instruction refer to the article on [<ins>returning items with the help of the second POS screen<ins>]({{< ref "../pos_processes/how-to/display2/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/Y5zKIo-nT-0?si=-_naNYmuhcSK_D_T" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Version 18.0 (January 28th 2023)

### Take a photo (from the POS)

You can now take photos of products and other items (like documents) directly from the POS. Among other things, this feature significantly improves the return process, allowing cashiers to capture the state of items at the moment of their return, and record the transaction receipts.

For more information and operating instructions, refer to the article on the [<ins>Take Photo<ins>]({{< ref "../pos_processes/how-to/take_photo/index.md" >}}) feature.

<iframe width="560" height="315" src="https://www.youtube.com/embed/XmVeUrNa42U?si=7Q7_zay7MZU0f5vI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### GS1 coupons

The GS 1 flat rate discount coupon has been introduced to NP Retail. [<ins>GS1<ins>](https://www.gs1us.org/upcs-barcodes-prefixes/additional-ways-to-identify-products/coupons) is a standard that facilitates connection between a product and all its vital data, allowing trackability, workflow efficiency, and information-sharing via electronic means. GS1 coupons can now be created on scanning, then used, and finally archived as soon as the POS sale is finalized. 

For more information and operating instructions, refer to the article on the [<ins>Coupons<ins>]({{< ref "../coupons/how-to/gs1/gs1_setup" >}}).

### HTML display profile - enhanced customer interaction and sales experience

A new POS profile has been introduced for desktop POS units with multiple displays. Its purpose is to enhance customer interaction and sales experience by allowing you to display media content on the POS screen. This content can be in the form of images, videos or even an entire website.

For more information and operating instructions, refer to the article on the [<ins>POS HTML display profile<ins>]({{< ref "../pos_profiles/how-to/html_profile/html_profile.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/jbnVawpaA44?si=hUqQx0OnTq9KZBQO" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### V4 POS balancing feature - end-of-day process

A new version of the balancing feature has been released. For more information and setup instructions, refer to the article on the [<ins>POS balancing feature V4<ins>]({{< ref "../pos_processes/how-to/generate_eod/index.md" >}}).

<iframe width="560" height="315" src="https://www.youtube.com/embed/BtP2yRqvloQ?si=OTjhFtVCF4rhrlRc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

### NP Power BI for Retail

[<ins>NP Power BI for Retail<ins>](https://appsource.microsoft.com/en-us/product/power-bi/navipartner.np-power-bi-for-retail?tab=Overview) is a new tool that can be used to analyze sales through multidimensional views and provide a detailed insight into business performance. 

For more information and operating instructions, refer to the articles on the [<ins>NP Power BI for Retail<ins>]({{< ref "../../power_bi/retail/intro.md" >}}).

### Softpay integration - Tap on Phone feature

NP Retail is now integrated with Softpay, which also includes the Tap on Phone feature, which essentially turns your smartphone into a contactless POS terminal capable of accepting payments from customers' cards or mobile wallets. 

For more information and operating instructions, refer to the articles on the [<ins>Softpay integration<ins>]({{< ref "../eft/explanation/softpay/index.md" >}})