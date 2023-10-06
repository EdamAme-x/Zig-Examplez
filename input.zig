// input.zig

const std = @import("std");

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();
    const allocator = gpa.allocator();

    const stdin = std.io.getStdIn();

    std.debug.print("input: ", .{});
    var input = std.ArrayList(u8).init(allocator);
    defer input.deinit();

    try stdin.reader().streamUntilDelimiter(input.writer(), '\n', 1024);

    std.debug.print("input a string: {s}\n", .{input.items});

}