---
title: "Set up printers in NP Retail"
description: "This tutorial describes the process of setting up printers for printing reports and templates and using this printer for wildcard reports."
lead: ""
date: 2023-08-09T10:05:52+02:00
lastmod: 2023-08-09T10:05:52+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "printing_setup-0cba2ac2d0dfdafdd227deabcf3aeff2"
weight: 23
toc: true
type: docs
---

This tutorial describes the process of setting up printers for printing reports and templates and using this printer for wildcard reports. 

#### Prerequisites

- Have the printers installed locally and connected to the computer. 
- Have at least one print template created. 

## Set up the A5 printer in Hardware Connector Report Printer Setup 

1. Navigate to the **Hardware Connector Report Printer Setup** page in Business Central. 
2. Click **Edit List** to be able to change the current entries. 
3. Insert **A5** as **Printer ID** and **Printer Name** in a new line.      
   A5 is the name of the printer installed locally.  
4. Change the **Paper Size** to **A5** paper (148mm by 210mm).      
   As a result, this printer name becomes available in the **Printer Selection** so that anyone with a locally installed printer called A5 can use it. 

## Set up A5 printer to print any report for any use 

1. Navigate to the **Printer Selections** page in Business Central. 
2. Click **Edit List** to be able to change the current entries. 
3. On the line with blank **User ID** and the **Report ID** set to **0**, change the **Printer Name** to **NPR_HWC_A5**.     
   If the Report ID is set to 0, any report that hasn’t been linked to either a blank user or a specific user will be printed by a locally installed printer **A5**. 

#### Set up print template Z420T_PRICE_BIGRECT to print with a locally connected printer Label Zebra ZD420 

1. Navigate to the **Print Template Output Setup** page in Business Central. 
2. On a new line, insert **Z420T_PRICE_BIGRECT** in the **Print Template** field.  
3. Insert **Label Zebra ZD420** in the **Output Path** field.     
   As a result, all printing with this template will be performed by a locally installed printer **Label Zebra ZD420**. 

#### Set up print of Price Labels to use Z420T_PRICE_BIGRECT for all registers 

1. Navigate to the **Report Selection – Retail** page in Business Central. 
2. Select **Price Label** in the **Report Type** dropdown menu. 
3. Insert **Z420T_PRICE_BIGRECT** in the **Print Template** field. 
4. (Optional) Insert **6014547** in the **Codeunit ID** field.

#### Set up a new POS Payment Bin 04 to open a Cash register drawer using a template

#### Prerequisite

- Have a cash drawer which is connected to an Epson receipt printer. 
- Have the **EPSON_CASH_DRAWER** print template set up. 
- Have the **Print Template Output** configured so that a specified POS Unit prints this template with the local Epson printer. 
- Have the **POS Payment Bin** created and attached to the **POS Unit**. 

#### Procedure

1. Navigate to the **POS Payment Bins** page in Business Central. 
2. Select the line with the **POS Payment Bin 04** and expand the options in the **Eject Method** column.    
   A pop-up window is displayed. 
3. Select **TEMPLATE** from the list.  
4. With the same line still selected, click **Eject Method Parameters** in the ribbon.     
   A POS **Payment Bin Eject Parameters** pop-up window is displayed. 
5. Expand the options in the **Value** column.     
   A **Print Template List** pop-up window is displayed.  
6. Select **EPSON_CASH_DRAWER**. 

![printers](printers.PNG)

<iframe width="560" height="315" src="https://www.youtube.com/embed/VKI0MNWorPA" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>