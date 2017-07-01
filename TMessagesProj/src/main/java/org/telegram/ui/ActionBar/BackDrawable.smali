.class public Lorg/telegram/ui/ActionBar/BackDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BackDrawable.java"


# instance fields
.field private alwaysClose:Z

.field private animationInProgress:Z

.field private currentAnimationTime:I

.field private currentRotation:F

.field private finalRotation:F

.field private interpolator:Landroid/view/animation/DecelerateInterpolator;

.field private lastFrameTime:J

.field private paint:Landroid/graphics/Paint;

.field prefName:Ljava/lang/String;

.field private reverseAngle:Z

.field themePreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Z)V
    .locals 3
    .param p1, "close"    # Z

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    .line 27
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    .line 34
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 41
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->alwaysClose:Z

    .line 44
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "ApoTheme"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->themePreferences:Landroid/content/SharedPreferences;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->prefName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3
    .param p1, "close"    # Z
    .param p2, "_prefName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    .line 27
    iput-boolean v2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    .line 34
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 50
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iput-boolean p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->alwaysClose:Z

    .line 53
    sget-object v0, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v1, "ApoTheme"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->themePreferences:Landroid/content/SharedPreferences;

    .line 54
    iput-object p2, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->prefName:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 82
    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    const-wide/16 v16, 0x0

    cmp-long v2, v6, v16

    if-eqz v2, :cond_0

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    move-wide/from16 v16, v0

    sub-long v10, v6, v16

    .line 85
    .local v10, "dt":J
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    int-to-long v6, v2

    add-long/2addr v6, v10

    long-to-int v2, v6

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    .line 86
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    const/16 v4, 0x12c

    if-lt v2, v4, :cond_3

    .line 87
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    .line 96
    .end local v10    # "dt":J
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    .line 97
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->invalidateSelf()V

    .line 100
    :cond_1
    const/high16 v2, -0x3cf60000    # -138.0f

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    mul-float/2addr v2, v4

    float-to-int v12, v2

    .line 101
    .local v12, "rD":I
    add-int/lit16 v2, v12, 0xff

    add-int/lit16 v4, v12, 0xff

    add-int/lit16 v6, v12, 0xff

    invoke-static {v2, v4, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v8

    .line 102
    .local v8, "c":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_5

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->themePreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "theme_chat_action_amicolor"

    const v7, -0x8d8d8e

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    :cond_2
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 116
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 117
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    .line 118
    .local v13, "rotation":F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->alwaysClose:Z

    if-nez v2, :cond_8

    .line 119
    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    if-eqz v2, :cond_7

    const/16 v2, -0xe1

    :goto_2
    int-to-float v2, v2

    mul-float/2addr v2, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 124
    :goto_3
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v13

    sub-float v3, v2, v4

    const/4 v4, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v5, v2

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 125
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v14, v2

    .line 126
    .local v14, "startYDiff":F
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v13

    add-float v9, v2, v4

    .line 127
    .local v9, "endYDiff":F
    const/high16 v2, 0x40e00000    # 7.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    const/high16 v4, 0x40e00000    # 7.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v13

    add-float v3, v2, v4

    .line 128
    .local v3, "startXDiff":F
    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v13

    sub-float v5, v2, v4

    .line 129
    .local v5, "endXDiff":F
    neg-float v4, v14

    neg-float v6, v9

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 130
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move v4, v14

    move v6, v9

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 132
    return-void

    .line 89
    .end local v3    # "startXDiff":F
    .end local v5    # "endXDiff":F
    .end local v8    # "c":I
    .end local v9    # "endYDiff":F
    .end local v12    # "rD":I
    .end local v13    # "rotation":F
    .end local v14    # "startYDiff":F
    .restart local v10    # "dt":J
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    int-to-float v4, v4

    const/high16 v6, 0x43960000    # 300.0f

    div-float/2addr v4, v6

    invoke-virtual {v2, v4}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    mul-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    goto/16 :goto_0

    .line 92
    :cond_4
    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->interpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    int-to-float v6, v6

    const/high16 v7, 0x43960000    # 300.0f

    div-float/2addr v6, v7

    invoke-virtual {v4, v6}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    goto/16 :goto_0

    .line 108
    .end local v10    # "dt":J
    .restart local v8    # "c":I
    .restart local v12    # "rD":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->prefName:Ljava/lang/String;

    const-string/jumbo v4, "theme_chat_action_icolor"

    if-ne v2, v4, :cond_6

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->themePreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "theme_chat_action_icolor"

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->themePreferences:Landroid/content/SharedPreferences;

    invoke-static {v7}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getActionBarIconColor(Landroid/content/SharedPreferences;)I

    move-result v7

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 110
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->prefName:Ljava/lang/String;

    const-string/jumbo v4, "theme_profile_action_icolor"

    if-ne v2, v4, :cond_2

    .line 111
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->paint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->themePreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "theme_profile_action_icolor"

    const/4 v7, -0x1

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 119
    .restart local v13    # "rotation":F
    :cond_7
    const/16 v2, 0x87

    goto/16 :goto_2

    .line 121
    :cond_8
    const/high16 v4, 0x43070000    # 135.0f

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    if-eqz v2, :cond_9

    const/16 v2, -0xb4

    :goto_4
    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v2, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 122
    const/high16 v13, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 121
    :cond_9
    const/16 v2, 0xb4

    goto :goto_4
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 156
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 151
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, -0x2

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 137
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 142
    return-void
.end method

.method public setRotation(FZ)V
    .locals 6
    .param p1, "rotation"    # F
    .param p2, "animated"    # Z

    .prologue
    const-wide/16 v4, 0x0

    const/high16 v3, 0x43960000    # 300.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 58
    iput-wide v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    .line 59
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    .line 64
    :cond_0
    :goto_0
    iput-wide v4, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    .line 65
    if-eqz p2, :cond_3

    .line 66
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_2

    .line 67
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    .line 71
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->lastFrameTime:J

    .line 72
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    .line 76
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/ActionBar/BackDrawable;->invalidateSelf()V

    .line 77
    return-void

    .line 61
    :cond_1
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->reverseAngle:Z

    goto :goto_0

    .line 69
    :cond_2
    iget v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    sub-float v0, v2, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentAnimationTime:I

    goto :goto_1

    .line 74
    :cond_3
    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->currentRotation:F

    iput p1, p0, Lorg/telegram/ui/ActionBar/BackDrawable;->finalRotation:F

    goto :goto_2
.end method
