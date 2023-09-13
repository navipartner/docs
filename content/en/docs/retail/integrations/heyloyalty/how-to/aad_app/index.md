---
title: "Create Azure Active Directory application for HeyLoyalty"
description: "Azure Active Directory application is needed to ensure HeyLoyalty can update data in Business Central"
lead: ""
date: 2023-09-13T14:31:39+02:00
lastmod: 2023-09-13T14:31:39+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "aadapp-eafe5610b6758b55917f65df5ebe3cfa"
weight: 999
toc: true
type: docs
---

Azure Active Directory (AAD) application[^1] is needed to ensure HeyLoyalty can update data in Business Central (BC).
To create one along with the set of credentials, follow the steps provided below.
[^1]: To interact with the web services (APIs) of Business Central, the external party (HeyLoyalty) needs to use the OAuth 2 protocol to gain an access token. When working with two services interacting with each other, the client needs to use the client credentials flow. The credentials for the client credentials flow are obtained through an Azure Active Directory application.

## Prerequisites

-	Make sure the actions are performed by a user that is both an Azure Active Directory administrator and BC administrator. These steps require you to grant administrator access to certain parts of your Azure Active Directory. You should therefore be an administrator in your tenant or get your administrator to perform these steps.
-	This procedure can only be used when your BC tenant is registered with Azure Active Directory as the login method. If you are using Microsoft’s SaaS offering this will already be the case.

## Procedure

1. In BC click the ![Lightbulb](Lightbulb_icon.PNG) button, search for **HeyLoyalty Integration Setup** page and open it.
<details>
<summary>
Cannot find the page?
</summary>
HeyLoyalty integration is not enabled by default. To enable it, navigate to <b>NaviPartner Feature Management</b> page, and make sure there is a checkmark in field <b>Enabled</b> on the <b>HeyLoyalty Integration</b> line. Do not forget to relogin to the system after enabling the integration.
</details>

2. In the menu ribbon of the page select **Actions** > **Initial Setup** > **Azure Active Directory OAuth**, and click **Create Azure AD App**.
A pop-up window displays.
![Granting permissions to NP Retail - Azure AD Application Management App](Images/AADappPermissions.png)

3. Grant permission to the **NP Retail - Azure AD Application Management App**. This app allows the code to create the Azure Active Directory application for the HeyLoyalty integration.
Make sure that the consent screen identifies the application as being verified with "Navi Partner København ApS" as Microsoft Partner.
On the Permission Requested page select Consent on behalf of your organization.

4. When asked if you want to create a user, click **Yes**.

5. When asked if you want to grand admin consent, click **Yes**.
If there is an issue granting consent (a popup, which didn’t open), don’t worry. You’ll be able to do it later.

6. As soon as the Azure Active Directory application is created, the information will be displayed on the screen.
Make sure to copy the client secret that is shown in the message box to a safe place. It will not be visible after the box is closed.
![Azure AD application details](Images/AADappDetails.png)

7. In BC click the ![Lightbulb](Lightbulb_icon.PNG) button, search for "aad" and open **Azure Active Directory Applications** page.

8. Find the newly created application (it’ll have "HeyLoyalty" in its name), and open the card by clicking **Client ID**.

9. On the **Azure Active Directory Application Card**, click **Grant Consent** to allow the newly created application access to the Business Central API.
