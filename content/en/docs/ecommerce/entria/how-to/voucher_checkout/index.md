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

Use this guide when you want customers to apply vouchers directly in Entria checkout.

## Prerequisites

Before vouchers can be used in checkout, the voucher functionality must be enabled in the Entria backend and connected to a configured voucher payment provider and voucher collection endpoint. Your integration must also be able to authenticate toward Business Central APIs, for example through BC API key configuration in environments where that is required. Finally, make sure voucher currency and checkout currency are compatible.

## Apply a voucher in checkout

When a customer reaches the payment step in checkout, they can enter the voucher code in the voucher input field and apply it. If the voucher is valid, checkout updates immediately and deducts the voucher amount from the order total.

## Payment outcomes

There are three expected outcomes when applying a voucher. If the voucher covers the full order amount, checkout can be completed without selecting an additional payment method. If the voucher only covers part of the amount, the customer pays the remaining balance with a regular payment method. If the voucher is rejected, checkout stays open and shows a validation error so the customer can try another code or continue without voucher payment.

## Common validation errors

Most validation failures are caused by one of the following conditions: the voucher code can not be found, the voucher has already been used or exhausted, the voucher currency does not match the checkout currency, or backend/API authentication and configuration is not valid at the time of voucher validation.

## Operational notes

If voucher validation fails unexpectedly, start by checking backend integration logs, as they usually show whether the issue is data-related or configuration-related. If checkout behavior differs between environments, compare environment-specific API key and voucher provider settings first, since those differences are a common root cause.
