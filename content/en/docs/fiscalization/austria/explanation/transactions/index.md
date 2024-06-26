---
title: "Transactions (Austrian fiscalization)"
description: "Learn more about controlling transactions in regards to the Austrian fiscalization compliance laws."
lead: ""
date: 2024-06-26T11:43:06+02:00
lastmod: 2024-06-26T11:43:06+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "transactions-2e675863bb9f1f82dd7829c37bc9da38"
weight: 836
toc: true
type: docs
---

Starting transaction (*Startbeleg*), monthly transaction (*Montasbeleg*) and yearly transaction (*Jahresbeleg*) are created from the Fiskaly side, and those transactions are imported from Fiskaly to Business Central. They are recorder in the **AT POS Audit Log** table. 

You can import them by executing the **Import Other Control Receipts** action from the **AT Cash Registers** table ribbon.

{{< alert icon="💡" text="Printing these transactions is not possible." />}}

## Zero transaction (*Nullbeleg*)

Nullbeleg is created by executing the **Create Control Receipt** action from the **AT Cash Registers** table ribbon. 

When it's created, it's also recorded in the **AT POS Audit Log** table with the **Audit Entry Type** set to **Control Transaction**.

It's possible to print the receipt for this transaction by executing the **Print Receipt** action from the **AT POS Audit Log** table ribbon. To be compliant with the Austrian fiscal laws, this receipt has zero amount (0,00) and the article description *Nullbeleg*. 

## Exporting transaction data

You can export transaction-related data from the **AT Cash Registers** administrative section by triggering the **Export Cash Register** action from the ribbon. You can filter out the specific data range to be exported by providing relevant dates when transactions occurred or receipt numbers. However, if filters aren't set, all registered transaction data will be exported. 


{{< alert icon="💡" text="The data is exported in the form of JSON files." />}}

<iframe width="560" height="315" src="https://www.youtube.com/embed/3AWFsa9u_Qg?si=tti_NF2Mlh29yFkn" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>