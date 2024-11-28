---
title: "NaviPartner API overview "
description: "Both SOAP and REST API can used for managing our solutions. Refer to the relevant guides to learn more."
lead: ""
date: 2023-07-18T13:42:14+02:00
lastmod: 2023-07-18T13:42:14+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "intro-b88f5f663a61384b79b09b01e1cd2634"
weight: 400
toc: true
type: docs
---

Both SOAP and REST API can used for managing our solutions. Refer to the relevant guides to learn more.

## REST API (OData)

The newest versions of Business Central use the OData v4 standard to provide REST webservice APIs. The base application in the ERP system comes with a sizeable set of APIs, and NPRetail adds many additional APIs on top of that, to provide easier navigation through NaviPartner's modules.

OData (Open Data Protocol) is well-suited for web service application. It is built on core protocols such as HTTP and REST, and it is especially recommended for SaaS environments. You can create and publish functionalities with OData web services; you can also use them to publish pages, codeunits, and queries as OData v4 endpoints. Additionally, you can use them to achieve retrieval, update and deletion of data effectively.

Learn how you can use our REST APIs and webhooks on NaviPartner's [<ins>**API Portal**<ins>](https://api.navipartner.com/intro).

### Microsoft Docs 

Read the Microsoft documentation for an introduction to Business Central APIs, authorization options and tips & tricks:

- [<ins>Getting started developing connect apps for Dynamics 365 Business Central<ins>](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-develop-connect-apps)
- [<ins>Tips for working with the APIs<ins>](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-connect-apps-tips)
- [<ins>Using filters with API calls<ins>](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/developer/devenv-connect-apps-filtering)
 
### Microsoft API

Refer to the [<ins>technical reference<ins>](https://docs.microsoft.com/en-us/dynamics365/business-central/dev-itpro/api-reference/v2.0/) of the base ERP APIs developed by Microsoft.  

### NPRetail API

NaviPartner APIs are grouped into various domains/modules. An OpenAPI API sandbox is maintained for each, and you can either explore them directly from your browser or import them into your favorite software that supports [<ins>OpenAPI 3<ins>](https://openapi.tools/).

## SOAP API

NaviPartner uses SOAP API for retrieving tickets and ticket-related data in the Entertainment solution. Other entities in the Entertainment module can also be managed via SOAP API, and will be further explained in the coming period.
