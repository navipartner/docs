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

In the example above, if a user tries to pay with the payment method "T" on the POS unit 3, the **MOCK_CLIENT_SIDE** type of integration will be used, but if that user tries to pay with the same payment method **T** on the POS unit 2, the **FLEXIITERM** integration type will be used.