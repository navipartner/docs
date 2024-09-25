---
title: "Set up HeyLoyalty webhook"
description: "This article walks you through the process of setting up a webhook at HeyLoyalty that is needed for sending changes done to members directly in HeyLoyalty to Business Central."
lead: ""
date: 2023-10-30T16:07:13+04:00
lastmod: 2023-10-30T16:07:13+04:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup_hl_webhook-5eb8d87a199f3677cc09551521558a88"
weight: 331
toc: true
type: docs
---

To ensure that the changes made to members directly in HeyLoyalty are synchronized back to Business Central (BC), you need to set up a webhook in your HeyLoyalty environment.

## Prerequisites

Make sure you've [*set up member synchronization*]({{< ref "setup_memb_sync/index.md" >}}) and [*created AAD application for HeyLoyalty*]({{< ref "aad_app/index.md" >}}) in Business Central before moving on to procedural steps.

## Procedure in Business Central

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, search for the **Web Services** page, and open it.
2. Find the webservice address that was created in Business Central for HeyLoyalty.        
   It should have **Service Name** = *heyloyalty_services*.
3.Copy the web service link from the field **OData V4 URL**.
4. Adjust the link address, so HeyLoyalty can understand it correctly:     
   Generally a Business Central webservice URL for HeyLoyalty has the following structure:
  ```URL
  https://api.businesscentral.dynamics.com/v2.0/<Your BC tenant ID>/<Your BC environment name>/ODataV4/Company('<Your BC company name>')/heyloyalty_services
  ```
  As you can see, there are character pairs `('` and `')` around your BC company name. HeyLoyalty doesn't support this. So you'll need to replace the `('` with its URL encoded representation `%28%27`, and the `')` with `%27%29`. For example:

  - Original URL:
   ```
   https://api.businesscentral.dynamics.com/v2.0/1f807cd6-d8bf-4bb0-b2e4-922d41e37d37/Production/ODataV4/Company('CRONUS%20Danmark%20A%2FS')/heyloyalty_services
   ```
  - Adjusted URL:
   ```
   https://api.businesscentral.dynamics.com/v2.0/1f807cd6-d8bf-4bb0-b2e4-922d41e37d37/Production/ODataV4/Company%28%27CRONUS%20Danmark%20A%2FS%27%29/heyloyalty_services
```

## Procedure in your HeyLoyalty environment

1. Select **Lists** from the top menu ribbon, then select **Edit List** on the list you want to set the webhook for.
2. Select the **Webhooks** subsection.

   !["Webhooks" subsection of a HeyLoyalty list](Images/HLWebhooks.png)

3. Click **Create a webhook**. Fill in the following fields for the new webhook:     

| Field name | Recommended value |
|------------|---------------------------|
| **URL** | The adjusted web service URL from Business Central you have prepared earlier. |
| **Contact email** | An email address to which webhook errors should be sent. |
| **Send as raw json object** | `Yes` |
| **Simplified format** | `Yes` |
| **Authentication type** | `OAuth 2.0` |
| **Username** | The **Application (Client) ID** from the Azure AD application details page that was shown to you at the end of the ["Create Azure Active Directory application for HeyLoyalty"]({{< ref "aad_app/index.md" >}}) process |
| **Password** | The **Client Secret** value from the **Azure AD application details** page |
| **base URL** | `https://login.microsoftonline.com/<Your BC tenant ID>/oauth2/v2.0` |
| **scopes (optional)** | `https://api.businesscentral.dynamics.com/.default` |
| **New subscriber (email, phone)** | `Yes` |
| **New subscriber (heypush)** | `Yes` |
| **Update subscriber** | `Yes` |
| **Unsubscribe subscriber** | `Yes` |
| **Spam complaint** | `Yes` |
| **Hard bounces** | `Yes` |
