---
title: "POS stores - overview"
description: "The POS store is highest level in setup for stores. It corresponds to a physical store, and thus the POS store setup performed in NP Retail should match the specifics of the physical store."
lead: ""
date: 2023-07-11T12:20:20+02:00
lastmod: 2023-07-11T12:20:20+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-652769b3fd3c0b191a88e10b6483f4b6"
weight: 150
toc: true
type: docs
---

The POS store is highest level in setup for stores. It corresponds to a physical store, and thus the POS store setup performed in NP Retail should match the specifics of the physical store. 

The **POS Store Card** provides an option to create different setups for different stores. Other than the basic store information, such as its name, address, register number, and contacts, each store can have different dimensions, locations and posting rules. Additionally, depending on the assigned **POS Posting Profile**, different POS stores can have different **General Business Posting Groups**, **VAT Business Posting Groups**, **Source Codes**, **Posting Compression**, and different accounts for rounding and differences.

After the POS store and POS units are created, the correlation between them needs to be established. Every POS unit has to be attached to a POS store. A single POS store can have multiple POS units, but a POS unit can be attached to only one POS store.

![pos_store_pos_unit](POS%20store%20vs%20pos%20unit.png)

POS stores can also have different accounts for postings of payments which can be regulated in the [<ins>POS posting setup<ins>]({{< ref "../posting_setup/explanation/pos_posting_setup/index.md" >}})

<iframe width="560" height="315" src="https://www.youtube.com/embed/AktQ3262OJ8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

#### See also

- [<ins>POS profiles<ins>]({{< ref "../pos_profiles/intro.md" >}})
- [<ins>Create a new POS unit<ins>]({{< ref "../pos_processes/how-to/create_pos_unit/index.md" >}})