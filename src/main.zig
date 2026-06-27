const std = @import("std");
const Io = std.Io;

const iz_even = @import("iz_even");

pub fn main() void {
    std.log.info("All your {s} are belong to us.", .{"codebase"});
}
