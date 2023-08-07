---
title: "Create Azure Active Directory Application"
description: "To interact with the web services (APIs) of Business Central, the external party needs to use the OAuth 2 protocol to gain an access token. When working with two services interacting with each other, the client needs to use the client credentials flow."
lead: ""
date: 2023-07-11T10:15:31+02:00
lastmod: 2023-07-11T10:15:31+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "azure_directory-ddc22801345b709e4c5c08d8d4d17a56"
weight: 226
toc: true
type: docs
---

To interact with the web services (APIs) of Business Central, the external party needs to use the OAuth 2 protocol to gain an access token. When working with two services interacting with each other, the client needs to use the client credentials flow.

The credentials for the client credentials flow are obtained through an Azure Active Directory application. To create one along with the set of credentials, follow the steps provided in the following text.

## Prerequisites 

- Make sure the actions are performed by a user that is both an Azure Active Directory administrator and Business Central administrator. These steps require you to grant administrator access to certain parts of your Azure Active Directory. You should therefore be an administrator in your tenant or get your administrator to perform these steps.
- This procedure can only be used when your Business Central tenant is registered with Azure Active Directory as the login method. If you are using Microsoft's SaaS offering this will already be the case.

## Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Magento Setup**, and select the related link.      

2. In the ribbon select **Actions** > **Magento Integration** > **Azure Active Directory OAuth**, and click **Create Azure AD App**.    
   A pop-up window displays. 

3. Grant permission to the **NP Retail - Azure AD Application Management App**.           
   This application is what allows the code to create the Azure Active Directory application in the Magento integration.

4. Make sure that the consent screen identifies the application as being verified with "Navi Partner København ApS" as Microsoft Partner.

5. When asked if you want to create a user, click **Yes**.            
   As soon as the Azure Active Directory application is created, the information will be displayed on the screen.
6.  Make sure to copy the client secret that is shown in the message box to a safe place. It will not be visible after the box is closed.

{{< alert icon="⚠️" text="By using the credentials shown on the screen, an external party is able to access certain parts of a specific Business Central tenant. Make sure to only share them with appropriate parties, and to do so in a secure way."/>}}

7. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Azure Active Directory Applications**, and select the related link.

8. Find the newly created application, and open the card by clicking **Client ID**.

9. On the **Azure Active Directory Application Card**, click **Grant Consent** to allow the newly created access to the Business Central API.