---
title: "Set up Tap to Pay"
description: "Tap to Pay is an NP Pay feature integrated with the NP Retail POS app that can be used from Android devices to accept payments and perform refunds."
lead: ""
date: 2024-10-07T16:16:41+02:00
lastmod: 2024-10-07T16:16:41+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "tap_to_pay-9bf38d6a551ed409f3409735addcbdd8"
weight: 627
toc: true
type: docs
---

Tap to Pay is an NP Pay feature integrated with the NP Retail POS app that can be used from Android devices to accept payments and perform refunds. It helps users reduce the number of devices needed to perform daily tasks related to sales. 

To set this feature up, make sure the prerequisites are met, and follow the provided steps:

## Prerequisites

- NaviPartner consultancy team needs to perform the initial setup that is required for the feature to work. If you wish to enable this feature, please make a request via a ticket.    
  The information they need to provide includes the API key, encryption data, store data, and the merchant account. 

## Procedure in Business Central

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **EFT Setup**, and choose the related link.           
2. Create a new EFT record with a payment code, the POS unit of the mPOS, and select the **ADYEN_MPOS_TTP** integration type.
3. Open the **Payment Type Parameters** from the ribbon.
4. Under **Tap-To-Pay** provide **API Key**, **Key Identifier**, **Key Passphrase**, **Key Version**, and select the **Live Environment**.
5. Click ![elipsis](elipsis_icon.png) and provide the appropriate store in the **Store ID** field.
6. Provide the **Merchant Account** name in **Customer Loyalty**.

## POS setup

1. Open the POS.
2. Create a button with the POS action **Payment_2** and the payment code equal to the EFT setup record.

## Device setup

- Install NP Retail POS from Google Play.
- Install Adyen Payments from Google Play.