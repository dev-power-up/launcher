# QuickCenter
> Save time on your Guidewire Software project and squeeze more productivity out of your day.

## What is it?
QuickCenter represents a collection of tools to assist developers with their daily workflow. 

## Features
- Compatible with InsuranceSuite version 9



## Setup

Modify `launch.properties` with appropriate products and folders. Specify the products folder name only if 

For example, if your InsuranceSuite structure is this:

```text
└── Guidewire
    ├── ContactManager904
    ├── BillingCenter
    ├── PolicyCenter
    └── QuickCenter
```
This is the structure in `quickcenter.properties`:

```bash
cm=ContactManager904
bc=BillingCenter
pc=PolicyCenter
```


## Quick Start

The core executables file are `quickcenter.cmd` and `quickcenter.sh`. Be sure to set permssions accordingly depending upon your operating system.

```bash
quickcenter.cmd pc studio
```

One alternative is to call QuickCenter from another batch file, such as the example in `pc-studio.cmd`:

```bash
CALL quickcenter pc clean -x compile
```