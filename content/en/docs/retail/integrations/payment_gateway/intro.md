---
title: "Payment gateway overview"
description: ""
lead: ""
date: 2023-07-11T10:31:34+02:00
lastmod: 2023-07-11T10:31:34+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-b5f9662e4c10b3f4a8681bd8b3019673"
weight: 999
toc: true
type: docs
---

Payment Gateways play an integral role in the integration with webshops, when you're performing order handling in Business Central.

NP Retail comes with a module to handle the payments done on web orders. The out-of-the-box NP Retail has integrations with the following Payment Service Providers:

- [Adyen](https://www.adyen.com/our-solution/online-payments)
- [Bambora](https://www.bambora.com/online/)
- Dibs
- Netaxept
- [Nets Easy](https://www.nets.eu/payments/online)
- [QuickPay](https://quickpay.net)

The module enables you to use a combination of Payment Service Providers for capturing, refunding, and cancelling transactions based on operations performed in Business Central.

{{< alert icon="📝" text="If your Payment Service Provider is not shown on this list, your partner has an <a href=\"https://github.com/navipartner/payment-gateway-integration-example\">option of developing a custom integration </a>" />}}

## Payment Gateway setup in NP Retail

- [Set up Bambora payment integration]({{< ref "bambora/index.md" >}})
- [Set up Quickpay integration]({{< ref "quickpay/index.md" >}})
- [Set up Nets Easy integration]({{< ref "netseasy/index.md" >}})
- [Set up Adyen integration]({{< ref "adyen/index.md" >}})
