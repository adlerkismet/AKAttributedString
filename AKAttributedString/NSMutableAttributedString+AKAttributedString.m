//
//  NSMutableAttributedString+AKAttributedString.m
//  MasonryDemo
//
//  Created by kismet adler on 2018/7/2.
//  Copyright © 2018年 kismet adler. All rights reserved.
//

#import "NSMutableAttributedString+AKAttributedString.h"

@implementation NSMutableAttributedString (AKAttributedString)
- (NSMutableAttributedString * (^)(UIFont *))font{
    return ^id(UIFont *font){
        [self addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(UIFont *, NSRange))rangeFont{
    return ^id(UIFont *font, NSRange range){
        [self addAttribute:NSFontAttributeName value:font range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(UIColor *))color{
    return ^id(UIColor *color){
        [self addAttribute:NSForegroundColorAttributeName value:color range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(UIColor *, NSRange))rangeColor{
    return ^id(UIColor *color, NSRange range){
        [self addAttribute:NSForegroundColorAttributeName value:color range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(UIColor *))backgroundColor{
    return ^id(UIColor *color){
        [self addAttribute:NSBackgroundColorAttributeName value:color range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(UIColor *, NSRange))rangeBackgroundColor{
    return ^id(UIColor *color, NSRange range){
        [self addAttribute:NSBackgroundColorAttributeName value:color range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(AKLigature))ligature{
    return ^id(AKLigature ligature){
        [self addAttribute:NSLigatureAttributeName value:(ligature == AKLigature_Enable ? @1 : @0) range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(AKLigature, NSRange))rangeLigature{
    return ^id(AKLigature ligature, NSRange range){
        [self addAttribute:NSLigatureAttributeName value:(ligature == AKLigature_Enable ? @1 : @0) range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSNumber *))kern{
    return ^id(NSNumber *kern){
        [self addAttribute:NSKernAttributeName value:kern range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSNumber *, NSRange))rangeKern{
    return ^id(NSNumber *kern, NSRange range){
        [self addAttribute:NSKernAttributeName value:kern range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSNumber *))strikethroughStyle{
    return ^id(NSNumber *strikethroughStyle){
        //修复iOS10.3后，删除线不显示问题。(reference:https://stackoverflow.com/questions/43074652/ios-10-3-nsstrikethroughstyleattributename-is-not-rendered-if-applied-to-a-sub )
        [self addAttribute:NSBaselineOffsetAttributeName value:@0 range:NSMakeRange(0, self.length)];
        [self addAttribute:NSStrikethroughStyleAttributeName value:strikethroughStyle range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSNumber *, NSRange))rangeStrikethroughStyle{
    return ^id(NSNumber *strikethroughStyle, NSRange range){
        //修复iOS10.3后，删除线不显示问题。(reference:https://stackoverflow.com/questions/43074652/ios-10-3-nsstrikethroughstyleattributename-is-not-rendered-if-applied-to-a-sub )
        [self addAttribute:NSBaselineOffsetAttributeName value:@0 range:range];
        [self addAttribute:NSStrikethroughStyleAttributeName value:strikethroughStyle range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(UIColor *))strikethroughColor{
    return ^id(UIColor *color){
        [self addAttribute:NSStrikethroughColorAttributeName value:color range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(UIColor *, NSRange))rangeStrikethroughColor{
    return ^id(UIColor *color, NSRange range){
        [self addAttribute:NSStrikethroughColorAttributeName value:color range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSNumber *))underlineStyle{
    return ^id(NSNumber *underlineStyle){
        [self addAttribute:NSUnderlineStyleAttributeName value:underlineStyle range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSNumber *, NSRange))rangeUnderlineStyle{
    return ^id(NSNumber *underlineStyle, NSRange range){
        [self addAttribute:NSUnderlineStyleAttributeName value:underlineStyle range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(UIColor *))underlineColor{
    return ^id(UIColor *color){
        [self addAttribute:NSUnderlineColorAttributeName value:color range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(UIColor *, NSRange))rangeUnderlineColor{
    return ^id(UIColor *color, NSRange range){
        [self addAttribute:NSUnderlineColorAttributeName value:color range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSNumber *))strokeWidth{
    return ^id(NSNumber *strokeWidth){
        [self addAttribute:NSStrokeWidthAttributeName value:strokeWidth range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSNumber *, NSRange))rangeStrokeWidth{
    return ^id(NSNumber *strokeWidth, NSRange range){
        [self addAttribute:NSStrokeWidthAttributeName value:strokeWidth range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(UIColor *))strokeColor{
    return ^id(UIColor *color){
        [self addAttribute:NSStrokeColorAttributeName value:color range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(UIColor *, NSRange))rangeStrokeColor{
    return ^id(UIColor *color, NSRange range){
        [self addAttribute:NSStrokeColorAttributeName value:color range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSShadow *))shadow{
    return ^id(NSShadow *shadow){
        [self addAttribute:NSShadowAttributeName value:shadow range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSShadow *, NSRange))rangeShadow{
    return ^id(NSShadow *shadow, NSRange range){
        [self addAttribute:NSShadowAttributeName value:shadow range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(AKTextEffectStyle textEffectStyle))textEffect{
    return ^id(AKTextEffectStyle style){
        [self addAttribute:NSTextEffectAttributeName value:(style == AKTextEffectStyle_LetterpressStyle ? NSTextEffectLetterpressStyle : @"") range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(AKTextEffectStyle textEffectStyle, NSRange range))rangeTextEffect{
    return ^id(AKTextEffectStyle style, NSRange range){
        [self addAttribute:NSTextEffectAttributeName value:(style == AKTextEffectStyle_LetterpressStyle ? NSTextEffectLetterpressStyle : @"") range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSNumber *))baselineOffset{
    return ^id(NSNumber *baselineOffset){
        [self addAttribute:NSBaselineOffsetAttributeName value:baselineOffset range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSNumber *, NSRange))rangeBaselineOffset{
    return ^id(NSNumber *baselineOffset, NSRange range){
        [self addAttribute:NSBaselineOffsetAttributeName value:baselineOffset range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSNumber *))obliqueness{
    return ^id(NSNumber *obliqueness){
        [self addAttribute:NSObliquenessAttributeName value:obliqueness range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSNumber *, NSRange))rangeObliqueness{
    return ^id(NSNumber *obliqueness, NSRange range){
        [self addAttribute:NSObliquenessAttributeName value:obliqueness range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSNumber *))expansion{
    return ^id(NSNumber *expansion){
        [self addAttribute:NSExpansionAttributeName value:expansion range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSNumber *, NSRange))rangeExpansion{
    return ^id(NSNumber *expansion, NSRange range){
        [self addAttribute:NSExpansionAttributeName value:expansion range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(AKVerticalGlyphForm glyphForm))verticalGlyphForm{
    return ^id(AKVerticalGlyphForm glyphForm){
        [self addAttribute:NSVerticalGlyphFormAttributeName value:(glyphForm == AKVerticalGlyphForm_Horizontal ? @0 : @1) range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(AKVerticalGlyphForm glyphForm, NSRange range))rangeVerticalGlyphForm{
    return ^id(AKVerticalGlyphForm glyphForm, NSRange range){
        [self addAttribute:NSVerticalGlyphFormAttributeName value:(glyphForm == AKVerticalGlyphForm_Horizontal ? @0 : @1) range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSURL *link))link{
    return ^id(NSURL *link){
        [self addAttribute:NSLinkAttributeName value:link range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSURL *link, NSRange range))rangeLink{
    return ^id(NSURL *link, NSRange range){
        [self addAttribute:NSLinkAttributeName value:link range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSTextAttachment *attachment))attachment{
    return ^id(NSTextAttachment *attachment){
        [self addAttribute:NSAttachmentAttributeName value:attachment range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSTextAttachment *attachment, NSRange range))rangeAttachment{
    return ^id(NSTextAttachment *attachment, NSRange range){
        [self addAttribute:NSAttachmentAttributeName value:attachment range:range];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSParagraphStyle *paragraphStyle))paragraphStyle{
    return ^id(NSParagraphStyle *paragraphStyle){
        [self addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, self.length)];
        return self;
    };
}

- (NSMutableAttributedString * (^)(NSParagraphStyle *paragraphStyle, NSRange range))rangeParagraphStyle{
    return ^id(NSParagraphStyle *paragraphStyle, NSRange range){
        [self addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range];
        return self;
    };
}

- (NSAttributedString *)over{
    return [self copy];
}

@end
