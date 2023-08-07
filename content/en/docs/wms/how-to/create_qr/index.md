---
title: "Create QR codes"
description: "A QR code is a machine-readable optical label that can contain information about the entity it's attached to. Each of the existing users has their own unique QR code."
lead: ""
date: 2023-07-13T13:06:25+02:00
lastmod: 2023-07-13T13:06:25+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_qr-7e2fa079fe5eaf476655a0e4096f2675"
weight: 359
toc: true
type: docs
---

A QR code is a machine-readable optical label that can contain information about the entity it's attached to. Each of the existing users has their own unique QR code. To create a QR code in NP WMS:


1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **NPRW CS QR Code List** and choose the related link.        
   The list of configured users is displayed.              
   You can find the QR code in the **NPRW CS QR Code FactBox** section for configured users.
2. Click **New** located in the ribbon in the top part of the screen if you wish to create a new user and QR code.
3. Fill out the necessary fields with the following information:

   | Field Name      | Description |
   | ----------- | ----------- |
   |  **User ID**   | Specifies the ID used for identifying the active user.   |
   |  **Password**  | Specifies the password the active user can use to log in.   |
   |  **Company**  |   Specifies the name of the company the user is associated with.   |
   |  **Tenant**  |  Specifies the ID of the default tenant associated with the active user. |
   |  **URL**  | Specifies the URL used for establishing connection with the database. |
   |  **Webservice URL**  | Specifies the webservice endpoint where the database can be accessed by the client application. |

  {{< alert icon="📝" text="The <b>URL</b> and the <b>WebService URL</b> can be defaulted by clicking <b>Set Defaults</b> in the ribbon."/>}}

4. Click **Create QR Code**.         
   The QR code is displayed in the **NPRW CS QR Code FactBox** section of the page.    
