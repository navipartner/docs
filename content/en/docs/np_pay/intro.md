---
title: "NP Pay overview"
description: "NP Pay is NaviPartner's payment service provider."
lead: ""
date: 2024-04-09T14:32:47+02:00
lastmod: 2024-04-09T14:32:47+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-f481fc9686b157b4a6308d2690b31b3e"
weight: 625
toc: true
type: docs
---

NP Pay is NaviPartner's payment service provider. Currently, only the cloud architecture is supported, whereby the POS and the payment terminal communicate via the Internet. However, it will also be possible to establish local network communication between the POS and the terminal in the future. 

  {{< alert icon="📝" text="NaviPartner's solutions are also compatible with multiple external payment service providers, although we offer full support only for NP Pay."/>}}

## NP Pay features

### Endless Aisle

The [Endless Aisle]({{< ref "how-to/endless_aisle/index.md" >}}) feature offers customers the option of purchasing items that aren't available or typically carried by the store from the retailer's extended inventory. The inclusion of out-of-stock items is facilitated by converting a POS sale into a sales order. Customers need to make the adequate payment reservations with their credit/debit cards, and provide the shipping information. The payment itself isn't captured until the sales order has been posted. 

### Pay by Link

The [Pay by Link]({{< ref "how-to/pay_by_link/index.md" >}}) feature enables businesses to streamline the payment process by allowing customers to make secure online payments through a direct link, whether the sale is initiated via phone or email. 

### Reconciliation

[Payment reconciliation]({{< ref "explanation/reconciliation/index.md" >}}) is a critical tool for managing the complexities of financial accuracy and accountability that need to be maintained daily. Payment reconciliation is used to identify errors and discrepancies, preventing fraud, enhancing cash flow management, ensuring precise financial reporting, optimizing operational efficiency, and supporting budgeting and forecasting. 

### Emergency mPOS

[NP Retail Emergency mPOS]({{< ref "explanation/emergency_mpos/index.md" >}}) is an application designed to help customers process payments when either Business Central (BC) or the Internet is unavailable. It ensures business continuity by allowing transactions even in emergency situations.

### Smart terminals

You can leverage multipurpose smart terminals that serve the purpose of traditional countertop terminals as well as support the installation of Android apps. This allows them to be used seamlessly with NaviPartner's MPOS app and the Emergency POS app. 

### Customer tips

Customers can select from several tipping options when making a purchase, such as 10%, 15%, or 20%. Additionally, they can enter a custom tip amount. 

### Single-page checkout

NP Pay is integrated with Shopify and supports single-click checkout, which eliminates the need to redirect users to third-party payment gateways and streamlines the purchasing process. 

## NP Pay setup guides

- [Set up NP Pay Cloud]({{< ref "how-to/setup/index.md" >}})
- [Verify NP Pay Cloud setup]({{< ref "how-to/verify_setup/index.md" >}})
