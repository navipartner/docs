---
title: "Credit memo troubleshooting"
description: "Refer to the Credit memo troubleshooting guide if you encounter related issues."
lead: ""
date: 2023-07-18T13:22:23+02:00
lastmod: 2023-07-18T13:22:23+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "credit_memo-10274ffaf1503315eb4cf00f980faf0d"
weight: 901
toc: true
type: docs
---

#### Is it possible to issue a credit memo to customers with reference to a previous sale?

Yes. To achieve this, follow the provided steps:

 1. From the POS, open the return flow that your menu profile exposes (for example **Other function (menu)** > **Return (menu)**).
 2. Select the reverse/return action used in your POS menu, and provide the return receipt reference number in the pop-up window.
    The receipt number corresponds to the document number from the relevant POS entry.
 3. Navigate to **Payment**, and then run the credit memo action configured in your environment.
    The credit memo is created.

{{< alert icon="📝" text="Action captions can differ between environments because POS menus are configurable. If your labels differ from this example, follow your configured return/reversal and credit-memo actions."/>}}