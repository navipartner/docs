---
title: "Inventory setup in Business Central when installing NP Retail"
description: "Before running our POS solution, it's strongly encouraged that our partners make sure the proper initial setup is completed in Business Central."
lead: ""
date: 2023-10-26T13:42:29+02:00
lastmod: 2023-10-26T13:42:29+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "inventory_setup-8c418fbd089e681ecae41de56f3eaa67"
weight: 500
toc: true
type: docs
---


Before running our POS solution, it's strongly encouraged that our partners make sure the proper initial setup is completed in Business Central.

## Automatic cost posting

  {{< alert icon="❗" text="Automatic Cost Posting is generally recommended to be disabled for NP Retail POS scenarios unless your solution design explicitly requires immediate posting."/>}}

For most NP Retail POS implementations, **Automatic Cost Posting** is kept disabled and cost posting is handled through scheduled jobs. This setup helps control posting volume and timing. If your project requires different behavior, validate it with your solution architect before changing this setting.

  ![automatic_posting](automatic_posting.png)

## Automatic cost adjustment

  {{< alert icon="❗" text="Automatic Cost Adjustment is generally recommended to be set to <b>Never</b> for NP Retail POS scenarios unless your solution design requires otherwise."/>}}

For most NP Retail POS implementations, **Automatic Cost Adjustment** is handled via scheduled processing. This reduces contention during daily operations and gives better control over when adjustments are executed. If your project uses another pattern, confirm it as part of the implementation design.

  ![automatic_adjustment](automatic_adjustment.PNG)