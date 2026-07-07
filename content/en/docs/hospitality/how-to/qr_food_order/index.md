---
title: "QR food ordering guest experience"
description: "How the QR food ordering web app presents menus, dining options, availability, and prices to guests."
lead: ""
date: 2026-07-07T00:00:00+00:00
lastmod: 2026-07-07T00:00:00+00:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "qr_food_order-3a7c9e21b45d4f8ea0c6d2f18e73b904"
weight: 343
toc: true
type: docs
---

This article explains how the QR food ordering web app behaves for guests, so you know what to expect from the setup you configure in Business Central.

## Dining options and menus

Menus are dining-option aware. When a guest selects a dining option (for example **dine-in** or **take-away**), the app shows the menu that matches that option. This lets you present different items or prices per dining option from the same restaurant.

Each dining option is tied to a **VAT business posting group**, which the app passes when it fetches the menu. Make sure every dining option you offer has a VAT business posting group configured, otherwise the menu cannot be loaded for that option.

## Menu availability by time zone

Menus can be limited to availability windows (for example a lunch menu that is only shown during lunch hours). Availability is evaluated in the **restaurant's local time zone**, not the guest's device time zone, so a menu opens and closes at the intended local time regardless of where the guest is.

If a restaurant has no menu currently within its availability window, the app treats the restaurant as closed for ordering until the next window opens.

## Prices and item presentation

- **Free items and ingredients.** When an ingredient has no additional cost, the app shows a translatable **Free** label instead of a `0.00` amount, so guests are not shown a zero price.
- **Long descriptions.** Item descriptions that exceed the visible area are collapsed with a **Show more / Show less** toggle. Short descriptions are shown in full. This keeps long, richly formatted descriptions readable without pushing ordering controls off screen.
- **Page title.** The browser tab title is set to the selected restaurant's name, falling back to *Tableside* when no restaurant is selected.

## Related API changes

The QR food ordering and self-service proxy also expose a POS sale park endpoint and a menu VAT parameter. See [<ins>POS Sale API: park and resume<ins>]({{< ref "../../../retail/pos_processes/reference/pos_sale_api/index.md" >}}) for the park/resume behavior used by the payment-recovery flow.
