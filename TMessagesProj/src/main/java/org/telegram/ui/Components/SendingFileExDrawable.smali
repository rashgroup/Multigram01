.class public Lorg/telegram/ui/Components/SendingFileExDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SendingFileExDrawable.java"


# instance fields
.field private isChat:Z

.field private lastUpdateTime:J

.field private paint:Landroid/graphics/Paint;

.field private progress:F

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 32
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    iput-boolean v6, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->isChat:Z

    .line 26
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->paint:Landroid/graphics/Paint;

    .line 27
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->lastUpdateTime:J

    .line 28
    iput-boolean v6, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->started:Z

    .line 34
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "ApoTheme"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 35
    .local v1, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "theme_chat_action_tcolor"

    invoke-static {v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getActionBarTitleColor(Landroid/content/SharedPreferences;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 36
    .local v2, "titleColor":I
    const-string/jumbo v3, "theme_chat_action_stcolor"

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->adjustAlpha(IF)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, "subTitleColor":I
    iget-object v3, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    iget-object v3, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    iget-object v3, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    iget-object v3, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 42
    return-void
.end method

.method private update()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 50
    .local v2, "newTime":J
    iget-wide v4, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->lastUpdateTime:J

    sub-long v0, v2, v4

    .line 51
    .local v0, "dt":J
    iput-wide v2, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->lastUpdateTime:J

    .line 52
    const-wide/16 v4, 0x32

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 53
    const-wide/16 v0, 0x32

    .line 55
    :cond_0
    iget v4, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->progress:F

    long-to-float v5, v0

    const/high16 v6, 0x43fa0000    # 500.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->progress:F

    .line 56
    :goto_0
    iget v4, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->progress:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    .line 57
    iget v4, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->progress:F

    sub-float/2addr v4, v7

    iput v4, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->progress:F

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SendingFileExDrawable;->invalidateSelf()V

    .line 60
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v11, 0x437f0000    # 255.0f

    const/high16 v9, 0x41000000    # 8.0f

    const/high16 v8, 0x40e00000    # 7.0f

    const/high16 v10, 0x40a00000    # 5.0f

    const/high16 v7, 0x40800000    # 4.0f

    .line 75
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_0
    const/4 v0, 0x3

    if-ge v6, v0, :cond_6

    .line 76
    if-nez v6, :cond_0

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->paint:Landroid/graphics/Paint;

    iget v2, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->progress:F

    mul-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 83
    :goto_1
    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    mul-int/2addr v0, v6

    int-to-float v0, v0

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->progress:F

    mul-float/2addr v2, v3

    add-float v1, v0, v2

    .line 84
    .local v1, "side":F
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->isChat:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x40400000    # 3.0f

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->isChat:Z

    if-eqz v0, :cond_3

    move v0, v8

    :goto_3
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 85
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->isChat:Z

    if-eqz v0, :cond_4

    const/high16 v0, 0x41300000    # 11.0f

    :goto_4
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    add-float v3, v1, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->isChat:Z

    if-eqz v0, :cond_5

    move v0, v8

    :goto_5
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 75
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "side":F
    :cond_0
    const/4 v0, 0x2

    if-ne v6, v0, :cond_1

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->progress:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v11

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 81
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .restart local v1    # "side":F
    :cond_2
    move v0, v7

    .line 84
    goto :goto_2

    :cond_3
    move v0, v9

    goto :goto_3

    .line 85
    :cond_4
    const/high16 v0, 0x41400000    # 12.0f

    goto :goto_4

    :cond_5
    move v0, v9

    goto :goto_5

    .line 88
    .end local v1    # "side":F
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->started:Z

    if-eqz v0, :cond_7

    .line 89
    invoke-direct {p0}, Lorg/telegram/ui/Components/SendingFileExDrawable;->update()V

    .line 91
    :cond_7
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 115
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 110
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 96
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 101
    return-void
.end method

.method public setIsChat(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->isChat:Z

    .line 46
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->lastUpdateTime:J

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->started:Z

    .line 65
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SendingFileExDrawable;->invalidateSelf()V

    .line 66
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileExDrawable;->started:Z

    .line 70
    return-void
.end method
