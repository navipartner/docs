---
title: "Testing flow for Shipmondo integration"
description: "After the integration is installed, there are certain steps it's recommended to take to ensure that everything has been set up properly."
lead: ""
date: 2023-10-17T13:50:58+02:00
lastmod: 2023-10-17T13:50:58+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "testing-ae1c2fad425559d1558b97e4ef529bb5"
weight: 733
toc: true
type: docs
---

After the integration is installed, there are certain steps it's recommended to take to ensure that everything has been set up properly.

- Make sure the integration is configured and enabled in **Shipping Provider Setup** in Business Central.
- Never send the same shipment to Shipmondo twice from the **Shipping Provider Document** page.
- Check the **Response Shipment ID** and **Response Package No.** fields on the **Shipping Provider Document** page to see whether the shipment is going to be sent to the Shipmondo website or not.
- Note that there's no way to see what the label looks like in Business Central (other than viewing the code directly).
- Use the environment/test mode fields in **Shipping Provider Setup** to control whether requests go to test/sandbox or production endpoints.
- Keep in mind that the following flow should be maintained: **Web order** > **Import list** > **Sales order** > **Posting** > **Shipping Provider Document** > **Shipmondo website** > **Label**. Steps after **Posting** are only automatic when the relevant shipping automation options (for example immediate send) are enabled in setup.