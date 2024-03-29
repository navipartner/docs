---
title: "EFT overview"
description: "Electronic Funds Transfer (EFT) is a term that covers all of electronic payment integrations in NP Retail.
This can be anything from credit card terminals to smartphone payment systems, depending on the local market and our available integrations."
lead: ""
date: 2023-07-19T15:55:02+02:00
lastmod: 2023-07-19T15:55:02+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-fa289693346b87b0d158bb0c1466e31f"
weight: 215
toc: true
type: docs
---
Electronic Funds Transfer (EFT) is a term that covers all of electronic payment integrations in NP Retail.
This can be anything from credit card terminals to smartphone payment systems, depending on the local market and our available integrations.

All integrations need to be linked to payment methods used in the POS, since they are triggered from the POS. Linking of EFT integrations and POS payment methods is done in the **EFT Setup** page. Based on these links, the POS will invoke the EFT framework depending on which payment methods are being used on which POS Units.

You need to attach an **EFT Integration type** for every POS payment method which will trigger the integration. If there are multiple integration types used on different POS units, you need to set up multiple lines with the same payment method, but different POS units and integration types. If there are no POS units assigned to a line, all POS units without the specific setup will have the same integration type.

A store can have multiple different types of terminals/EFT methods that use different integrations with the POS. To get these to work with the POS, the following components and administrative sections need to be set up. 

## Pepper setup

The Pepper terminal integration can be used for a wide variety of terminals. There are different ways to connect the terminals, so most setups are a variation of the one provided in further text. For more information on the terminals supported in the integration, refer to the [<ins>Treibauf Pepper Library<ins>](https://www.treibauf.ch/en/terminal-type-search/) check list.

To set up the Pepper terminal integration, take the following actions in the indicated order:

1. [<ins>Import the Pepper Terminal Package<ins>]({{< ref "how-to/pepper_package_import/index.md" >}})
2. [<ins>Set up a new Terminal Type<ins>]({{< ref "how-to/new_terminal_type/index.md" >}})
3. [<ins>Set up a Pepper terminal<ins>]({{< ref "how-to/pepper_terminal/index.md" >}})
4. [<ins>Set up button to install Pepper<ins>]({{< ref "how-to/pepper_install_button/index.md" >}})
5. [<ins>Set up additional Pepper Card Types<ins>]({{< ref "how-to/pepper_card_types/index.md" >}})
6. [<ins>Set up Pepper payment with additional parameters<ins>]({{< ref "how-to/pepper_params/index.md" >}})

## NETS BAXI setup

When using NETS BAXI/Viking integrations, there are two different ways of communicating with the terminal, either through the NETS Cloud, or directly between the POS and the terminal. 

[<ins>Set up NETS Cloud integration<ins>]({{< ref "how-to/nets_baxi/index.md" >}})

## Adyen Cloud setup

Adyen as the terminal provider is set up with the Adyen Cloud integration. Both the terminal and the POS are required to establish the connection to the Adyen Cloud.  

[<ins>Set up Adyen Cloud integration<ins>]({{< ref "how-to/adyen/index.md" >}})

## MobilePay

MobilePay is a Danish app used for making payments/transfers through the phone. By integrating MobilePay with the POS, you will significantly simplify the payment process. Customers will be able to scan a QR code, and the POS will register the payment automatically, which ensures its successful processing. 

[<ins>Set up MobilePay integration<ins>]({{< ref "how-to/mobilepay/index.md" >}})

## Softpay

With Softpay integration, you can use an Android device as a Payment Terminal, if the device has NFC.  

[<ins>Set up Softpay integration<ins>]({{< ref "how-to/softpay/index.md" >}})

## External Terminal

You can use the External Terminal integration, either as an additional security measure when using terminals that are not integrated with NP Retail or as backup with additional information. It can also be used if another EFT Transaction is lost between the EFT Terminal and the POS where you can see that the terminal has accepted the transaction, but there are no other ways to transfer from the EFT Terminal to the POS. 

[<ins>Set up external terminal integration<ins>]({{< ref "how-to/external_terminal_integration/index.md" >}})

## Flexiiterm

Flexiiterm is used for integrating NaviPartner with the older NETS PSAM terminals, e.g., Ingenico IPP350 terminals.  

[<ins>Set up Flexiiterm integration<ins>]({{< ref "how-to/flexiiterm/index.md" >}})

## EFT Bin mapping

In most Terminal Integrations (other than Pepper Integration and External Terminal) the EFT Mapping Group List is used for mapping various credit cards to the POS Payment Methods so that the payments can be posted correctly in the POS Posting Setup. 

1. [<ins>Set up EFT BIN mapping<ins>]({{< ref "how-to/eft_bin/index.md" >}})
2. [<ins>Set up a new EFT BIN group<ins>]({{< ref "how-to/bin_group/index.md" >}})

## EFT Operation

In the POS Menu there is a POS action EFT_OPERATION_2, which can be used to perform different functions on different terminals. These actions include reconciling the terminal, downloading/checking for updates, and checking connection or voiding the previous transactions. 

[<ins>Set up EFT operation<ins>]({{< ref "how-to/eft_ops/index.md" >}})