---
title: "EFT providers overview"
description: "Electronic Funds Transfer (EFT) is a term that covers all of electronic payment integrations in NP solutions. These integrations can incorporate anything from credit card terminals to smartphone payment systems, depending on the local market."
lead: ""
date: 2023-12-20T09:54:09+01:00
lastmod: 2023-12-20T09:54:09+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-646f853391e0b62980ac3b68d47b11fb"
weight: 650
toc: true
type: docs
---

Electronic Funds Transfer (EFT) is a term that covers all of electronic payment integrations in NP solutions. These integrations can incorporate anything from credit card terminals to smartphone payment systems, depending on the local market.

All integrations need to be linked to payment methods used on the POS, since that's where they are triggered from. Establishing links between EFT integrations and POS payment methods is done in the **EFT Setup** administrative section in Business Central. When the setup is complete, the POS invokes a specific EFT framework depending on the selected payment method.

You need to attach an EFT integration type for every POS payment method which will trigger the integration. If multiple integration types are used on different POS units, you need to set up multiple lines with the same payment method, but different POS units and integration types. If there are no POS units assigned to a line, all POS units without the specific setup will have the same integration type.


