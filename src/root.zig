const std = @import("std");
/// checks if a type is even
pub fn izEven(a: anytype) bool {
    return @mod(a, 2) == 0;
}

test "shoud be true" {
    const even = izEven(8);
    try std.testing.expect(even);
}

test "shoud be false" {
    const odd = !izEven(7);
    try std.testing.expect(odd);
}

test "shoud be false floating point" {
    const odd = !izEven(6.1);
    try std.testing.expect(odd);
}

test "shoud be true floating point" {
    const odd = !izEven(7.12);
    try std.testing.expect(odd);
}
