// object.zig

const std = @import("std");

pub fn main() void {
    var obj = struct {
        name: []const u8,
        num: i32,
    }{
        .name = "hello",
        .num = 123,
    };

    std.debug.print("{s}\n", .{obj.name});
    std.debug.print("{}\n", .{obj.num});

    obj.num = 321;
    std.debug.print("{}\n", .{obj.num});
}