// helloworld.zig

const std = @import("std");

pub fn main() !void {
    std.debug.print("Hello, world!\n", .{});
}
// output:
// Hello, world!