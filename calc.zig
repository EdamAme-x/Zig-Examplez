const std = @import("std");

pub fn main() !void {
    const a = 1 + 2;
    const b = a - 1;
    const c = a * b;
    const d = a / b;
    const e = a % b;
    const f = std.math.pow(u8, a, b); //  a ** b
    std.debug.print("a = {}, b = {}, c = {}, d = {}, e = {}, f = {}\n", .{ a, b, c, d, e, f });
}