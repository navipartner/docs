---
title: "Authorization Code for Ticket Rescheduling"
description: "Ticket rescheduling is made convenient for online users (self-service). It is done via web setup and creation of a new authorization code (pin code) printed on the ticket."
lead: ""
date: 2023-07-12T16:06:18+02:00
lastmod: 2023-07-12T16:06:18+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "authorization_code_rescheduling-5d3ff6db07f93210185ae897a41eaf60"
weight: 289
toc: true
type: docs
---

Ticket rescheduling is made convenient for online users (self-service). It is done via [<ins>web setup<ins>](../howto/ChangeTicketReservation.md), and creation of a new authorization code (pin code) printed on the ticket.

The maximum length for the produced **Authorization Code** is 10 characters. The template can be specified on the **Ticket Setup** page, and is characterized by the following:  

- The template starts with the **[** character and ends with the **]** character.  
- The first character after **[** determines what type of random characters or digits to generate.  
    - N for digits 0–9  
    - A for uppercase letters A-Z        
    - X is a combination of N and A  

{{< alert icon="📝" text="A number will repeat the random character. Characters outside of the <b>[</b> and <b>]</b> will be copied verbatim. The <b>[ ]</b> characters may not be used."/>}}

### Examples:

[N*4]-[N*4] will produce a code similar to "1234-5678" (this is the implied default value).  
NP-[X*3] will produce a code similar to "NP-X2Y".  

## Access the ticket authorization code in Business Central

The authorization code is also generated back-office for the backend worker to see:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button and search for **Ticket List**.     
   The list of existing tickets is displayed.  
2. Find the ticket you need to retrieve the authorization code for.
3. Go to the **Navigate** tab and open **Ticket Request**.         
   You can now see the unique authorization code in its respective column. 

{{< alert icon="📝" text="The <b>Authorization Code</b> is not for back office users working in Business Central. It is intended for the customer to change their own reservation online (which requires that the feature is set up on the website). This will produce a random number such as '2842-3921' which can be put on a print ticket in the ticket designer."/>}}

#### See also

- [<ins>Ticket Designer<ins>]({{< ref "../../how-to/ticket_designer/index.md" >}})
- [<ins>Create dynamic tickets<ins>]({{< ref "../../how-to/create_dynamic_ticket/index.md" >}})
- [<ins>Set up DIY printed tickets<ins>]({{< ref "../../how-to/diy_printed_ticket/index.md" >}})
- [<ins>Set up tickets using the Ticket Setup Wizard<ins>]({{< ref "../../how-to/ticket_setup_wizard/index.md" >}})
- [<ins>Admit an issued ticket<ins>]({{< ref "../../how-to/admit_issued_ticket/index.md" >}})
- [<ins>Create prepaid tickets<ins>]({{< ref "../../how-to/create_prepaid/index.md" >}})
- [<ins>Create postpaid tickets<ins>]({{< ref "../../how-to/create_postpaid/index.md" >}})