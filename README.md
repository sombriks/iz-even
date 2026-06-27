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

`build.zig.zon`: this file is the package manifest, explaining what projects
depending on this package would expect. 

## How to install and consume this package

```bash
zig fetch --save git+https://github.com/sombriks/iz-even.git
```

Once fetched, the package is added in the `build.zig.zon` manifest file. 

But, to actually consume it, you need to configure the dependency inside  `build.zig`:

```zig
// declare a dependency
const iz_even_dep = b.dependency("iz_even", .{
    .target = target,
    .optimize = optimize
});
// ...
// refer the dependency in your module or executable
mod.addImport("iz_even", iz_even_dep.module("iz_even"));
```
