---
title: "NAS setup"
description: "All companies that run Global Blue tax free services need three scheduled objects listed in this article to run at regular intervals."
lead: ""
date: 2023-07-06T16:18:07+02:00
lastmod: 2023-07-06T16:18:07+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "nas_setup-a940dcaf02727d735a0b0aba84a57054"
weight: 72
toc: true
type: docs
---

All companies that run Global Blue tax free services need three scheduled objects to run at regular intervals:

- Codeunit 6014617 - "Tax Free - GB I2 GetCountries" : Should be run every 30 days.
- Codeunit 6014615 - "Tax Free - GB I2 GetBCountries" : Should be run every 7 days.
- Codeunit 6014616 - "Tax Free - GB I2 GetBlockedIIN" : Should be run every 30 days.


This is a requirement for the solution, so NAS services must be purchased if not already available for the customer that needs Global Blue integration.
