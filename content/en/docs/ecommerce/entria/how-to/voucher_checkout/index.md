---
title: "Use vouchers in Entria checkout"
description: "Apply voucher codes during Entria checkout and understand setup requirements and outcomes."
lead: ""
date: 2026-03-30T00:00:00+00:00
lastmod: 2026-03-30T00:00:00+00:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "voucher_checkout-entria-9e0a8626647e9f31b7ef82bcfe429f35"
weight: 341
toc: true
type: docs
---

Use this guide if you want customers to apply vouchers directly in Entria checkout.

## Prerequisites

- Voucher support must be enabled in the Entria backend.
- Voucher payment provider and voucher collection endpoint must be configured.
- The integration must be able to authenticate against Business Central APIs (for example, BC API key setup where required by your environment).
- Voucher currency and checkout currency must be compatible.

## Apply a voucher in checkout

1. Open the checkout page and proceed to payment.
2. Enter the voucher code in the voucher input field.
3. Apply the voucher.
4. Confirm that the voucher amount is deducted from the total.

## Payment outcomes

- **Voucher covers full amount**: checkout can be completed without an extra payment method.
- **Voucher covers partial amount**: customer pays the remaining balance with a regular payment method.
- **Voucher rejected**: checkout remains open and shows a validation error.

## Common validation errors

- Voucher code not found.
- Voucher already used or exhausted.
- Voucher currency does not match checkout currency.
- Backend/API authentication or configuration issue when validating voucher.

## Operational notes

- If voucher validation fails unexpectedly, verify backend integration logs first.
- If checkout behavior differs between environments, verify environment-specific API key and voucher provider settings.
