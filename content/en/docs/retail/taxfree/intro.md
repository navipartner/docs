---
title: "Tax-free module overview"
description: "The POS Tax Free Profile is used for setting up the tax-free integration when POS sales are performed. When established, it ensures that certain types of goods aren't taxed."
lead: ""
date: 2023-07-06T16:09:08+02:00
lastmod: 2023-07-06T16:09:08+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-92b3f19f8dc84b680a0be3665143b176"
weight: 165
toc: true
type: docs
---

The POS Tax Free Profile is used for setting up the tax-free integration when POS sales are performed. When established, it ensures that certain types of goods aren't taxed. 

Global Blue is a company which provides tax-free shopping services. Its IC2 solution is available on POS terminals, as well as other channels. It's possible to set up Global Blue Tax Free in NP Retail.

## POS tax free services

Retail tax free services provide an easy flow for tourists who are leaving the EU with their purchased goods to declare them at the airport and receive the tax refund.
There are various POS Tax Free services on the market. NPRetail integrates directly with two of them, with more integrations on the way.  

These tax free providers act as a middleman between the customer and the shop - they make sure that all country-specific compliance policies are met, and handle the tax refund transactions to the customer accounts while clearing the amounts with the shop later.

Some of the services also allow the shoppers to receive their tax refund before leaving the country, allowing them to put the tax amount towards future shopping.

Some of the services can detect foreign credit cards by matching on the IIN (the first 6 digits of the card number). 
They all work by receiving receipt information from NPRetail in return for a tax free voucher that is printed and handed to the end customer.  


A fee of the tax refund amount is taken in return for the service provided by the tax free service provider.

{{< alert icon="📝" text="It is also possible to provide tax free services without a middle-man tax free provider, but the details of this, regarding bookkeeping, storage of documents and compliance will depend on the country legislation."/>}}

## Troubleshooting 

[Tax-free troubleshooting]({{< ref "../../troubleshooting/tax_free.md" >}})