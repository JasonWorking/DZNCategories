//
//  NSObject+System.m
//
//  Created by Ignacio Romero Zurbuchen on 11/25/12.
//  Copyright (c) 2011 DZen Interaktiv.
//  Licence: MIT-Licence
//  http://opensource.org/licenses/MIT
//

#import "NSObject+System.h"
#include <sys/utsname.h>

@implementation NSObject (System)

+ (NSURL *)applicationDocumentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

+ (NSString *)deviceModel
{
    struct utsname systemInfo;
    uname(&systemInfo);
    return [NSString stringWithCString:systemInfo.machine encoding:NSUTF8StringEncoding];
}

+ (NSString *)deviceName
{
    NSString *platform = [NSObject deviceModel];
    
    if ([platform isEqualToString:@"iPhone1,1"])         return @"iPhone 2G";
    else if ([platform isEqualToString:@"iPhone1,2"])    return @"iPhone 3G";
    else if ([platform isEqualToString:@"iPhone2,1"])    return @"iPhone 3GS";
    else if ([platform isEqualToString:@"iPhone3,1"])    return @"iPhone 4";
    else if ([platform isEqualToString:@"iPhone3,3"])    return @"Verizon iPhone 4";
    else if ([platform isEqualToString:@"iPhone4,1"])    return @"iPhone 4S";
    else if ([platform isEqualToString:@"iPhone5,1"])    return @"iPhone 5";
    else if ([platform isEqualToString:@"iPhone5,2"])    return @"iPhone 5";
    else if ([platform isEqualToString:@"iPod1,1"])      return @"iPod Touch 1G";
    else if ([platform isEqualToString:@"iPod2,1"])      return @"iPod Touch 2G";
    else if ([platform isEqualToString:@"iPod3,1"])      return @"iPod Touch 3G";
    else if ([platform isEqualToString:@"iPod4,1"])      return @"iPod Touch 4G";
    else if ([platform isEqualToString:@"iPad1,1"])      return @"iPad 1G";
    else if ([platform isEqualToString:@"iPad2,1"])      return @"iPad 2(WiFi)";
    else if ([platform isEqualToString:@"iPad2,2"])      return @"iPad 2(GSM)";
    else if ([platform isEqualToString:@"iPad2,3"])      return @"iPad 2(CDMA)";
    else if ([platform isEqualToString:@"iPad3,1"])      return @"iPad 3";
    else if ([platform isEqualToString:@"iPad3,2"])      return @"iPad 3(GSM/CDMA)";
    else if ([platform isEqualToString:@"iPad3,3"])      return @"iPad 3(GSM)";
    else if ([platform isEqualToString:@"iPad3,4"])      return @"iPad 3(GSM)";
    else if ([platform isEqualToString:@"iPad2,5"])      return @"iPad mini 1G";
    else if ([platform isEqualToString:@"i386"])         return @"Simulator i386";
    else if ([platform isEqualToString:@"x86_64"])       return @"Simulator x86_64";
    
    return platform;
}

+ (NSString *)OSVersion
{
    return [[UIDevice currentDevice] systemVersion];
}

+ (BOOL)isOSMinimumRequired:(NSString *)minimum
{
    // eg  NSString *reqSysVer = @"4.0";
    
    NSString *currSysVer = [NSObject OSVersion];
    if ([currSysVer compare:minimum options:NSNumericSearch] != NSOrderedAscending) return YES;
    else return NO;
}

+ (BOOL)isRetina
{
    if ([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] &&
        ([UIScreen mainScreen].scale == 2.0)) return YES;
    else return NO;
}

+ (float)density
{
    if ([self isRetina]) return 2.0;
    else return 1.0;
}

+ (NSString *)appName
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleDisplayName"];
}

+ (NSString *)appVersion
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleShortVersionString"];
}

+ (NSString *)buildVersion
{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
}

+ (BOOL)isJailbroken
{
    NSURL *URL = [NSURL URLWithString:@"cydia://"];
    return [[UIApplication sharedApplication] canOpenURL:URL];
}

@end
