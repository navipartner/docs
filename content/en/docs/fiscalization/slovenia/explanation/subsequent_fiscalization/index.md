---
title: "Subsequent fiscalization (Slovenian fiscalization)"
description: "Subsequent fiscalization needs to be performed if a POS unit is out-of-order, and the POS transactions can’t be created at the moment of purchase."
lead: ""
date: 2023-12-01T09:43:39+01:00
lastmod: 2023-12-01T09:43:39+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "subsequent_fiscalization-0f0d5d2978b9e138a18621ca4470b65c"
weight: 823
toc: true
type: docs
---

Subsequent fiscalization needs to be performed if a POS unit is out-of-order, and the POS transactions can't be created at the moment of purchase. 

If this occurs, POS transactions should be created by following the standard procedure and additionally pressing the **Bound invoice book** action on the POS screen and entering the invoice and serial numbers from the sales book. This information will be sent in the XML message to the TA, and can be viewed in the **SI Audit Log**.