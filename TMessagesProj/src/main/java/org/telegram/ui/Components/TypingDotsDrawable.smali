.class public Lorg/telegram/ui/Components/TypingDotsDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "TypingDotsDrawable.java"


# instance fields
.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private elapsedTimes:[F

.field private isChat:Z

.field private lastUpdateTime:J

.field private paint:Landroid/graphics/Paint;

.field private scales:[F

.field private startTimes:[F

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v5, 0x3

    const/4 v6, 0x0

    .line 36
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    iput-boolean v6, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->isChat:Z

    .line 27
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->paint:Landroid/graphics/Paint;

    .line 28
    new-array v3, v5, [F

    iput-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    .line 29
    new-array v3, v5, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    .line 30
    new-array v3, v5, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    .line 31
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->lastUpdateTime:J

    .line 32
    iput-boolean v6, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->started:Z

    .line 33
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 39
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v4, "ApoTheme"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 40
    .local v1, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "theme_chat_action_tcolor"

    invoke-static {v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getActionBarTitleColor(Landroid/content/SharedPreferences;)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 41
    .local v2, "titleColor":I
    const-string/jumbo v3, "theme_chat_action_stcolor"

    const v4, 0x3f4ccccd    # 0.8f

    invoke-static {v2, v4}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->adjustAlpha(IF)I

    move-result v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 42
    .local v0, "subTitleColor":I
    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    return-void

    .line 29
    :array_0
    .array-data 4
        0x0
        0x43160000    # 150.0f
        0x43960000    # 300.0f
    .end array-data

    .line 30
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/TypingDotsDrawable;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/TypingDotsDrawable;

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->checkUpdate()V

    return-void
.end method

.method private checkUpdate()V
    .locals 4

    .prologue
    .line 114
    iget-boolean v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->started:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/NotificationCenter;->isAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    invoke-direct {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->update()V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/TypingDotsDrawable$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/TypingDotsDrawable$1;-><init>(Lorg/telegram/ui/Components/TypingDotsDrawable;)V

    const-wide/16 v2, 0x64

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method private update()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x43a00000    # 320.0f

    const v10, 0x3faa3d71    # 1.33f

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 51
    .local v4, "newTime":J
    iget-wide v8, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->lastUpdateTime:J

    sub-long v2, v4, v8

    .line 52
    .local v2, "dt":J
    iput-wide v4, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->lastUpdateTime:J

    .line 53
    const-wide/16 v8, 0x32

    cmp-long v7, v2, v8

    if-lez v7, :cond_0

    .line 54
    const-wide/16 v2, 0x32

    .line 57
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v7, 0x3

    if-ge v0, v7, :cond_5

    .line 58
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    aget v8, v7, v0

    long-to-float v9, v2

    add-float/2addr v8, v9

    aput v8, v7, v0

    .line 59
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    aget v7, v7, v0

    iget-object v8, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    aget v8, v8, v0

    sub-float v6, v7, v8

    .line 60
    .local v6, "timeSinceStart":F
    cmpl-float v7, v6, v12

    if-lez v7, :cond_4

    .line 61
    cmpg-float v7, v6, v11

    if-gtz v7, :cond_1

    .line 62
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    div-float v8, v6, v11

    invoke-virtual {v7, v8}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    .line 63
    .local v1, "diff":F
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    add-float v8, v10, v1

    aput v8, v7, v0

    .line 57
    .end local v1    # "diff":F
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const/high16 v7, 0x44200000    # 640.0f

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_2

    .line 65
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    sub-float v8, v6, v11

    div-float/2addr v8, v11

    invoke-virtual {v7, v8}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v1

    .line 66
    .restart local v1    # "diff":F
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v1

    add-float/2addr v8, v10

    aput v8, v7, v0

    goto :goto_1

    .line 67
    .end local v1    # "diff":F
    :cond_2
    const/high16 v7, 0x44480000    # 800.0f

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_3

    .line 68
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    aput v12, v7, v0

    .line 69
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    aput v12, v7, v0

    .line 70
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    aput v10, v7, v0

    goto :goto_1

    .line 72
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    aput v10, v7, v0

    goto :goto_1

    .line 75
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    aput v10, v7, v0

    goto :goto_1

    .line 79
    .end local v6    # "timeSinceStart":F
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->invalidateSelf()V

    .line 80
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 102
    iget-boolean v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->isChat:Z

    if-eqz v1, :cond_0

    .line 103
    const/high16 v1, 0x41080000    # 8.5f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v0, v1, v2

    .line 107
    .local v0, "y":I
    :goto_0
    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 108
    const/high16 v1, 0x41100000    # 9.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 109
    const/high16 v1, 0x41700000    # 15.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, v0

    iget-object v3, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    sget v4, Lorg/telegram/messenger/AndroidUtilities;->density:F

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 110
    invoke-direct {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->checkUpdate()V

    .line 111
    return-void

    .line 105
    .end local v0    # "y":I
    :cond_0
    const v1, 0x4114cccd    # 9.3f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int v0, v1, v2

    .restart local v0    # "y":I
    goto :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 150
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 145
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 131
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 136
    return-void
.end method

.method public setIsChat(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->isChat:Z

    .line 47
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->lastUpdateTime:J

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->started:Z

    .line 85
    invoke-virtual {p0}, Lorg/telegram/ui/Components/TypingDotsDrawable;->invalidateSelf()V

    .line 86
    return-void
.end method

.method public stop()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 89
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->elapsedTimes:[F

    aput v3, v1, v0

    .line 91
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->scales:[F

    const v2, 0x3faa3d71    # 1.33f

    aput v2, v1, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    aput v3, v1, v4

    .line 94
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    const/4 v2, 0x1

    const/high16 v3, 0x43160000    # 150.0f

    aput v3, v1, v2

    .line 95
    iget-object v1, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->startTimes:[F

    const/4 v2, 0x2

    const/high16 v3, 0x43960000    # 300.0f

    aput v3, v1, v2

    .line 96
    iput-boolean v4, p0, Lorg/telegram/ui/Components/TypingDotsDrawable;->started:Z

    .line 97
    return-void
.end method
