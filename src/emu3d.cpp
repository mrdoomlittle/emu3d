# include "emu3d.hpp"

mdl::uint_t mdl::emu3d(uint_t __xa, uint_t __ya, uint_t __za, uint_t __xa_len, uint_t __ya_len, uint_t __za_len) {
    return (__xa + (__ya * __xa_len) + (__za * (__xa_len * __ya_len)));
}
