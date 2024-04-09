---
title: "External payment service providers - overview"
description: "NP Retail is integrated with external payment service providers listed in this article."
lead: ""
date: 2023-09-14T10:19:05+02:00
lastmod: 2023-09-14T10:19:05+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-af34bb080194e8396cb17268661db35f"
weight: 625
toc: true
type: docs
---

Electronic Funds Transfer (EFT) is a term that covers all of electronic payment services compatible with NP solutions. The fully supported native payment service provider is NP Pay, but it's also possible to integrate our solutions with external PSPs like SoftPay, Nets Baxi etc. These integrations can incorporate anything from credit card terminals to smartphone payment systems, depending on the local market.

All integrations need to be linked to payment methods used on the POS, since that's where they are triggered from. Establishing links between EFT integrations and POS payment methods is done in the **EFT Setup** administrative section in Business Central. When the setup is complete, the POS invokes a specific EFT framework depending on the selected payment method.

You need to attach an EFT integration type for every POS payment method which will trigger the integration. If multiple integration types are used on different POS units, you need to set up multiple lines with the same payment method, but different POS units and integration types. If there are no POS units assigned to a line, all POS units without the specific setup will have the same integration type.


## Pepper setup

The Pepper terminal integration can be used for a wide variety of terminals. There are different ways to connect the terminals, so most setups are a variation of the one provided in further text. For more information on the terminals supported in the integration, refer to the [<ins>Treibauf Pepper Library<ins>](https://www.treibauf.ch/en/terminal-type-search/) check list.

To set up the Pepper terminal integration, take the following actions in the indicated order:

1. [<ins>Import the Pepper Terminal Package<ins>]({{< ref "pepper/how-to/pepper_package_import/index.md" >}})
2. [<ins>Set up a new Terminal Type<ins>]({{< ref "pepper/how-to/new_terminal_type/index.md" >}})
3. [<ins>Set up a Pepper terminal<ins>]({{< ref "pepper/how-to/pepper_terminal/index.md" >}})
4. [<ins>Set up button to install Pepper<ins>]({{< ref "pepper/how-to/pepper_install_button/index.md" >}})
5. [<ins>Set up additional Pepper Card Types<ins>]({{< ref "pepper/how-to/pepper_card_types/index.md" >}})
6. [<ins>Set up Pepper payment with additional parameters<ins>]({{< ref "pepper/how-to/pepper_params/index.md" >}})

## NETS BAXI setup

When using NETS BAXI/Viking integrations, there are two different ways of communicating with the terminal, either through the NETS Cloud, or directly between the POS and the terminal. 

[<ins>Set up NETS Cloud integration<ins>]({{< ref "nets_baxi/how-to/setup/index.md" >}})


## MobilePay/Vipps MobilePay

MobilePay is a Danish app used for making payments/transfers through the phone. By integrating MobilePay with the POS, you will significantly simplify the payment process. Customers will be able to scan a QR code, and the POS will register the payment automatically, which ensures its successful processing. 

[<ins>Set up MobilePay integration<ins>]({{< ref "mobilepay/how-to/setup/index.md" >}})

Vipps MobilePay is the most recently developed version of the MobilePay solution that supports the same features (with the improvement of also extending to Norwegian market), but has different setup procedure. Its purpose is to make payment in stores easy, with static QR codes generated in the mobile wallet app. 

[<ins>Set up Vipps MobilePay integration<ins>]({{< ref "mobilepay/how-to/vipps_setup/index.md" >}})

## Softpay

With Softpay integration, you can use an Android device as a Payment Terminal, if the device has NFC.  

[<ins>Set up Softpay integration<ins>]({{< ref "softpay/how-to/setup/index.md" >}})

## External Terminal

You can use the External Terminal integration, either as an additional security measure when using terminals that are not integrated with NP Retail or as backup with additional information. It can also be used if another EFT Transaction is lost between the EFT Terminal and the POS where you can see that the terminal has accepted the transaction, but there are no other ways to transfer from the EFT Terminal to the POS. 

[<ins>Set up external terminal integration<ins>]({{< ref "external_terminal/how-to/setup/index.md" >}})

## Flexiiterm

Flexiiterm is used for integrating NaviPartner with the older NETS PSAM terminals, e.g., Ingenico IPP350 terminals.  

[<ins>Set up Flexiiterm integration<ins>]({{< ref "flexiiterm/how-to/setup/index.md" >}})
