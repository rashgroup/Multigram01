.class public Lorg/telegram/ui/Cells/TextColorCell;
.super Landroid/widget/FrameLayout;
.source "TextColorCell.java"


# static fields
.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private colorDrawable:Landroid/graphics/drawable/Drawable;

.field private currentColor:I

.field private needDivider:Z

.field private textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x5

    const/4 v5, 0x3

    const/high16 v3, 0x41880000    # 17.0f

    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    sget-object v0, Lorg/telegram/ui/Cells/TextColorCell;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/Cells/TextColorCell;->paint:Landroid/graphics/Paint;

    .line 45
    sget-object v0, Lorg/telegram/ui/Cells/TextColorCell;->paint:Landroid/graphics/Paint;

    const v1, -0x262627

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 46
    sget-object v0, Lorg/telegram/ui/Cells/TextColorCell;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02027d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->colorDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    const v1, -0xdededf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 54
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setLines(I)V

    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 57
    iget-object v1, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    or-int/lit8 v0, v0, 0x10

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 58
    iget-object v7, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    const/4 v0, -0x1

    const/high16 v1, -0x40800000    # -1.0f

    sget-boolean v6, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v6, :cond_2

    :goto_1
    or-int/lit8 v2, v2, 0x30

    move v5, v3

    move v6, v4

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Lorg/telegram/ui/Cells/TextColorCell;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    invoke-static {}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getSuperTypeFace()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 61
    return-void

    :cond_1
    move v0, v5

    .line 57
    goto :goto_0

    :cond_2
    move v2, v5

    .line 58
    goto :goto_1
.end method

.method private updateColors()V
    .locals 5

    .prologue
    .line 100
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "ApoTheme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 101
    .local v1, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "theme_setting_list_bgcolor"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/telegram/ui/Cells/TextColorCell;->setBackgroundColor(I)V

    .line 103
    sget-object v2, Lorg/telegram/ui/Cells/TextColorCell;->paint:Landroid/graphics/Paint;

    const-string/jumbo v3, "theme_setting_option_divcolor"

    const v4, -0x262627

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    const-string/jumbo v2, "theme_setting_option_tcolor"

    const v3, -0xdededf

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 106
    .local v0, "tColor":I
    iget-object v2, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v8, 0x41680000    # 14.5f

    .line 79
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->needDivider:Z

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Cells/TextColorCell;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 82
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->currentColor:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->colorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 84
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextColorCell;->colorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    .line 85
    .local v7, "y":I
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-nez v0, :cond_2

    .line 86
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextColorCell;->colorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v6, v0, v1

    .line 90
    .local v6, "x":I
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->colorDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lorg/telegram/ui/Cells/TextColorCell;->colorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    add-int/2addr v1, v6

    iget-object v2, p0, Lorg/telegram/ui/Cells/TextColorCell;->colorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int/2addr v2, v7

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->colorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 95
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Cells/TextColorCell;->updateColors()V

    .line 96
    return-void

    .line 88
    .restart local v7    # "y":I
    :cond_2
    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v6

    .restart local v6    # "x":I
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 65
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->needDivider:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTextAndColor(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "divider"    # Z

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iput-boolean p3, p0, Lorg/telegram/ui/Cells/TextColorCell;->needDivider:Z

    .line 71
    iput p2, p0, Lorg/telegram/ui/Cells/TextColorCell;->currentColor:I

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->colorDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p2, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 73
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->needDivider:Z

    if-nez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Cells/TextColorCell;->currentColor:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/TextColorCell;->setWillNotDraw(Z)V

    .line 74
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/TextColorCell;->invalidate()V

    .line 75
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
