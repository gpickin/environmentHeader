# Environment Header

## Add ColdBox Environment headers to your app in one module

This module determines the environment your ColdBox app is running in, and creates a response header for you.

This module is ideal for clustered setups, or docker swarms, where the code could be running on one of many environments. This will allow you to know which environment your app is running in.

## How does it work?

### Response Header

The module sets a header called `x-coldbox-env`.

### When does it run?

The module listens to the onRequestCapture ColdBox interception point.

### How does it determine the Environment?

This module looks the ColdBox setting, environment, with `getSetting( "environment" )`

