.class public Lorg/telegram/ui/Components/RecordStatusDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "RecordStatusDrawable.java"


# instance fields
.field private isChat:Z

.field private lastUpdateTime:J

.field private paint:Landroid/graphics/Paint;

.field private progress:F

.field private rect:Landroid/graphics/RectF;

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    iput-boolean v6, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->isChat:Z

    .line 27
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->paint:Landroid/graphics/Paint;

    .line 28
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->lastUpdateTime:J

    .line 29
    iput-boolean v6, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->started:Z

    .line 30
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->rect:Landroid/graphics/RectF;

    .line 36
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "ApoTheme"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 37
    .local v1, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "theme_chat_action_tcolor"

    invoke-static {v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getActionBarTitleColor(Landroid/content/SharedPreferences;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 38
    .local v2, "titleColor":I
    const-string/jumbo v3, "theme_chat_action_stcolor"

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->adjustAlpha(IF)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, "subTitleColor":I
    iget-object v3, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object v3, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 42
    iget-object v3, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    iget-object v3, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->paint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 44
    return-void
.end method

.method private update()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 52
    .local v2, "newTime":J
    iget-wide v4, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->lastUpdateTime:J

    sub-long v0, v2, v4

    .line 53
    .local v0, "dt":J
    iput-wide v2, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->lastUpdateTime:J

    .line 54
    const-wide/16 v4, 0x32

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 55
    const-wide/16 v0, 0x32

    .line 57
    :cond_0
    iget v4, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    long-to-float v5, v0

    const/high16 v6, 0x43960000    # 300.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    .line 58
    :goto_0
    iget v4, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    .line 59
    iget v4, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    sub-float/2addr v4, v7

    iput v4, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecordStatusDrawable;->invalidateSelf()V

    .line 62
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x437f0000    # 255.0f

    const/high16 v9, 0x40800000    # 4.0f

    const/high16 v8, 0x3f800000    # 1.0f

    .line 76
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 77
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecordStatusDrawable;->getIntrinsicHeight()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->isChat:Z

    if-eqz v0, :cond_0

    move v0, v8

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    add-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 78
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_1
    const/4 v0, 0x4

    if-ge v6, v0, :cond_3

    .line 79
    if-nez v6, :cond_1

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    mul-float/2addr v1, v10

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 86
    :goto_2
    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    mul-int/2addr v0, v6

    int-to-float v0, v0

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    mul-float/2addr v1, v2

    add-float v7, v0, v1

    .line 87
    .local v7, "side":F
    iget-object v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->rect:Landroid/graphics/RectF;

    neg-float v1, v7

    neg-float v2, v7

    invoke-virtual {v0, v1, v2, v7, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 88
    iget-object v1, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->rect:Landroid/graphics/RectF;

    const/high16 v2, -0x3e900000    # -15.0f

    const/high16 v3, 0x41f00000    # 30.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 78
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 77
    .end local v6    # "a":I
    .end local v7    # "side":F
    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 81
    .restart local v6    # "a":I
    :cond_1
    const/4 v0, 0x3

    if-ne v6, v0, :cond_2

    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->progress:F

    sub-float v1, v8, v1

    mul-float/2addr v1, v10

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 84
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 91
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->started:Z

    if-eqz v0, :cond_4

    .line 92
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecordStatusDrawable;->update()V

    .line 94
    :cond_4
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 118
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 113
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 99
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 104
    return-void
.end method

.method public setIsChat(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->isChat:Z

    .line 48
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->lastUpdateTime:J

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->started:Z

    .line 67
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecordStatusDrawable;->invalidateSelf()V

    .line 68
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/RecordStatusDrawable;->started:Z

    .line 72
    return-void
.end method
