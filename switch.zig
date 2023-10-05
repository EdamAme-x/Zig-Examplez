// switch.zig

const std = @import("std");

pub fn main() void {
    const a: u8 = 1;
    const b: u8 = 2;
    const c: u8 = 3;

    const d = switch (a + b) {
        1 => 1,
        2 => 2,
        c => 3,
        else => 0,
    };

    std.debug.print("d: {}\n", .{d});

}