// fizzbuzz.zig

const std = @import("std");

pub fn main() void {
    const max: u8 = 100;
    var i: u8 = 1;

    while (i <= max) : (i += 1) {
        if (i % 15 == 0) {
            std.debug.print("fizzbuzz\n", .{});
        }else if (i % 3 == 0) {
            std.debug.print("fizz\n", .{});
        }else if (i % 5 == 0) {
            std.debug.print("buzz\n", .{});
        }else {
            std.debug.print("{}\n", .{i});
        }
    }
}