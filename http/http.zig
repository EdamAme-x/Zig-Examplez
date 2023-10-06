const std = @import("std");
const allocator = std.heap.c_allocator;
const uri = try std.Uri.parse("https://ziglang.org/");

pub fn main() !void {
    var client = std.http.Client.init(allocator);
    defer client.deinit();

    var req = try client.request(.{ .method = .GET, .url = uri, .headers = std.http.Headers.init(allocator) });
    defer req.deinit();
    try req.send();
    try req.await();

    const body = try req.body();

    std.debug.print("body: {s}\n", .{body});
}