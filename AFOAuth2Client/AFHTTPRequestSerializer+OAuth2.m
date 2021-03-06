//
//  AFOAuth2RequestSerializer.m
//  Workflow
//
//  Created by Conrad Kramer on 8/11/14.
//  Copyright (c) 2014 DeskConnect. All rights reserved.
//

#import "AFHTTPRequestSerializer+OAuth2.h"
#import "AFOAuth2RequestOperationManager.h"

@implementation AFHTTPRequestSerializer (OAuth2)

- (void)setAuthorizationHeaderFieldWithCredential:(AFOAuthCredential *)credential {
    if ([credential.tokenType compare:@"Bearer" options:NSCaseInsensitiveSearch] == NSOrderedSame) {
        [self setValue:[NSString stringWithFormat:@"Bearer %@", credential.accessToken] forHTTPHeaderField:@"Authorization"];
    }
}

@end
