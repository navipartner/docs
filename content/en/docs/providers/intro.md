---
title: "EFT providers overview"
description: "NP Retail is integrated with payment providers listed in this article."
lead: ""
date: 2023-09-14T10:19:05+02:00
lastmod: 2023-09-14T10:19:05+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-af34bb080194e8396cb17268661db35f"
weight: 650
toc: true
type: docs
---

Electronic Funds Transfer (EFT) is a term that covers all of electronic payment integrations in NP solutions. These integrations can incorporate anything from credit card terminals to smartphone payment systems, depending on the local market.

All integrations need to be linked to payment methods used on the POS, since that's where they are triggered from. Establishing links between EFT integrations and POS payment methods is done in the **EFT Setup** administrative section in Business Central. When the setup is complete, the POS invokes a specific EFT framework depending on the selected payment method.

You need to attach an EFT integration type for every POS payment method which will trigger the integration. If multiple integration types are used on different POS units, you need to set up multiple lines with the same payment method, but different POS units and integration types. If there are no POS units assigned to a line, all POS units without the specific setup will have the same integration type.
