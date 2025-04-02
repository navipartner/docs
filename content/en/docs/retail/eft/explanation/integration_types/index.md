---
title: "EFT integration types"
description: "Each EFT integration is built on a common framework, implementing essential operations along with any additional functions required for specific integrations."
lead: ""
date: 2023-07-06T09:00:53+02:00
lastmod: 2023-07-06T09:00:53+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "integration_types-43044e704aeb1e95dba46126ab9655c7"
weight: 217
toc: true
type: docs
---

Each EFT integration is built on a common framework, implementing essential operations along with any additional functions required for specific integrations. These integrations are categorized into two main types:

## Client-side integrations

These require a local component for communication with connected hardware, such as an EFT PIN pad linked via COM, USB, or Ethernet.

For client-side integrations, NP Retail provides **Stargate**, a hardware proxy that enables communication between the NST and the local POS machine. Stargate operates by compiling .NET DLLs that extend NP Retail’s request/response interface and storing them in the NAV database.

- These DLL assemblies are deployed to local POS machines and updated via the Stargate framework.
- To optimize performance, integration-specific graphical interfaces (GUI) should be handled locally using .NET dialogs, reducing the need for repeated communication with the NAV server.
- A *MOCK_CLIENT_SIDE* integration is available in NP Retail as an example for developing Stargate-based EFT integrations.
- A generic *EFTDialog.dll* assembly is also available for displaying EFT dialogs on local machines, with the source code provided upon request.

## Server-side integrations

These do not require a local component, as communication with external systems happens directly through the NAV server using C/AL and .NET interop.

For server-side integrations, standard C/AL development techniques are used to manage web service requests. These integrations rely on **Transcendence**, which dynamically loads HTML, CSS, and JavaScript at runtime. The interface continuously updates every second by checking the transaction status with the NST and the external server.

Common methods for implementing server-side integrations include:

- Long-polling HTTP requests (e.g., MobilePay)
- Frequent HTTP status checks, using standard C/AL and .NET interop
- Callback responses, which are more complex since NAV does not support open API callbacks. In such cases, an external system (e.g., Azure Functions) may be required to expose a public API for handling callbacks.


#### Examples:

- Web API-based integrations that facilitate payments through a mobile app, linking the POS to the customer’s device via an intermediate server.
- Integrations that communicate with POS hardware through an external server instead of a direct local connection.


{{< alert icon="📝" text="Server-side integrations are generally easier to develop and maintain, as they involve fewer components on NP Retail’s side."/>}}
