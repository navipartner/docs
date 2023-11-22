---
title: "Posting setup breakdown"
description: "Posting groups are used for mapping entities like customers, vendors, items, and resources to general ledger accounts. "
lead: ""
date: 2023-10-04T11:36:57+02:00
lastmod: 2023-10-04T11:36:57+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-cfbb80f91b4d45b23631a6873e860916"
weight: 255
toc: true
type: docs
---

Posting groups are a [<ins>core Business Central feature<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/finance-posting-groups), expanded with NaviPartner's Retail solution. They are used for mapping entities like customers, vendors, items, and resources to general ledger accounts. 

General posting groups specify who you sell to and buy from, as well as what you sell and buy. It is also possible to combine groups to get more specific reports of transactions. The following general posting groups are available: 

- **General Business Posting Group** - used for specifying the vendor's or the customer's trade type to link transactions made for this business partner with the appropriate general ledger account. 
- **General Product Posting Group** - specifies the product type to link transactions made from this item with the appropriate general ledger account. 
- **General Posting Setup** - you can combine business and product posting groups, and choose the accounts to post to. It's possible to post the sale of one item to multiple general ledger accounts if customers are assigned to different business posting groups.

There are also specific posting groups, that are distinguished by the types of data they contain:

- **Inventory Posting Groups** - you can specify inventory groups that you will assign to the relevant item accounts on the **Inventory Posting Setup** page in Business Central. They also make inventory organization easier, as you can classify items when generating reports.       

  If you're using locations (specified in the **Location Code** field), you need to define multiple inventor accounts in the **Inventory Posting Setup** for each inventory posting group and location.

  And when performing the payment, you can apply them to the **BANK** posting groups. The bank account posting groups are linked to the **Balance Sheet** level in your chart of accounts or perform the payment directly to a general ledger account. 

  In the same way that you have the **General Posting Setup**, Business Central has the **VAT Posting Setup**, whereby the VAT accounts are set based on the combination of **Gen. Bus. Posting Group** & **Gen. Prod. Posting Group**.

  ![vat_posting](vat_posting.png)

## POS Posting Setup - NP Retail

In addition to the above, NP Retail uses [<ins>**POS Posting Setup**<ins>]({{< ref "explanation/pos_posting_setup/index.md" >}}) to post the different payment methods accepted on POS to their related General Ledger Account. 

In a typical sale performed on a POS unit, the following posting setups are employed:

- **General Posting Setup for Sales a/c**
- **VAT Posting Setup for the VAT a/c**
- **POS Posting Setup for the Payment a/c**
