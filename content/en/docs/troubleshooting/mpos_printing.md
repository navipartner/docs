---
title: "MPOS print troubleshooting"
description: "Refer to the MPOS print troubleshooting guide if you encounter related issues."
lead: ""
date: 2024-08-19T13:22:15+02:00
lastmod: 2024-08-19T13:22:15+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "mpos_printing-bd120c69428bcdd90538a925190397be"
weight: 901
toc: true
type: docs
---

When encountering a printer-related issue, it's generally a good idea to start by turning the printer off and on again.

#### I can't configure my Epson printer for MPOS print over LAN. What can I do to solve this?

If you're having trouble getting your Epson printer ready and operational for MPOS print, you first need to make sure you've met the necessary prerequisites:

- have access to the web server and the web application.
- have an ePOS-print supported TM printer.

If the prerequisites are in place, and you're still experiencing issues, you may need to try the following:

1. Connect your TM printer to the network.
2. Open the web browser on your computer/smart device, and input the IP address of the printer in the address bar.      
   The Epson's device webclient is displayed.       
3. Provide login information in the designated fields.      
   If you don't have the default login credentials, you can look them up online while adding the specific printer you use in the search parameters. 
4. Navigate to **TM Intelligent** in the sidebar, and click **EpsonNet Config for TM-i**.
5. From here, navigate to **Services**, followed by **ePOS-Device** and **ePOS-Print**, respectively. 
6. Enable **ePOS print** in both sections.

{{< alert icon="📝" text="If you can't enable this option, you may need to update your firmware."/>}} 