---
title: "Set up posting compression"
description: "To set up the posting compression in NP Retail, follow the steps presented in this guide."
lead: ""
date: 2024-01-09T11:33:45+01:00
lastmod: 2024-01-09T11:33:45+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "posting_compression-f37adc75954b37917c9dac2069ac3eaf"
weight: 254
toc: true
type: docs
---

To set up the posting compression in NP Retail, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Posting Profiles**, and choose the related link.     
2. Either modify the existing **DEFAULT** setup, or create a new profile. 
3. Set up the following fields to get the posting for transactions in a compressed format per a POS unit:

 - **POS Period Register No. Series** - this number series is used for assigning a document number to the posted batch when compression is performed per a period.
 - **Posting Compression** - this field is used for setting the method of compression for posting transactions.  The following options are available: 
     - **Uncompressed** - posting is performed on individual transactions without any compression involved.
     - **Per POS Entry** - each individual posted entry is compressed; if there's more than one line with the reference to the same G/L account, all entries will be compressed as one line.
     - **Per POS Period** - posting is compressed for the entire POS period. If you choose to compress the transactions posting by POS period, it is mandatory to set the POS period register number series.
