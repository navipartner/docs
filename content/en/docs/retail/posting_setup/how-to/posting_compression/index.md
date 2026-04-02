---
title: "Set up G/L posting consolidation"
description: "To set up the posting consolidation in NP Retail, follow the steps presented in this guide."
lead: ""
date: 2024-01-09T11:33:45+01:00
lastmod: 2024-01-09T11:33:45+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "posting_consolidation-f37adc75954b37917c9dac2069ac3eaf"
weight: 254
toc: true
type: docs
---

To set up the posting of General Ledger entries in a consolidation format in NP Retail, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Posting Profiles**, and choose the related link.     
2. Either modify the existing **DEFAULT** setup, or create a new profile. 
3. Set up the following fields to get the posting for transactions in a consolidated format per a POS unit:

 - **POS Period Register No. Series** - this number series is used for assigning a document number to the posted batch when consolidation is done per a period.
 - **G/L Posting Consolidation** - this field specifies how the system should consolidate the G/L entries created from POS Entry Sales Lines.  The following options are available: 
     - **Unconsolidated** - posting is performed on individual transactions without consolidating the values. <br>
     *The POS entry document number is used as the posting document number in G/L.*
     - **Per POS Entry** - each individual posted entry is consolidated when there's more than one line with the reference to the same G/L account, dimension set ID, VAT setup, etc. for that POS entry as one line. <br>
     *The POS entry document number is used as the posting document number in G/L.*
     - **Per POS Period** - posting is consolidated for the entire POS period. <br>
     The POS entries created in the same period are posted together to the General Ledger at EOD, and the resulting G/L entries are consolidated per POS Unit, G/L account, dimension set ID, VAT setup, etc. <br><br>
     If you choose to consolidate the transactions posting by POS period, it is **mandatory to set the POS period register number series**.
     The POS Period Register No Series as defined in above field, is used as the posting document number and not the POS entry document number in G/L.
       
      {{< alert icon="💡" text="Lines of type Payout and Voucher are never compressed, although the posting document number is still defined according to the compression method"/>}}

      There are additional settings on consolidation of  G/L entries created from POS Entry Payment Lines in the [<ins>POS Payment Method card.<ins>]({{< ref "docs/retail/pos_processes/reference/payment_method/index.md" >}})

  - **Consolidation G/L Posting Description** - this field allows user to modify the default description on the G/L entries in the General Ledger Entries. When posting to G/L, the default description of the G/L entries have a value of:
       - "Unconsolidated”, are G/L or Item description,
       - "Per POS entry" are "POS entry" + entry no from POS entry list
       - "Per POS Period" are "POS Period Register no" + entry no of POS period register <br><br>

    When the transaction is posted, placeholders (values %1, %2 ... %6) can be set to replace with default values where: <br>
        *%1* with **"POS Unit No."** <br>
        *%2* with **"POS Store Code"**, <br>
        *%3* with **"Posting Date"**, <br>
        *%4* with **"POS Period Register No."** <br>

     You can use the placeholders %1 to %4 in any order. For example, “Posting from POS %1, Store %2, Period %4” will appear in the posted G/L description as “Posting from Unit 01, Store 01, Period 21.”
 

#### See also

- [<ins>Posting priority rule<ins>]({{< ref "../../explanation/posting_priority_rule/index.md" >}})
- [<ins>Posting compression (EOD)<ins>]({{< ref "../../explanation/compression/index.md" >}})