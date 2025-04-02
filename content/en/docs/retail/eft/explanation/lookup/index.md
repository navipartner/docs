---
title: "EFT lookup"
description: "In NP Retail, the EFT module allows users to review past transaction results, provided the EFT integration in use supports this feature."
lead: ""
date: 2023-07-06T09:16:47+02:00
lastmod: 2023-07-06T09:16:47+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "lookup-7e0d9953b62a49766e01975fb60fd065"
weight: 217
toc: true
type: docs
---

In NP Retail, the EFT module allows users to review past transaction results, provided the EFT integration in use supports this feature. The lookup function enables browsing through historical transactions within the timeframe allowed by the integration, with most systems retrieving at least the most recent transaction.

If an EFT transaction is interrupted due to a system crash or outage—whether on the payment terminal, local POS client, or BC backend server—NP Retail prompts the POS salesperson to retrieve the transaction result upon the next use of the EFT integration.

## Possible outcomes of an EFT lookup

#### Transaction successfully completed with fiscal impact (payment processed)

- If the transaction is still linked to an active sale in the POS, NP Retail automatically adds the missing payment line.

- If the transaction is no longer linked to an active sale:
  - The system notifies the salesperson about the out-of-sync payment.
  - The salesperson may need to resume a parked sale and perform another EFT lookup.
  - If the original sale was canceled, the payment must be manually voided or refunded at the terminal to ensure both systems are synchronized.

#### Transaction successfully completed without fiscal impact

- The system is already in sync, and the salesperson is informed via a prompt.

#### Lookup failed

- NP Retail notifies the salesperson of the failed attempt and allows additional lookup attempts if needed.
