---
title: "Insert the initial float for a POS unit"
description: "A float is an amount of cash that needs to be available in the cash register at the beginning of each workday."
lead: ""
date: 2023-07-11T15:43:16+02:00
lastmod: 2023-07-11T15:43:16+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "initial_float-6f3c340edf199a70987b49a7b843777c"
weight: 113
toc: true
type: docs
---

A float is an amount of cash that needs to be available in the cash register at the beginning of each workday. To set up the initial float for POS units, follow the provided steps: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Payment Bin**, and choose the related link.     
2. Select the [<ins>**POS Payment Bin**<ins>]({{< ref "../payment_bins/index.md" >}}) that you want to assign Initial float and click **Insert Initial Float** in the ribbon.      
    A window with all available [<ins>POS payment methods<ins>]({{< ref "../create_payment_method/index.md" >}}) is displayed.

{{< alert icon="📝" text="You can set a filter on the payment methods that you want to count in the balancing screen, so that you reduce the amount of records in the list."/>}}

3. To insert initial float for the filtered payment methods, go to **Edit list** and in field **Amount** insert the float in terms of different currencies that you want to fill in the **POS Payment Bin** for that POS Unit.       

    {{< alert icon="📝" text="Once the initial float is inserted and confirmed by clicking <b>OK</b>, you can no longer correct it on the same page. If you try to correct/change the initial float, an error message stating that the initial float already exists will be displayed."/>}}

    The next time you open a POS, you will be greeted by a prompt for confirming the float. This concludes the configuration of the opening balance.


#### See also

- [<ins>Initial float troubleshooting<ins>]({{< ref "../../../../troubleshooting/initial_float.md" >}})
- [<ins>Set up POS payment bins<ins>]({{< ref "../payment_bins/index.md" >}})