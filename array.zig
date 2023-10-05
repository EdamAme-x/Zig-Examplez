// array.zig

pub fn main() void {
    var array = [5]u8{ 1, 2, 3, 4, 5 };
    std.debug.print("{d} {d} {d} {d} {d}\n", .{ array[0], array[1], array[2], array[3], array[4] });

    var array2 = [_]u8{ 1, 2, 3, 4 }; // ry
    std.debug.print("{d} {d} {d} {d}\n", .{ array2[0], array2[1], array2[2], array2[3] });

    var array3 = array ++ array2;
    std.debug.print("{d} {d} {d} {d} {d}\n", .{ array3[0], array3[1], array3[2], array3[3], array3[4], array3[5], array3[6], array3[7], array3[8] });
}