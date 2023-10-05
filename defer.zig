// defer.zig

const std = @import("std");

pub fn main() void {
    defer {
        std.debug.print("defer!2\n", .{});
    }

    std.debug.print("main!1\n", .{});

    {
        defer {
            std.debug.print("defer!1\n", .{});
        }

        std.debug.print("main!2\n", .{});
    }

}