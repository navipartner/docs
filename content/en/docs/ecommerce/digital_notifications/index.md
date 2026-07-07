---
title: "Digital notifications for e-commerce orders"
description: "Consolidated NP Designer notification emails for e-commerce virtual items, including vouchers, tickets, coupons, and attraction wallets."
lead: ""
date: 2026-07-07T00:00:00+00:00
lastmod: 2026-07-07T00:00:00+00:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "digital_notifications-2f6b8c1e9a4d47b3b0e2c7d915840a63"
weight: 335
toc: true
type: docs
---

When an e-commerce order contains virtual items, the system can send the customer a single consolidated **digital notification** email built with NP Designer. The email includes a manifest — the *View Your Digital Products* link — that gives the customer access to the digital products they bought.

## Supported virtual items

A digital notification for an e-commerce order can include:

- **Vouchers**
- **Tickets**
- **Coupons**
- **Attraction wallets**

Coupons and attraction wallets are included for e-commerce orders. Where a ticket is bundled inside an attraction wallet, it is presented as part of that wallet rather than as a separate ticket.

{{< alert icon="📝" text="Memberships are not part of this notification. Membership purchases keep their own welcome/notification flow."/>}}

## Job queue

E-commerce digital notifications are sent by the **NPR EcomDigitalNotifJQ** job queue. Make sure this job queue is running so notifications are delivered promptly after an order is processed.

## Exclude items from the manifest

On the **NPR Digital Notification Setup** page you can control which item types appear in the manifest link:

- **Exclude Vouchers From Manifest**
- **Exclude Tickets From Manifest**

Enabling an exclude flag removes that item type from the *View Your Digital Products* manifest only. The item still appears in the order items table in the email body. The ticket exclusion applies to standalone tickets — tickets that are bundled inside an attraction wallet are still shown as part of the wallet.
