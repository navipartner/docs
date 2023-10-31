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

  {{< alert icon="❗" text="It is very important that <b>Automatic Cost Posting</b> is <b>NOT</b> enabled in <b>Inventory Setup</b>."/>}}

Although **Automatic Cost Posting** is by default enabled in Business Central, the POS doesn't support this particular configuration choice. NaviPartner creates a job with a specific purpose to run the cost posting instead.

  ![automatic_posting](automatic_posting.png)

## Automatic cost adjustment

  {{< alert icon="❗" text="It is very important that <b>Automatic Cost Adjustment</b> in <b>Inventory Setup</b> is set to <b>NEVER</b>."/>}}

Although **Automatic Cost Adjustment** is by default activated in the **Inventory Setup**, the POS doesn't support this configuration choice. Instead, NaviPartner creates a job with a specific purpose to run the cost posting instead.

  ![automatic_adjustment](automatic_adjustment.PNG)