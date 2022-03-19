const std = @import("std");

pub fn main() anyerror!void {
    std.log.info("All your codebase are belong to us. 2", .{});
}

test "basic test" {

    // std.debug.print("running test", .{});

    var foo = "bar";
    _ = foo;
    try std.testing.expectEqual(10, 3 + 7);
    try std.testing.expect(false);
}
