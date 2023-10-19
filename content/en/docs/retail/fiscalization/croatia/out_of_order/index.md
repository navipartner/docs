---
title: "Subsequent fiscalization (Croatian fiscalization)"
description: "Subsequent fiscalization needs to be performed if a POS unit is out-of-order, and the POS transactions can't be created at the moment."
lead: ""
date: 2023-10-19T13:47:14+02:00
lastmod: 2023-10-19T13:47:14+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "out_of_order-c4d4000b534c6b03ff3c8b595868476b"
weight: 999
toc: true
type: docs
---

Subsequent fiscalization needs to be performed if a POS unit is out-of-order, and the POS transactions can't be created at the moment. 

In case of the temporary POS unit failure, the POS transaction should be created with the standard procedure, with the exception of a Paragon number that needs to be input manually. This **Paragon Number** will then be recorded in the **CRO POS Audit Log Aux. Info** page.

  ![croatian_fiscalization9](croatian_fiscalization9.PNG)

In this case, an XML message will contain the information about the **Paragon Receipt No.**.

  ![croatian_fiscalization10](croatian_fiscalization10.PNG)