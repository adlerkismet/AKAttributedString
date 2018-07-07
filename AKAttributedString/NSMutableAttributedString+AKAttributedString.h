//
//  NSMutableAttributedString+AKAttributedString.h
//  MasonryDemo
//
//  Created by kismet adler on 2018/7/2.
//  Copyright © 2018年 kismet adler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSInteger,AKTextEffectStyle) {
    AKTextEffectStyle_LetterpressStyle = 0
};

typedef NS_ENUM(NSInteger,AKWritingDirection) {
    AKWritingDirection_Leading = 0,
    AKWritingDirection_Trailing
};

typedef NS_ENUM(NSInteger,AKVerticalGlyphForm) {
    AKVerticalGlyphForm_Horizontal = 0,
    AKVerticalGlyphForm_Vertical
};

typedef NS_ENUM(NSInteger,AKLigature) {
    AKLigature_Disable = 0,
    AKLigature_Enable
};
@interface NSMutableAttributedString (AKAttributedString)

/**
 设置字体属性
 */
- (NSMutableAttributedString * (^)(UIFont *font))font;

/**
 设置字体属性,范围
 */
- (NSMutableAttributedString * (^)(UIFont *font, NSRange range))rangeFont;

/**
 设置字体颜色
 */
- (NSMutableAttributedString * (^)(UIColor *color))color;
/**
 设置字体颜色，范围
 */
- (NSMutableAttributedString * (^)(UIColor *color, NSRange range))rangeColor;

/**
 设置字体所在区域背景颜色
 */
- (NSMutableAttributedString * (^)(UIColor *color))backgroundColor;

/**
 设置字体所在区域背景颜色，范围
 */
- (NSMutableAttributedString * (^)(UIColor *color, NSRange range))rangeBackgroundColor;

/**
 设置连体属性，0 表示没有连体字符，1 表示使用默认的连体字符
 */
- (NSMutableAttributedString * (^)(AKLigature ligature))ligature;

/**
 设置连体属性，范围，0 表示没有连体字符，1 表示使用默认的连体字符
 */
- (NSMutableAttributedString * (^)(AKLigature ligature, NSRange range))rangeLigature;


/**
 设定字符间距，正值间距加宽，负值间距变窄
 */
- (NSMutableAttributedString * (^)(NSNumber *kern))kern;

/**
 设定字符间距，范围，正值间距加宽，负值间距变窄
 */
- (NSMutableAttributedString * (^)(NSNumber *kern, NSRange range))rangeKern;


/**
 设置删除线,可选参NSUnderlineStyle
 */
- (NSMutableAttributedString * (^)(NSNumber *strikethroughStyle))strikethroughStyle;

/**
 设置删除线，范围，可选参NSUnderlineStyle
 */
- (NSMutableAttributedString * (^)(NSNumber *strikethroughStyle, NSRange range))rangeStrikethroughStyle;

/**
 设置删除线颜色
 */
- (NSMutableAttributedString * (^)(UIColor *color))strikethroughColor;

/**
 设置删除线颜色，范围
 */
- (NSMutableAttributedString * (^)(UIColor *color, NSRange range))rangeStrikethroughColor;

/**
 设置下划线，可选参NSUnderlineStyle
 */
- (NSMutableAttributedString * (^)(NSNumber *underlineStyle))underlineStyle;

/**
 设置下划线，范围，可选参NSUnderlineStyle
 */
- (NSMutableAttributedString * (^)(NSNumber *underlineStyle, NSRange range))rangeUnderlineStyle;

/**
 设置下划线颜色
 */
- (NSMutableAttributedString * (^)(UIColor *color))underlineColor;

/**
 设置下划线颜色，范围
 */
- (NSMutableAttributedString * (^)(UIColor *color, NSRange range))rangeUnderlineColor;

/**
 设置笔画宽度，负值填充效果，正值中空效果
 */
- (NSMutableAttributedString * (^)(NSNumber *strokeWidth))strokeWidth;

/**
 设置笔画宽度，范围，负值填充效果，正值中空效果
 */
- (NSMutableAttributedString * (^)(NSNumber *strokeWidth, NSRange range))rangeStrokeWidth;

/**
 笔画颜色
 */
- (NSMutableAttributedString * (^)(UIColor *color))strokeColor;

/**
 笔画颜色，范围
 */
- (NSMutableAttributedString * (^)(UIColor *color, NSRange range))rangeStrokeColor;

/**
 设置阴影属性
 */
- (NSMutableAttributedString * (^)(NSShadow *shadow))shadow;

/**
 设置阴影属性，范围
 */
- (NSMutableAttributedString * (^)(NSShadow *shadow, NSRange range))rangeShadow;

/**
  设置文本特殊效果
 */
- (NSMutableAttributedString * (^)(AKTextEffectStyle textEffectStyle))textEffect;

/**
 设置文本特殊效果,范围
 */
- (NSMutableAttributedString * (^)(AKTextEffectStyle textEffectStyle, NSRange range))rangeTextEffect;

/**
 设置基线偏移值，取值为 NSNumber （float）,正值上偏，负值下偏
 */
- (NSMutableAttributedString * (^)(NSNumber *baselineOffset))baselineOffset;

/**
 设置基线偏移值，范围，取值为 NSNumber （float）,正值上偏，负值下偏
 */
- (NSMutableAttributedString * (^)(NSNumber *baselineOffset, NSRange range))rangeBaselineOffset;

/**
 设置字形倾斜度，取值为 NSNumber （float）,正值右倾，负值左倾
 */
- (NSMutableAttributedString * (^)(NSNumber *obliqueness))obliqueness;

/**
 设置字形倾斜度，范围，取值为 NSNumber （float）,正值右倾，负值左倾
 */
- (NSMutableAttributedString * (^)(NSNumber *obliqueness, NSRange range))rangeObliqueness;

/**
 设置文本横向拉伸属性，取值为 NSNumber （float）,正值横向拉伸文本，负值横向压缩文本
 */
- (NSMutableAttributedString * (^)(NSNumber *expansion))expansion;

/**
 设置文本横向拉伸属性，范围，取值为 NSNumber （float）,正值横向拉伸文本，负值横向压缩文本
 */
- (NSMutableAttributedString * (^)(NSNumber *expansion, NSRange range))rangeExpansion;

/**
 设置文字排版方向
 */
- (NSMutableAttributedString * (^)(AKVerticalGlyphForm glyphForm))verticalGlyphForm;
/**
 设置文字排版方向，范围
 */
- (NSMutableAttributedString * (^)(AKVerticalGlyphForm glyphForm, NSRange range))rangeVerticalGlyphForm;

/**
 设置链接属性，点击后调用浏览器打开指定URL地址
 */
- (NSMutableAttributedString * (^)(NSURL *link))link;

/**
 设置链接属性，范围，点击后调用浏览器打开指定URL地址
 */
- (NSMutableAttributedString * (^)(NSURL *link, NSRange range))rangeLink;

/**
 设置文本附件
 */
- (NSMutableAttributedString * (^)(NSTextAttachment *attachment))attachment;

/**
 设置文本附件，范围
 */
- (NSMutableAttributedString * (^)(NSTextAttachment *attachment, NSRange range))rangeAttachment;

/**
 设置文本段落排版格式（设置首行，行间距，对齐方式等）
 */
- (NSMutableAttributedString * (^)(NSParagraphStyle *paragraphStyle))paragraphStyle;
/**
 设置文本段落排版格式（设置首行，行间距，对齐方式等），范围
 */
- (NSMutableAttributedString * (^)(NSParagraphStyle *paragraphStyle, NSRange range))rangeParagraphStyle;


/**
 返回一份不可变的拷贝

 @return 自身的拷贝
 */
- (NSAttributedString *)over;
@end

NS_ASSUME_NONNULL_END
