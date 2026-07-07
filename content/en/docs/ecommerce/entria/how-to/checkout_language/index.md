---
title: "Entria checkout language and locale"
description: "How the cart locale drives the checkout language and how it maps to the order and session."
lead: ""
date: 2026-07-07T00:00:00+00:00
lastmod: 2026-07-07T00:00:00+00:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "checkout_language-entria-4e8a1c26b93d47f0ad51c7e208136af9"
weight: 343
toc: true
type: docs
---

Entria checkout derives its language from the cart's locale, so a shopper continues in the same language they were browsing in.

## How the language is resolved

The cart/order locale (for example `da-DK`) is the source of truth. The checkout takes the base language part of that locale (`da-DK` → `da`) to decide which language to display. If the cart has no usable locale, the checkout falls back to the store's locale, and finally to English.

Currently the supported checkout languages are **English (`en`)** and **Danish (`da`)**. A locale that resolves to any other language logs a warning and falls back to English.

## Locale versus store formatting

Two locales are involved and they serve different purposes:

- **Store locale** controls number and currency formatting.
- **Cart/order locale** controls the interface language and date formatting.

When you set up a store, make sure its locale and the cart locales you expect are consistent with the supported languages above, so shoppers get both correct formatting and a translated interface.
