---
title: "Set up NP Retail Emergency mPOS"
description: "This article walks you through the process of setting up the NP Retail Emergency mPOS app and using its features."
lead: ""
date: 2025-02-04T15:36:25+01:00
lastmod: 2025-02-04T15:36:25+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "emergency_pos-4881240f70718cb52f4744854748cffb"
weight: 627
toc: true
type: docs
---

NP Retail Emergency mPOS is an application designed to help customers process payments when Business Central (BC) or the internet is unavailable. This article walks you through the process of setting it and using its features.

## Configure Business Central

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Emergency mPOS Setup**, and choose the related link.           
2. Provide the basic information needed for the emergency POS to work correctly, such as supported payment methods and SMS/email templates.
3. Contact the NaviPartner consultancy team to assist with **NP Pay POS Payment Setup** for automatic configuration.

## Prepare your device

### Prerequisites

- Request software installation for NP Pay from the NaviPartner consultancy team.
- Install the **Adyen Payments** app if you're also using the [<ins>Tap to pay<ins>]({{< ref "../tap_to_pay/index.md" >}}) feature.      
  There is both a live and a test version of this app in the Google Play store. 

### Set up the Emergency mPOS app

1. Open the **NP Retail Emergency mPOS** app on your device.      
   The home screen is displayed.

    {{< alert icon="📝" text="If unsynchronized sales exist, you’ll be notified to sync them."/>}}

2. Tap **Setup**. 

     ![emergency_1](Images/emergency_1.png)

    The setup menu is displayed.

2. Tap **Quick Setup**.       

   ![emergency_2](Images/emergency_2.png)

3. Sign in or scan a QR code to configure the device.     

   {{< alert icon="📝" text="These options only work if the preliminary setup has been performed in the <b>Emergency mPOS Setup</b> administrative section in Business Central. "/>}}

   ![emergency_3](Images/emergency_3.png)

## Additional setup

The other setup pages and the options they contain are briefly outlined in this section. For more details on each individual page, switch to the [<ins>reference guide<ins>]({{< ref "../../reference/emergency_pos/index.md" >}})

### BC setup

- Connect the app to Business Central for synchronization.
- Configure SMS/email receipt templates.

   ![emergency_4](Images/emergency_4.png)

### Payment setup

The payment setup page specifies all configurations related to sales and payments. 

- Define payment methods (EFT, cash, Tap to Pay, LAN Terminal).
- Configure encryption details for secure transactions.
- Enable Boarding for Adyen Payments app integration.

  ![emergency_5](Images/emergency_5.png)


### Scanner setup

- Use **Binary Eye** for camera-based barcode scanning.
- Opt for HID mode for built-in hardware scanners.

  ![emergency_6](Images/emergency_6.png)

### See also

- [<ins>NP Retail Emergency mPOS overview<ins>]({{< ref "../../explanation/emergency_mpos/index.md" >}})   
- [<ins>Make a sale on NP Retail Emergency mPOS<ins>]({{< ref "../emergency_sale/index.md" >}})
- [<ins>NP Retail Emergency mPOS (reference guide)<ins>]({{< ref "../../reference/emergency_pos/index.md" >}})