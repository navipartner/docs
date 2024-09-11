---
title: "NP WMS product overview"
description: "The Warehouse Management Solution provides a variety of tools and processes for managing and tracking items in warehouse and inventory systems."
lead: ""
date: 2023-07-13T10:44:12+02:00
lastmod: 2023-07-13T10:44:12+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-35b360184f98740e6dbb16ac31b862f9"
weight: 350
toc: true
type: docs
---

The Warehouse Management Solution provides a variety of tools and processes for managing and tracking items in warehouse and inventory systems. It enables management of warehouse processes in Business Central with a mobile device app possible from any location, and at any time.

This solution is recommended for any business which uses warehouses in its operations, regardless of its capacity, as it vastly improves organization, structure, and space management of warehouses. 

One of the staples of the WMS solution is the RFID system. There are several required items for the RFID system to become fully operational: 

- A reader that the system is connected to
- An antenna with a radio signal
- An RFID tag that retrieves the signal with attached information.

## Onboarding

The initial setup of NP WMS consists of the following steps:

1. To get started, you need to [download and install the NP WMS extension for Business Central]({{< ref "how-to/install_wms_bc/index.md" >}}), as well as the [<ins>accompanying mobile applications<ins>]({{< ref "how-to/install_apps/index.md" >}}). 

2. (Optional) [<ins>Download and install one of the preset WMS templates<ins>]({{< ref "how-to/fetch_setup_data/index.md" >}}) provided by NaviPartner, to accelerate the setup procedure:

- Live templates - provides sample setups of NP WMS
- Test Data - provides the necessary data for testing NP WMS

3. Purchase the [<ins>SAAS license<ins>](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/deployment/licensing) online.

  {{< alert icon="📝" text="For pricing details refer to <a href=\"https://appsource.microsoft.com/en-us/product/dynamics-365-business-central/PUBID.navipartner%7CAID.np-wms%7CPAPPID.051deebc-1c74-4d44-8e6c-e910c3855c25?tab=Overview\">the NP WMS section on AppSource</a>. A trial period is offered to users who wish to test the functionalities."/>}}

4. Set the main parameters for your instance of NP WMS in [<ins>CS setup<ins>]({{< ref "reference/cs_setup_ref/index.md" >}}). These parameters include, but aren't limited to:

    - [<ins>CS UIs<ins>]({{< ref "explanation/cs_uis/index.md" >}}) - user interface of the mobile apps. 
    - [<ins>Warehouse employees<ins>](https://docs.microsoft.com/en-us/dynamics365/business-central/warehouse-how-to-set-up-warehouse-employees) - entities in BC which correspond to warehouse employees.
    - [<ins>CS users<ins>]({{< ref "how-to/cs_user_setup/index.md" >}}) - users who will have access to the mobile devices used for warehouse management. CS users are based on the existing warehouse employees.
 

5. [<ins>Create QR codes<ins>]({{< ref "how-to/create_qr/index.md" >}}) which will be associated with the individual users in NP WMS.

After the necessary setup is performed, you can explore the rest of the available options to personalize your WMS instance.


<iframe width="560" height="315" src="https://www.youtube.com/embed/b6WIL-5AbJc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
