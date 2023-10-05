// if.zig

const std = @import("std");

pub fn main() void {
    var x: u32 = 5;
    var y: u32 = 10;
    var z: u32 = 15;

    if (x < y) {
        std.debug.print("x is less than y\n", .{});
    }

    if (x < z) {
        std.debug.print("x is less than z\n", .{});
    }else {
        std.debug.print("x is not less than z\n", .{});
    }

    if (x + y < z) {
        std.debug.print("x + y is less than z\n", .{});
    } else if (x + y > z) {
        std.debug.print("x + y is greater than z\n", .{});
    }else {
        std.debug.print("x + y is equal to z\n", .{});
    }
}