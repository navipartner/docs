---
title: "C&C overview"
description: ""
lead: ""
date: 2023-07-05T16:26:56+02:00
lastmod: 2023-07-05T16:26:56+02:00
draft: false
images: []
menu:
  docs:
    parent: "click_and_collect"
    identifier: "intro-46612bab9696f708185eb830b13cf34d"
weight: 10
toc: true
type: docs
---

The Click & Collect module enables customers to collect online orders in stores, thus avoiding delivery charges and making the delivery time shorter. An order can also just be placed in one store, and collected in another one. The basic principle is that order placements and order-collecting are separated.

## Click and Collect actions

The following POS actions in the **Menu Buttons Setup** administrative section need to be used in order to enable the Click & Collect functionalities in the store:

{{< alert icon="📝" text="To edit parameters of the POS actions, first click on the POS action you wish to edit, and then <b>Process</b> button in the ribbon, followed by <b>Parameters</b>."/>}}

- **Create Click N Collect Order** with the **CREATE_COLLECT_ORD** action code is mainly used for creating Click & Collect orders via POS in the local store.     

In the **POS Parameter Values section**, you can pre-set the order amount percentage that needs to be made by a customer as prepayment. in the **prepaymentPercent** row. If not set, customers will be prompted to insert a percentage which will be taken as prepayment in the sales order.  

- **Process Click N Collect Order** with the **PROCESS_COLLECT_ORD** action code is mainly used for displaying a list of collect orders that need processing (orders that have neither been confirmed or rejected).
- **Pickup Click N Collect Order** with the **DELIVER_COLLECT_ORD** action code is mainly used for delivering the processed collect orders via the POS in the collecting store. 