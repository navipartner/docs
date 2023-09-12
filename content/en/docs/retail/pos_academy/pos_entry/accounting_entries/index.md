---
title: "POS Entry List - Accounting Entries"
description: "When you post the POS Entry, both the accounting entries and the inventory entries are updated."
lead: ""
date: 2023-08-16T12:29:36+02:00
lastmod: 2023-08-16T12:29:36+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "accounting_entries-1e3ff75612816e22216e3ed0ec91782d"
weight: 40
toc: true
type: docs
---

## Selling items on POS in local currency 

When items are sold on the POS, the transaction is recorded in the corresponding POS Entries. When you post the POS Entry, both the accounting entries and the inventory entries are updated.  

![posting8](posting8.png)

The General Ledger Entries for this example are provided in the screenshot below:

![posting9](posting9.PNG)

#### Results:

- Debit Cash for the receipt, i.e., the amount paid by the customer that includes both the full amount to be paid and the change.
- Credit Cash for the change that is given back to the customer.
- Credit Sales Revenue for the net sales.
- Credit Sales VAT for the vat portion of the sales.


## Selling items on POS in foreign currency 

### Setting up Selling Rate of Exchange

You can perform transactions in foreign currencies on the POS. The selling rate of exchange is set up in the **POS Payment Method** card. It is a predefined selling rate determined by the management.

![posting10](posting10.PNG)

{{< alert icon="📝" text="If you want the incoming purchases in euros to be higher, make sure that the <b>Fixed Rate</b> is lower than the <b>Bank Rate</b> in the <b>Currency Exchange Rate</b> table in Business Central."/>}}

### Sales in foreign currency

If the **Fixed Rate** is higher than the **Bank Rate**, the purchases performed in euros will be lower as demonstrated in the following screenshots:

![posting11](posting11.png)

If you set the **Fixed Rate** to be lower than the **Bank Rate**, the purchases in euros will be higher, as demonstrated in the following screenshots:

![posting12](posting12.png)

#### Results

- Debit Cash for the receipt in LCY equivalent.
- Credit Cash for the change given back to the customer.
- Credit Sales Revenue for the net sales.
- Credit Sales VAT for the VAT portion of the sales.


![posting13](posting13.png)

If you set the POS Posting Setup for euros with the **Bank Account** type instead of the **General Ledger Account** type, when the payment is received in euros, it is transferred to a bank account as EURO, and to the attached **General Ledger Account** in its LCY equivalent. 

## Counting cash in a single currency

When the transferring to a bank is done as a part of balancing, you can use a **Bank Account** instead of a **General Ledger Account**. The POS Posting setup works as presented in the provided screenshot:

![posting14](posting14.png)

## Counting cash on POS

![posting15](posting15.png)

![posting16](posting16.png)

#### Results

- Debit Cash for the closing balance.
- Debit Bank for the transfer into the Bank.
- Debit Safe for the transfer into the Safe.
- Debit Cash Discrepancies for the difference in counting.
- Credit Cash for the opening balance.

## Counting cash in foreign currencies

The content of **Counting** and **Balancing** pages is expressed in multicurrency, so whenever the count in a foreign currency needs to be performed, you can execute it in your own currency and denominators without needing to calculate or convert it into the equivalent local currency.

### Posting setup

![posting17](posting17.png)

## Counting foreign currency on POS

![posting18](posting18.png)

![posting19](posting19.png)

#### Results

- Debit Cash for the closing balance in the LCY equivalent.
- Debit Bank for the transfer into a Bank in FC.
- Debit Safe for the transfer into a Safe in the LCY equivalent.
- Debit Cash Discrepancies for the difference in counting in the LCY equivalent.
- Credit Cash for the opening balance in the LCY equivalent.

{{< alert icon="📝" text="The system uses the currency rate of 7.50, which is the bank rate from Business Central and not the selling rate fixed in the POS Payment Method. If you need to transfer one currency into another, the currency rate between them needs to be defined in Business Central."/>}}