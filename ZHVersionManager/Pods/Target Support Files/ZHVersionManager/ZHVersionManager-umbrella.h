#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "VersionResponse.h"
#import "ZHVersionManager.h"

FOUNDATION_EXPORT double ZHVersionManagerVersionNumber;
FOUNDATION_EXPORT const unsigned char ZHVersionManagerVersionString[];

