//
//  NSEnumeratorRACSequenceAdditionsSpec.m
//  ReactiveCocoa
//
//  Created by Uri Baghin on 07/01/2013.
//  Copyright (c) 2013 GitHub, Inc. All rights reserved.
//

#import "RACSequenceExamples.h"

#import "NSEnumerator+RACSequenceAdditions.h"

SpecBegin(NSEnumeratorRACSequenceAdditions)

describe(@"-rac_sequence", ^{
	NSArray *values = @[ @0, @1, @2, @3, @4 ];
	itShouldBehaveLike(RACSequenceExamples, ^{
		return @{
			RACSequenceExampleGetSequenceBlock: [^{ return values.objectEnumerator.rac_sequence; } copy],
			RACSequenceExampleGetExpectedValuesBlock: [^{ return values; } copy]
		};
	});
});

SpecEnd
