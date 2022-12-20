use super::*;
// Section: wire functions

#[no_mangle]
pub extern "C" fn wire_add(port_: i64, a: usize, b: usize) {
    wire_add_impl(port_, a, b)
}

// Section: allocate functions

// Section: related functions

// Section: impl Wire2Api

// Section: wire structs

// Section: impl NewWithNullPtr

pub trait NewWithNullPtr {
    fn new_with_null_ptr() -> Self;
}

impl<T> NewWithNullPtr for *mut T {
    fn new_with_null_ptr() -> Self {
        std::ptr::null_mut()
    }
}
