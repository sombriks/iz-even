const std = @import("std");
/// checks if a type is even
pub fn izEven(a: anytype) bool {
    return a % 2 == 0;
}

test "shoud be true" {
    const even = izEven(8);
    try std.testing.expect(even);
}

test "shoud be false" {
    const odd = !izEven(7);
    try std.testing.expect(odd);
}
