// for.zig

const std = @import("std");

pub fn main() void {
    var array = [10]u8{ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

    for (array) |value| {
        std.debug.print("{}\n", .{value});
    }
}