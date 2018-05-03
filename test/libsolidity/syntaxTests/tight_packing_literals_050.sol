pragma experimental "v0.5.0";
contract C {
    function f() pure public returns (bytes32) {
        return keccak256(1);
    }
    function g() pure public returns (bytes32) {
        return sha3(1);
    }
    function h() pure public returns (bytes32) {
        return sha256(1);
    }
    function j() pure public returns (bytes32) {
        return ripemd160(1);
    }
    function k() pure public returns (bytes) {
        return abi.encodePacked(1);
    }
}

// ----
// TypeError: (117-118): Cannot perform packed encoding for a literal. Please convert it to an explicit type first.
// TypeError: (191-198): "sha3" has been deprecated in favour of "keccak256"
// TypeError: (196-197): Cannot perform packed encoding for a literal. Please convert it to an explicit type first.
// TypeError: (277-278): Cannot perform packed encoding for a literal. Please convert it to an explicit type first.
// TypeError: (361-362): Cannot perform packed encoding for a literal. Please convert it to an explicit type first.
// TypeError: (450-451): Cannot perform packed encoding for a literal. Please convert it to an explicit type first.
