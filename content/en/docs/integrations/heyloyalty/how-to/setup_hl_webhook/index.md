---
title: "Setup HeyLoyalty webhook"
description: "Describes the process of setting up a webhook at HeyLoyalty that is needed for sending changes done to members directly in HeyLoyalty from HeyLoyalty to BC"
lead: ""
date: 2023-10-30T16:07:13+04:00
lastmod: 2023-10-30T16:07:13+04:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup_hl_webhook-5eb8d87a199f3677cc09551521558a88"
weight: 700
toc: true
type: docs
---

In order to ensure changes done to members directly in HeyLoyalty are synchronized back to Business Central (BC) you'll need to setup a webhook in your HeyLoyalty environment.

## Prerequisites
Mare sure you have finished [*setting up member synchronization*]({{< ref "setup_memb_sync/index.md" >}}) and [*created AAD application for HeyLoyalty*]({{< ref "aad_app/index.md" >}}) in BC before proceeding with this step.

## Procedure

1. Find the webservice address that was created in BC for HeyLoyalty:
   - In BC click the ![Lightbulb](Lightbulb_icon.PNG) button, search for the **Web Services** page and open it.
   - Find the service with **Service Name** = *heyloyalty_services*.
   - Copy the web service link from the field **OData V4 URL**.
<br><br>
2. Adjust the link address, so HeyLoyalty can understand it correctly:<br>
Generally a BC webservice URL for HeyLoyalty has the following structure:
```URL
https://api.businesscentral.dynamics.com/v2.0/<Your BC tenant ID>/<Your BC environment name>/ODataV4/Company('<Your BC company name>')/heyloyalty_services
```
As you may see there are character pairs **'(** and **)'** surrounding your BC company name. HeyLoyalty doesn’t support that. Therefore you’ll have to replace `'(` with `%28%27` and `)'` with `%27%29`. For example:
  - Original URL:
```
https://api.businesscentral.dynamics.com/v2.0/1f807cd6-d8bf-4bb0-b2e4-922d41e37d37/Production/ODataV4/Company('CRONUS%20Danmark%20A%2FS')/heyloyalty_services
```
  - Adjusted URL:
```
https://api.businesscentral.dynamics.com/v2.0/1f807cd6-d8bf-4bb0-b2e4-922d41e37d37/Production/ODataV4/Company%28%27CRONUS%20Danmark%20A%2FS%27%29/heyloyalty_services
```

3. In your HeyLoyalty environment:
   - Select *Lister*, then choose *Rediger lister* for the list you want to set the webhook for.
   - Select *Webhooks* subsection
!["Webhooks" subsection of a HeyLoyalty list](Images/HLWebhooks.png)
<br><br>
   - Click *Opret et webhook* to create a new webhook. Fill in the following fields for the new webhook:
| Field name | Recommended value |
|------------|---------------------------|
| URL | The adjusted web service URL from BC you have prepared earlier |
| Send som rå json-object | `Yes` |
| Forsimplet format | `Yes` |
| Authentication type | `OAuth 2.0` |
| Brugernavn | The **Application (Client) ID** from the Azure AD application details page that was shown to you at the end of the ["Create Azure Active Directory application for HeyLoyalty"]({{< ref "aad_app/index.md" >}}) process |
| Vis kodeord | The **Client Secret** value from the Azure AD application details page |
| base url | `https://login.microsoftonline.com/<Your BC tenant ID>/oauth2/v2.0` |
| scopes (optional) | `https://api.businesscentral.dynamics.com/.default` |
| Tilmeld medlem (e-mail, mobil) | `Yes` |
| Tilmeld medlem (Heypush) | `Yes` |
| Opdater medlem | `Yes` |
| Frameld medlem | `Yes` |
| Spamklage | `Yes` |
| Hard bounces | `Yes` |