---
title: "Integrate Magento and Business Central SaaS"
description: "This article guides you through the process of establishing integration between Magento and Business Central SaaS."
lead: ""
date: 2023-12-07T13:19:45+01:00
lastmod: 2023-12-07T13:19:45+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "bc-magento-5e72b5bf7b1b51533b53f786c8e5496d"
weight: 330
toc: true
type: docs
---

This article guides you through the process of establishing integration between Magento and Business Central SaaS. Make sure the prerequisites are met, and follow the provided steps:

#### Prerequisites

Make sure you've gathered the following information from the client or the Azure AD admin: **Client ID**, **Client Secret** and **Tenant** information.            



This can be achieved by creating an application within Azure AD which allows OAuth authentication method to be used for establishing connection with Business Central. Follow [<ins>this guide<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/administration/automation-apis-using-s2s-authentication) from Microsoft to complete this prerequisite, but note that the following changes should be applied for NaviPartner's solutions:
  - On step 2, task 1 – there is no need to add the **Redirect URL**.
  - On step 4, task 1 - administrator's consent needs to be granted.
  - Steps 1 to 6 in Task 2 will be performed by NaviPartner as long as we have the **Application (Client) ID** for the registered application in Azure AD from Task 1. 

#### Procedure

In addition to all the necessary steps that are usually preformed during standard integration, it is required to setup and authenticate the webservices using OAuth.  

1. In Magento Webadmin, navigate to **NaviPartner** > **Extensions** > **Azure OAuth Clients**.
2. Click **Add New Client**.
3. Populate the fields with the information gathered in the prerequisite step, provided by the client, except for the **Display Name** and **Scope**.     
4. In **Display Name**, provide a name that clearly states what the new client is used for, e.g. **NaviPartner Webservices Test Environment**.
5. In **Scope**, paste the following link: **https://api.businesscentral.dynamics.com/.default**.
6. Once the Azure form is populated in Magento Webadmin, open the client's Business Central environment, and complete steps 1-6 from Task 2 described in [<ins>this procedure<ins>](https://learn.microsoft.com/en-us/dynamics365/business-central/dev-itpro/administration/automation-apis-using-s2s-authentication).