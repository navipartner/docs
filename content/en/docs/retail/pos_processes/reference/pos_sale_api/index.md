---
title: "POS Sale API: park and resume"
description: "Park an in-progress POS sale for later and resume it on any open POS unit through the POS Sale API."
lead: ""
date: 2026-07-07T00:00:00+00:00
lastmod: 2026-07-07T00:00:00+00:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "pos_sale_api-6b1f0a2c4d7e4b98a1c3e5f70918ab24"
weight: 116
toc: true
type: docs
---

The POS Sale API lets an external client (for example a self-service kiosk or a QR food ordering app) park an active POS sale so it can be finished later, and resume a parked sale on an open POS unit. It is the API used behind the self-service *save sale for later* and payment-recovery flows.

## Park a sale

```text
POST /pos/sale/{saleId}/park
```

Parks the active sale identified by `{saleId}`. No request body is required.

When called, the sale is saved as a **Saved Sale Entry** and the live POS sale is removed. The POS unit that owns the sale must be open, otherwise the request is rejected.

A successful call returns **201** with:

| Field | Description |
| --- | --- |
| `saleId` | System ID of the new Saved Sale Entry. Use this value to resume the sale. |
| `receiptNo` | Sales ticket number of the parked sale. |
| `posUnit` | The POS unit (register number) the sale was parked from. |
| `parkedAt` | Timestamp when the sale was parked. |

{{< alert icon="❗" text="The <code>saleId</code> returned by park is a <b>new</b> identifier (the Saved Sale Entry). It is not the same as the original sale ID, and it is the value you must pass to the resume endpoint."/>}}

## Resume a sale

```text
POST /pos/sale/{saleId}/resume
```

Resumes the parked sale identified by the Saved Sale Entry `{saleId}`. A JSON body is required:

```json
{ "posUnit": "<POS unit number>" }
```

The requested POS unit must be open. The sale is rebuilt as an active POS sale on that unit and the Saved Sale Entry is removed. A successful call returns **201** with the full POS sale, including its lines.

A sale can be resumed on a **different** POS unit than the one it was parked on, which enables hand-off between registers.

## Requirements

- The API user must have a **User Setup** record with a POS unit assigned. Requests fail if no POS unit can be resolved for the user.
- Both endpoints validate that the target POS unit is open before parking or resuming.

## Common responses

| Status | Meaning |
| --- | --- |
| `201` | Sale parked / resumed. |
| `400` | Missing or invalid `saleId`, missing `posUnit` on resume, or the POS unit is not open. |
| `404` | No matching sale (park) or Saved Sale Entry (resume) was found. |
