use super::*;
// Section: wire functions

#[no_mangle]
pub extern "C" fn wire_discover(port_: i64) {
    wire_discover_impl(port_)
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

// Section: sync execution mode utility

#[no_mangle]
pub extern "C" fn free_WireSyncReturnStruct(val: support::WireSyncReturnStruct) {
    unsafe {
        let _ = support::vec_from_leak_ptr(val.ptr, val.len);
    }
}
