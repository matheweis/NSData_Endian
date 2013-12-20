/*
 File: NSData+EndianValues.m
 Copyright 2013 Mathew Eis <mathew@eisbox.net>
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in
 all copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 THE SOFTWARE.
 */


#import "NSData+EndianValues.h"

@implementation NSData (EndianValues)

- (SInt8)getBESInt8:(NSUInteger)location
{
    SInt8 v = 0;
    [self getBytes:&v range:NSMakeRange(location, 1)];
    return v;
}

- (SInt16)getBESInt16:(NSUInteger)location
{
    UInt8  b[2];
    UInt16 v = 0;
    [self getBytes:&b[0] range:NSMakeRange(location, 2)];
    v = b[1] | b[0] << 8;
    return *((SInt16 *) (&v));
}

- (SInt32)getBESInt32:(NSUInteger)location
{
    UInt8  b[4];
    UInt32 v = 0;
    [self getBytes:&b[0] range:NSMakeRange(location, 4)];
    v = b[3] | b[2] << 8 | b[1] << 16 | b[0] << 24;
    return *((UInt32 *) (&v));
}

- (UInt8)getBEUInt8:(NSUInteger)location
{
    SInt8 v = 0;
    [self getBytes:&v range:NSMakeRange(location, 1)];
    return v;
}

- (UInt16)getBEUInt16:(NSUInteger)location
{
    UInt8  b[2];
    UInt16 v = 0;
    [self getBytes:&b[0] range:NSMakeRange(location, 2)];
    v = b[1] | b[0] << 8;
    return v;
}

- (UInt32)getBEUInt32:(NSUInteger)location
{
    UInt8  b[4];
    UInt32 v = 0;
    [self getBytes:&b[0] range:NSMakeRange(location, 4)];
    v = b[3] | b[2] << 8 | b[1] << 16 | b[0] << 24;
    return v;
}

- (SInt8)getLESInt8:(NSUInteger)location
{
    SInt8 v = 0;
    [self getBytes:&v range:NSMakeRange(location, 1)];
    return v;
}

- (SInt16)getLESInt16:(NSUInteger)location
{
    UInt8  b[2];
    UInt16 v = 0;
    [self getBytes:&b[0] range:NSMakeRange(location, 2)];
    v = b[0] | b[1] << 8;
    return *((SInt16 *) (&v));
}

- (SInt32)getLESInt32:(NSUInteger)location
{
    UInt8  b[4];
    UInt32 v = 0;
    [self getBytes:&b[0] range:NSMakeRange(location, 4)];
    v = b[0] | b[1] << 8 | b[2] << 16 | b[3] << 24;
    return *((UInt32 *) (&v));
}

- (UInt8)getLEUInt8:(NSUInteger)location
{
    SInt8 v = 0;
    [self getBytes:&v range:NSMakeRange(location, 1)];
    return v;
}

- (UInt16)getLEUInt16:(NSUInteger)location
{
    UInt8  b[2];
    UInt16 v = 0;
    [self getBytes:&b[0] range:NSMakeRange(location, 2)];
    v = b[0] | b[1] << 8;
    return v;
}

- (UInt32)getLEUInt32:(NSUInteger)location
{
    UInt8  b[4];
    UInt32 v = 0;
    [self getBytes:&b[0] range:NSMakeRange(location, 4)];
    v = b[0] | b[1] << 8 | b[2] << 16 | b[3] << 24;
    return v;
}

@end
