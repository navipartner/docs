---
title: "Admit an issued ticket"
description: "It is possible to admit issued tickets both from the POS and Business Central. Read this guide to learn more."
lead: ""
date: 2023-07-13T08:28:51+02:00
lastmod: 2023-07-13T08:28:51+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "admit_issued_ticket-b07505c87c51ad6c1dacb939ce556758"
weight: 288
toc: true
type: docs
---

It is possible to admit issued tickets both from the POS and Business Central. 

## Admit an issued ticket from the POS

The POS contains several command buttons that are used for ticketing. To admit an issued ticket from the POS, follow the provided steps: 

1. Add a POS button that has the **Action Code** set to **TM_TICKETMGMT**, and the **Parameter** set to **Register Arrival**. 
2. Click this button.    
   A popup for inputting the external ticket number is displayed. When confirming the dialog, the ticket will be validated for arrival to the specified admission code (it can be set under the POS action parameters). If no admission code is defined, the default one from **Ticket Admission BOM** will be used. 
3. You can also admit a ticket for arrival on the POS from the EAN Box. To do this, add **Ticket_Arrival** as the **Event Code** in **POS Input Box Setup** to enable scanning the ticket from the EAN Box. 

## Admit an issued ticket from Business Central

To admit an issued ticket from Business Central, follow the provided steps: 

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Ticket List**, and choose the related link.   
2. Search for the ticket using its **External Ticket No.**.
3. Click **Navigate**, and then **Access Entries**.    
   The **Ticket Access Entry List** is displayed as a result.
4. Click **Process**, and then **Register Arrival**.   
   The ticket is admitted as a result.
