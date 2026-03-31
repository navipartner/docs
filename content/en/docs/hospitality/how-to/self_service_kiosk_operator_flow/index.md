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

- If fewer than two dining options are configured, the dining choice page is skipped automatically.
- If no dining options are configured, the kiosk does not continue to ordering. The user remains on the home flow and a configuration issue should be resolved by an administrator.

## Language behavior

- Available kiosk languages are loaded from tenant configuration.
- If tenant language configuration changes, the kiosk language options reflect those changes.

## Operator actions

The following operator controls are available in kiosk mode:

- **Refresh Kiosk**: refreshes kiosk state while preserving the current sale context when supported by the flow.
- **Exit to App**: exits kiosk mode and returns to the application shell.
- **Out of Order**: sets kiosk status to unavailable until normal operation is restored.

## Session behavior on refresh

- Refreshing kiosk should continue with the active sale/session flow, instead of dropping the customer back to an unrelated new sale state.
- If the active sale can not be restored, operators should verify backend connectivity and sale retrieval before reopening kiosk for customers.

## Membership-check loading behavior

- When membership validation is in progress, the kiosk shows a loading spinner.
- Operators should wait for completion before retrying actions, to avoid duplicate requests.

## Troubleshooting

If kiosk behavior is not as expected:

1. Verify tenant configuration is loaded correctly (dining options and languages).
2. Verify kiosk can retrieve active sale/session state after refresh.
3. Check connectivity to backend services used for sale and membership checks.
4. Temporarily switch kiosk to **Out of Order** while resolving issues.

