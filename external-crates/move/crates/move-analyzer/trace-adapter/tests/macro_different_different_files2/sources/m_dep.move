module macro_different_different_files2::m_dep;

use macro_different_different_files2::m_dep_dep::baz;

public macro fun bar($param1: u64, $f: |u64| -> u64): u64 {
    let mut ret = $param1 + $param1;
    ret = ret + baz!($param1);
    ret = ret + $f(ret);
    ret
}
