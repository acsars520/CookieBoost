#ifndef COOKIE_BST_MACRO_H_
#define COOKIE_BST_MACRO_H_

#ifndef COOKIE_BST_EXPORT_API
#if defined(_WIN32) || defined(WINCE) || defined(__CYGWIN__)
#define COOKIE_BST_EXPORT_API __declspec(dllexport)
#elif defined(__GNUC__) && __GNUC__ >= 4
#define COOKIE_BST_EXPORT_API __attribute__((dllexport))
#endif
#endif

#ifdef __cplusplus
#define COOKIE_BST_API extern "C" COOKIE_BST_EXPORT_API
#else
#define COOKIE_BST_API COOKIE_BST_EXPORT_API
#endif

#endif