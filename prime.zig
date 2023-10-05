fn isPrime(number: u16) bool {
    var i: u16 = 2;
    while (i < number) : (i += 1) {
        if (number % i == 0) {
            return false;
        }
    }
    return true;
}

const std = @import("std");

pub fn main() void {
    const max: u16 = 100;

    var i: u16 = 3;

    var primes = [_]u16{2};

    while (i < max) : (i += 1) {
        if (isPrime(i)) {
            primes[primes.len - 1] = i;
            std.debug.print("{d}\n", .{arrays[arrays.len - 1]});
        }
    }
}