---
title: "Reimbursement module overview"
description: "The NP Reimbursement module is used for configuring the system through which the expense users are going to receive their reimbursements."
lead: ""
date: 2023-08-01T15:00:32+02:00
lastmod: 2023-08-01T15:00:32+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-0167b92bb9e66813da454cf8b381306f"
weight: 250
toc: true
type: docs
---

The reimbursement tool is highly flexible and can be used in various scenarios. Its primary function is to process raw data from General Ledger (G/L) accounts, customer ledger entries, or vendor ledger entries, and use predefined formulas to calculate outputs such as commissions, discounts, or fees (receivable or payable).


### Key features

- **Batch Processing**: you can run batch operations that extract source data and generate calculated outputs based on specified formulas or logic.
- **Automated Data Transfers**: you can automatically transfer the calculated data from one account to another, eliminating the need for manual calculations or entries.

### Example use cases

- **Bad Debt Provisioning**

By running a batch on customer ledger entries, the tool can calculate a percentage of bad debts and transfer it to a designated provision account.

- **Special Levy Calculation**

If a special levy applies to specific transactions, the tool can calculate the levy on the source G/L account and transfer the result to the levy account.

- **Commission and Fee Management in B2B**
  
In B2B scenarios, you can calculate commissions, advertising fees, or marketing fees from vendor transactions, and automate the transfer of the calculated fees or commissions from the vendor account to your revenue account on a periodic basis.

### Configurations

The following administrative sections need to be configured to successfully use the Reimbursement module:

- Reimbursement Modules
- [<ins>Reimbursement Templates<ins>]({{< ref "how-to/template_setup/index.md" >}})
- [<ins>Reimbursement Party Types<ins>]({{< ref "how-to/party_types/index.md" >}})
- [<ins>Reimbursement Parties<ins>]({{< ref "how-to/parties/index.md" >}})

### Process

- [<ins>Reimbursements<ins>]({{< ref "how-to/process/index.md" >}})

### Outputs

- [<ins>Reimbursement Entries<ins>]({{< ref "explanation/output_entries/index.md" >}})
