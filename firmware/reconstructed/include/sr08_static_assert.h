/* Compile-time layout check that ARM Compiler 5 (C99, no _Static_assert) accepts too. */
#ifndef SR08_STATIC_ASSERT_H
#define SR08_STATIC_ASSERT_H

#if defined(__ARMCC_VERSION) && __ARMCC_VERSION < 6000000
#define SR08_STATIC_ASSERT_JOIN2(a, b) a##b
#define SR08_STATIC_ASSERT_JOIN(a, b) SR08_STATIC_ASSERT_JOIN2(a, b)
#define SR08_STATIC_ASSERT(condition, message) \
    typedef char SR08_STATIC_ASSERT_JOIN(sr08_static_assert_line_, __LINE__)[(condition) ? 1 : -1]
#else
#define SR08_STATIC_ASSERT(condition, message) _Static_assert(condition, message)
#endif

#endif
