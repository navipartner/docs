---
title: "NF 525 compliance"
description: "This article provides a technical overview of NP Retail and the NF 525 compliance for France."
lead: ""
date: 2023-07-06T13:20:53+02:00
lastmod: 2023-07-06T13:20:53+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "compliance-f0e5ee4088086b0ecd87acbcb0acc689"
weight: 171
toc: true
type: docs
---

This article provides a technical overview of NP Retail and the NF 525 compliance for France.

## Certification Details

NP Retail is audited by InfoCert and our certification details are:

- Category: B
- Number: 0274

## Platform

The platform that NP Retail is running inside of is the ERP system known as Microsoft Dynamics 365 Business Central.  
Microsoft manages the French ERP NF 203 compliance. See their [documentation](https://docs.microsoft.com/en-us/dynamics365/business-central/localfunctionality/france/france-local-functionality) for more info.

The NP Retail compliance is specifically focused on the point of sale (POS) requirements, known as NF 525.  

 {{< alert icon="📝" text="If you are using a trial version downloaded from AppSource, the solution is not compliant with NF 525 unless configured according to the setup article and with automatic archive storage installed. Reach out to the relevant partner to make sure your solution is compliant."/>}}


## Versioning Logic

For NF 525 compliance we maintain a fiscal version number that only changes when the product receives changes that impacts NF 525 compliance.
The version consists of two digits: Major.Minor 
The major increases only when there are new major requirements in the NF 525 requirements. 
The minor increases when there are bugfixes or small adjustments in the NF 525 requirements.

## Software Deployment

The NP Retail releases are deployed via Microsoft AppSource. The process is described in more detail on their [documentation website](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/administration/tenant-admin-center-manage-apps). 

When a customer or a partner installs NP Retail via Microsoft AppSource, Microsoft is performing both the notarization and validation of NaviPartner's submitted releases, guaranteeing that customers are only able to install our releases, and not counterfeits.

All of our release binaries submitted to Microsoft are also code-signed first with a certificate purchased from https://trustzone.com/, as per the steps detailed in [this article](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-sign-extension). 
 
## Automated Testing

As development is performed with the continuous integration principles, we have a range of code tests that are executed automatically on our pull requests, that is, for each change of the NP Retail source code. 

We have a number of test scenarios written explicitly to maintain the NF 525 compliance:

- PurchaseSignature
- ReprintSignature
- VoidSignature
- DailyZReportSignature
- MonthlyPeriodSignature
- YearlyPeriodSignature
- MonthlyPeriodArchiveSignature
- LoginSetupValidation
- LoginSignature
- CancelSaleSignature
- VoucherAndItemPurchaseSignature
- BrokenTicketSignatureChain
- PartnerModificationSignature
- ArchiveSchemaTest
- JETInitSignatureTest

## Quality Assurance

Quality of the NP Retail is assured by a combination of:

- Functional code tests for individual business logic procedures, examples specific to the French compliance seen above, executing on each developer change.
- Performance code tests for specific use-cases, executed periodically.
- Usage of the features containing the latest changes internally as quickly as possible.         
  Every consultant, support employee, manager and developer ordering new test environments for any purposes will receive the latest state of the master branch, containing unreleased changes.
- Manual testing ad-hoc on a feature-by-feature basis.
- Staged deployment - we do not deploy to all customers at once. We have a management tool that controls who gets access to what, and when.


## Signed data

In NPRetail the following events are signed:

- Tickets, both sales and returns
- Duplicates (ticket re-prints)
- Various technical events (called JET)
- Archive Creation
- Grand Total events, tracked for 4 individual lengths of period: Each individual sale, a daily shift for each POS unit, a monthly period for each POS unit, a yearly period for each POS unit


### JET Events

The list of supported JET events in NP Retail:

| Code | Description | Data in "Additional Info" |
|-----|-----|-----|
| 20 | Intermediate Fiscal archiving | Sequence number of the balancing POS Entry |
| 30 | Fiscal Period archiving | Sequence number of the balancing POS Entry |
| 40 | POS Log off | Salesperson code |
| 50 | Daily/Monthly period closing | Sequence number of the balancing POS Entry |
| 60 | Yearly period closing | Sequence number of the balancing POS Entry |
| 80 | POS Log in | Salesperson code |
| 90 | Signature Chain Integrity Verification Failure | Blank |
| 170 | POS Closure and balancing | Sequence number of the balancing POS Entry |
| 190 | Item RMA (Note: One event per line in refund sale) | Blank |
| 240 | Maintenance Intervention description | A description of the modification made |
| 260 | JET Data Initialization | Blank |
| 320 | Abandonment of POS Sale | Salesperson code |
| 910 | Non item amount in POS sale | Ticket Fiscal Number, a pipe separator and the non-item amount decimal |


The list of data included in a signed JET event, in order, separated by comma:

- Sequential Number
- The JET Event Code (see above list)
- Empty String
- Date and time
- Salesperson Code
- POS Unit Number
- A true false (Y/N) value indicating if this event is the first in the entire sequence for this register and event type
- The previous signature for this register and event type (blank if first)

 {{< alert icon="📝" text="All JET events have <b>External ID</b> in the <b>POS Audit Log</b> set to the JET sequence number."/>}}


### GRANDTOTAL Events

A grand total event is created for 4 different "periods":

- Per individual sales tickets
- Per daily closing
- Per monthly closing
- Per yearly closing

The amounts will be totaled, corresponding to the period of the GRANDTOTAL.

The list of data included in a signed GRANDTOTAL event, in order of separation:

- A breakdown of all sales tax amounts per VAT rate, including returns
- The total sales amount including VAT, and including returns       
  For sales ticket grand totals, this only counts items, not VAT free vouchers etc.
- A cumulative perpetual sum of all sales and returns in this period and all prior periods on the same POS unit
- Date and time
- Sequential number     
  
  {{< alert icon="📝" text="This is unique for each of the 4 different periods mentioned above."/>}}

- A true false (Y/N) value indicating if this event is the first in the entire sequence for this register and event type
- The previous signature for this register and event type (blank if first)

The **Additional Info** field in the **POS Audit Log** consists of three values that are tracked for GRAND TOTAL events, separated by pipe character. The definition of these three fields are:  

- SaleTotalInclTax: The total sales amount incl. VAT and including returns. 
- PerpetualAbsoluteAmount: A cumulative perpetual sum of all sales and returns, **in absolute value** in this period and all prior periods on the same POS unit.
- PerpetualAmount: A cumulative perpetual sum of all sales and returns in this period and all prior periods on the same POS unit.

The "External ID" field in the "POS Audit Log" consists of one value:  
The sequence number of the grand total, with 4 different sequences depending on the type of grand total: Ticket, Daily, Monthly, Yearly.

### DUPLICATE Events

A duplicate is a receipt copy/reprint. 

The list of data included in a signed DUPLICATE event, in order of separation:

- Sequential number of the duplicate event for the individual POS unit.
- The type of the original sale. Always "TICKET" as NPRetail does not support other sale types.
- The duplicate/reprint number. E.g. 2 for the 2nd reprint of the same receipt.
- Salesperson Code
- Date and time
- The sequential number of the reprinted sales ticket.
- A true false (Y/N) value indicating if this event is the first in the entire sequence for this register and event type.
- The previous signature for this register and event type. (Blank if first)

  {{< alert icon="📝" text="The <b>Additional Info</b> field consists of one value - the reprint number."/>}}

### TICKET Events

A ticket event is a POS sale. Return sales are included, but carry a negative amount.

The list of data included in a signed TICKET event, in order of separation:

- A breakdown of all tax amounts per VAT rate.
- A total of all sales & return amounts incl. VAT
- Date and time
- Sequential number of the sale/return for the specific POS Unit.
- A description of the ticket - will indicate of it was a cancellation of prior ticket (full return) or a new sale.
- A true false (Y/N) value indicating if this event is the first in the entire sequence for this register and event type.
- The previous signature for this register and event type. (Blank if first)


### ARCHIVE Events

An archive event is created when an archive of a monthly period is created.

The list of data included in a signed ARCHIVE event, in order of separation:

- A breakdown of all tax amounts per VAT rate in the archived period.
- A total amount of all item sales and returns in the archived period.
- Date and time
- POS Unit Number
- Description of the event, always "Archive".
- A true false (Y/N) value indicating if this event is the first in the entire sequence for this register and event type.
- The previous signature for this register and event type. (Blank if first)

### Certificates

The NF 525 data is signed via the RSA algorithm with 2048 bits and hashed via the SHA256 algorithm. 
The certificates used are self-signed and issued per customer by NaviPartner.  
Both the certificate and the private key for the certificate are stored in the business central database in masked fields that are encrypted at rest in Business Central SaaS.
This data cannot be accessed by users with limited permissions.

The certificate and private key is backed up by microsoft in a geo-redunant manner. See their docs for more info: 
https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/service-overview#database-and-backups

### Overview of all events

You can see all the event data in the system by navigating from the **POS Entry List** to **POS Audit Log**.
Notice the column **External Type** is extra important as it carries types like "GRANDTOTAL", "JET", "DUPLICATE", "TICKET". 
Filtering to a specific POS unit and a specific type will show you one chain of signed events.

## Electronic Validation of data stored in the system

On the page **POS Audit Log** there is an action **Validate Log** that will re-calculate all the events within the current page filter and check if the signature chain is still valid or broken.  
If broken, it will point to the specific entry where the chain has been broken.


## Printing

NPRetail comes with pre-defined print templates that must be configured for NF 525 compliance. 
Requirements for the print-out include version numbers, reprint number, specific sequential numbers, specific VAT breakdown in columns and more.

See the [Set up NP Retail fiscalization compliance - France]({{< ref "compliance_setup.md" >}}) article for more details on configuring the correct templates.

