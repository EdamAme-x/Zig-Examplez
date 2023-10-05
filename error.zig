// error.zig

const std = @import("std");

pub fn main() !void {
    const d = error{
        Wrong
    };

    std.debug.print("d: {}\n", .{d.Wrong});
}