---
title: "CS Logs"
description: "There are several types of logs that are maintained in the NP WMS. Learn more in this article."
lead: ""
date: 2023-07-13T10:46:33+02:00
lastmod: 2023-07-13T10:46:33+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "cs_logs-79580e8b368663970fd0b909e32262b1"
weight: 193
toc: true
type: docs
---

There are several types of logs that are maintained in the NP WMS:

## Communication Log (Troubleshooting)

This log can be accessed from **CS Setup**, and it is used to track any unforeseen issues that may occur in the environment. 

If something goes wrong, and you're not sure what caused it, it's possible to activate the **Log Communication** toggle switch in the **General** section of the **CS Setup**. Once active, the necessary data will be gathered from the devices and sent to the **CS Communication Log List** in XML format. This data is used to learn what exactly had caused the issue, which greatly helps in resolving it. 

  {{< alert icon="📝" text="When looking for the source of the issue, it's necessary to know the ID of the involved device. The device ID can be found in the <b>PROFILE<b> page in the NP WMS app."/>}}

<iframe width="560" height="315" src="https://www.youtube.com/embed/y7dvMQfFIX4" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Posting Buffer

The posting buffer keeps track of all transactions handled by the NP WMS module. Every time a user posts a sales order, inventory pick etc. the record of the transaction will be logged in the **Posting Buffer** along with the user ID and timestamp. This log also records failed transactions. 

  {{< alert icon="📝" text="Failed transactions are usually recorded in the Role Center as well."/>}}

<iframe width="560" height="315" src="https://www.youtube.com/embed/n65bodoD-fA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

## Print Buffer 

During the inventory pick, you have the option to post a document. If you choose to do so, a shipping note with all necessary data will be created and ready for printing, so that it can be sent to the shipping company. 

The documents containing this data are preserved in the **Print Buffer** log, so that they can be reprinted if needed. 

<iframe width="560" height="315" src="https://www.youtube.com/embed/1Bq4jv8hAGo" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
