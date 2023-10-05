// calc_bit.zig

const std = @import("std");

pub fn main() void {
    const x = 0b1010_1010_1010_1010_1010_1010_1010_1010;
    const y = 0b0110_0110_1000_1011_1111_0000_1100_0011;

    const z = x | y; // pipe

    std.debug.print("{b}\n", .{z});

    const w = x & y; // ampersand

    std.debug.print("{b}\n", .{w});

    const v = x ^ y; // caret

    std.debug.print("{b}\n", .{v});

    const u = x << 2; // shift left

    std.debug.print("{b}\n", .{u});

    const t = x >> 2; // shift right

    std.debug.print("{b}\n", .{t});
}