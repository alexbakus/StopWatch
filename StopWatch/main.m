//
//  main.m
//  StopWatch
//
//  Created by Alexander Bakus on 2013-08-20.
//  Copyright (c) 2013 Alexander Bakus. All rights reserved.
//

#import <Cocoa/Cocoa.h>

#import <MacRuby/MacRuby.h>

int main(int argc, char *argv[])
{
    return macruby_main("rb_main.rb", argc, argv);
}
