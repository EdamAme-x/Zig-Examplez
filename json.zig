const std = @import("std");

const my_json =
    \\{
    \\    "vals": {
    \\        "point": 42
    \\    }
    \\}
;

const Config = struct {
    vals: struct {
        point: u8,
    }
};

pub fn main() !void {
    const config = try std.json.parseFromSlice(Config, std.heap.page_allocator, my_json, .{});
    defer config.deinit();

    std.debug.print("point: {}\n", .{config.value.vals.point});
}