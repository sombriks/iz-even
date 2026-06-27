# iz-even

Example zig package, how to publish one 

## Setup

```bash
mkdir iz-even
cd iz-even
zig init
```

## Structure

`build.zig`: sets the package entrypoint and defines some executables and
default compile options.

`build.zig.zon`: this file is the package manifest, expaining what projects
depending on this package would expect. 

## How to install this package

