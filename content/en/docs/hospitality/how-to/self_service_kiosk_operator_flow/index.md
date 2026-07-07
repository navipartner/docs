---
title: "Self-service kiosk and operator flow"
description: "Operational behavior and controls for the self-service food kiosk web app."
lead: ""
date: 2026-03-30T12:00:00+02:00
lastmod: 2026-03-30T12:00:00+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "self_service_kiosk_operator_flow-9af6e4c3f3f144d2a8f8263738ec2d40"
weight: 342
toc: true
type: docs
---

This article explains how the self-service kiosk web app behaves for both customers and operators.

## Dining option behavior

When the tenant has only one dining option configured, the kiosk skips the dining choice page and continues directly with the ordering flow. If the tenant has no dining options configured at all, the kiosk does not continue to ordering. In that case, users remain on the home flow until an administrator fixes the tenant configuration.

## Language behavior

The list of available kiosk languages is loaded from tenant configuration. This means that when tenant language settings are changed, the language choices in kiosk mode are updated accordingly.

## Operator actions

In kiosk mode, operators can use three dedicated controls. **Refresh Kiosk** refreshes kiosk state and should keep the active sale context when the flow supports it. **Exit to App** leaves kiosk mode and returns to the application shell. **Out of Order** marks the kiosk as unavailable until normal operation is restored.

## Session behavior on refresh

A kiosk refresh should continue the active sale/session flow, rather than starting an unrelated new sale. If an active sale cannot be restored after refresh, operators should verify backend connectivity and sale retrieval first, and only then reopen kiosk mode for customers.

## Membership-check loading behavior

While membership validation is running, the kiosk shows a loading spinner so users and operators can see that processing is still in progress. Operators should wait for this validation to finish before retrying actions, because repeated clicks can create duplicate requests.

## Locked kiosk on payment failure

If a customer's payment is taken but the order cannot be completed on the kiosk, the kiosk locks itself and shows a **needs assistance** screen asking the customer to ask a staff member for help. This prevents the customer from retrying and paying twice.

In this situation the sale is parked so it can be completed by staff on the POS rather than lost. The locked state persists across a page reload, so the kiosk stays on the assistance screen until staff clear it.

To recover, staff use the **Refresh Kiosk** control in the staff menu. This clears the locked state and returns the kiosk to normal operation. When the sale was parked, refreshing keeps the parked sale intact so it can still be completed on the POS.

{{< alert icon="📝" text="The <b>Cancel payment</b> button is not shown while a payment is being processed, so customers cannot interrupt an in-progress payment."/>}}

## Category descriptions on the product list

Product categories on the kiosk product list show their description below the category title when one is set. Descriptions are shown in the customer's selected language, so maintain localized category descriptions to guide customers through the menu.

## Troubleshooting

If kiosk behavior is not as expected, start by checking whether tenant configuration is loaded correctly, including dining options and language settings. Then confirm that kiosk mode can retrieve active sale/session state after refresh and that connectivity to backend services is stable for both sale retrieval and membership validation. While the issue is being investigated, you can temporarily switch the kiosk to **Out of Order** to prevent customers from entering an unstable flow.

