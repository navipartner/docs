---
title: "Retail environments"
description: "There are three available environments, production, sandbox and demo. You can find more information in this article."
lead: ""
date: 2024-03-25T09:34:14+01:00
lastmod: 2024-03-25T09:34:14+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "environments-4f9378215782e5ea1ec6f21fb1964bb6"
weight: 3
toc: true
type: docs
---

There are three available environments - production, sandbox and demo. The production environment contains live business data, the sandbox is a safe place for testing various modules, whereas demo environments are best suited for demonstrations and trainings. It's possible to choose the current environment in the **NP Retail Environment Information** administrative section. 

| Field Name      | Description |
| ----------- | ----------- |
| **Environment Type** | Specifies the currently selected environment. Make sure you pick **Sandbox** if you're testing the feature behavior, so you don't accidentally mess with the live data. Certain features will be enabled/disabled based on the selected environment. |
| **Environment Verified** | When a company is created, the environment isn't automatically verified. The next time you sign in, you will be prompted to verify the new company environment type by selecting one of the three available options. | 
| **Environment Template** | When a copy of a template company is created, the new company will get the same environment type, and the environment will be verified without asking users on login. | 
| **Environment Company Name** | Specifies the name of the company that the environment database corresponds to. This value is generated automatically. |
| **Environment Database Name** | Specifies the name of the environment database. The nomenclature depends on the type of the environment in use. This value is generated automatically. |
| **Environment Tenant** | Specifies the currently applied tenant. This value is generated automatically. |


{{< alert icon="📝" text="If you edit some of the fields in this section, you need to log into the environment again for the changes to take effect."/>}}