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

## Troubleshooting

If kiosk behavior is not as expected, start by checking whether tenant configuration is loaded correctly, including dining options and language settings. Then confirm that kiosk mode can retrieve active sale/session state after refresh and that connectivity to backend services is stable for both sale retrieval and membership validation. While the issue is being investigated, you can temporarily switch the kiosk to **Out of Order** to prevent customers from entering an unstable flow.

