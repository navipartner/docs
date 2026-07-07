---
title: "Entria order import and sync state"
description: "How Entria orders are imported per store and where the last import time is tracked."
lead: ""
date: 2026-07-07T00:00:00+00:00
lastmod: 2026-07-07T00:00:00+00:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "order_import-entria-7c1b9e40a52d4f6cb83e1a7d0296f5c1"
weight: 342
toc: true
type: docs
---

Entria orders are imported into Business Central per store by the Entria order import job queue. This article explains how the import tracks its progress.

## Import sync state

The import records how far it has progressed for each store in a dedicated **Entria store sync state**. The progress timestamp is now saved **after each processed page of orders** rather than only at the end of a run. If an import is interrupted, the next run continues from the last successfully processed page instead of reprocessing the whole batch.

To avoid missing orders around the boundary between runs, the incremental import re-checks a short overlap window before the last recorded time.

## Last Orders Imported At

The **Last Orders Imported At** value on the **Entria Store Card** shows when orders were last imported for that store. It reads from the store sync state.

{{< alert icon="📝" text="The <b>Last Orders Imported At</b> field can be edited manually to move the import marker, but not while the order import job is running for that store."/>}}
