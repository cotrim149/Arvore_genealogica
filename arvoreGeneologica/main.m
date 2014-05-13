//
//  main.m
//  arvoreGeneologica
//
//  Created by ALS on 07/05/14.
//  Copyright (c) 2014 Cotrim. All rights reserved.
//

#import <Cocoa/Cocoa.h>

int main(int argc, char *argv[])
{
    
    
    NSMutableArray *familia = [[NSMutableArray alloc] init];

    NSMutableDictionary *vovo = [[NSMutableDictionary alloc] init];
    [vovo setObject:@"ESPEDITO" forKey:@"nome"];
    [vovo setObject:@"espedito@gmail.com" forKey:@"email"];
    [vovo setObject:[NSNumber numberWithInt:75] forKey:@"idade"];
    [vovo setObject:@"5678-8765" forKey:@"telefone"];
    
    NSMutableDictionary *pai = [[NSMutableDictionary alloc] init];
    [pai setObject:@"Albino" forKey:@"nome"];
    [pai setObject:@"albino@gmail.com" forKey:@"email"];
    [pai setObject:[NSNumber numberWithInt:46] forKey:@"idade"];
    [pai setObject:@"1234-4321" forKey:@"telefone"];

    NSMutableDictionary *eu = [[NSMutableDictionary alloc] init];
    [eu setObject:@"Victor Cotrim" forKey:@"nome"];
    [eu setObject:@"cotrim149@gmail.com" forKey:@"email"];
    [eu setObject:[NSNumber numberWithInt:23] forKey:@"idade"];
    [eu setObject:@"9988-9264" forKey:@"telefone"];

    NSMutableDictionary *irmao = [[NSMutableDictionary alloc] init];
    [irmao setObject:@"Ze" forKey:@"nome"];
    [irmao setObject:@"ze@gmail.com" forKey:@"email"];
    [irmao setObject:[NSNumber numberWithInt:18] forKey:@"idade"];
    [irmao setObject:@"7890-0987" forKey:@"telefone"];
    
    [familia addObject:vovo];
    [familia addObject:pai];
    [familia addObject:eu];
    [familia addObject:irmao];
    
    [familia writeToFile:@"/tmp/familia.plist" atomically:YES];
    
    for (NSDictionary * membro in familia) {
        NSLog(@"%@",membro);
    }
    
    return NSApplicationMain(argc, (const char **)argv);
}
