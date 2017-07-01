.class public Lorg/telegram/ui/Components/SendingFileDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SendingFileDrawable.java"


# static fields
.field private static decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;


# instance fields
.field private animatedProgressValue:F

.field private animationProgressStart:F

.field private cicleRect:Landroid/graphics/RectF;

.field private currentProgress:F

.field private currentProgressTime:J

.field private isChat:Z

.field private lastUpdateTime:J

.field private paint:Landroid/graphics/Paint;

.field private radOffset:F

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/Components/SendingFileDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 23
    iput v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->radOffset:F

    .line 24
    iput v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentProgress:F

    .line 25
    iput v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->animationProgressStart:F

    .line 26
    iput-wide v4, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentProgressTime:J

    .line 27
    iput v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->animatedProgressValue:F

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->cicleRect:Landroid/graphics/RectF;

    .line 29
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->paint:Landroid/graphics/Paint;

    .line 31
    iput-wide v4, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->lastUpdateTime:J

    .line 32
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->started:Z

    .line 37
    iget-object v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->paint:Landroid/graphics/Paint;

    const v1, -0x2a1709

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 38
    iget-object v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 40
    iget-object v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 41
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/SendingFileDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 42
    return-void
.end method

.method private update()V
    .locals 10

    .prologue
    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 63
    .local v2, "newTime":J
    iget-wide v6, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->lastUpdateTime:J

    sub-long v0, v2, v6

    .line 64
    .local v0, "dt":J
    iput-wide v2, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->lastUpdateTime:J

    .line 66
    iget v5, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->animatedProgressValue:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    .line 67
    iget v5, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->radOffset:F

    const-wide/16 v6, 0x168

    mul-long/2addr v6, v0

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->radOffset:F

    .line 68
    iget v5, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentProgress:F

    iget v6, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->animationProgressStart:F

    sub-float v4, v5, v6

    .line 69
    .local v4, "progressDiff":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_0

    .line 70
    iget-wide v6, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentProgressTime:J

    add-long/2addr v6, v0

    iput-wide v6, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentProgressTime:J

    .line 71
    iget-wide v6, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentProgressTime:J

    const-wide/16 v8, 0x12c

    cmp-long v5, v6, v8

    if-ltz v5, :cond_2

    .line 72
    iget v5, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentProgress:F

    iput v5, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->animatedProgressValue:F

    .line 73
    iget v5, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentProgress:F

    iput v5, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->animationProgressStart:F

    .line 74
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentProgressTime:J

    .line 79
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SendingFileDrawable;->invalidateSelf()V

    .line 81
    .end local v4    # "progressDiff":F
    :cond_1
    return-void

    .line 76
    .restart local v4    # "progressDiff":F
    :cond_2
    iget v5, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->animationProgressStart:F

    sget-object v6, Lorg/telegram/ui/Components/SendingFileDrawable;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    iget-wide v8, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentProgressTime:J

    long-to-float v7, v8

    const/high16 v8, 0x43960000    # 300.0f

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iput v5, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->animatedProgressValue:F

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 95
    iget-object v1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->cicleRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x40400000    # 3.0f

    :goto_0
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v3, v0

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x41300000    # 11.0f

    :goto_1
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 96
    iget-object v1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->cicleRect:Landroid/graphics/RectF;

    const/high16 v0, -0x3d4c0000    # -90.0f

    iget v2, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->radOffset:F

    add-float/2addr v2, v0

    const/high16 v0, 0x42700000    # 60.0f

    const/high16 v3, 0x43b40000    # 360.0f

    iget v4, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->animatedProgressValue:F

    mul-float/2addr v3, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 98
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->started:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0}, Lorg/telegram/ui/Components/SendingFileDrawable;->update()V

    .line 101
    :cond_0
    return-void

    .line 95
    :cond_1
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_0

    :cond_2
    const/high16 v0, 0x41400000    # 12.0f

    goto :goto_1
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 125
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 120
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 106
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 111
    return-void
.end method

.method public setIsChat(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->isChat:Z

    .line 46
    return-void
.end method

.method public setProgress(FZ)V
    .locals 2
    .param p1, "value"    # F
    .param p2, "animated"    # Z

    .prologue
    .line 49
    if-nez p2, :cond_0

    .line 50
    iput p1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->animatedProgressValue:F

    .line 51
    iput p1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->animationProgressStart:F

    .line 55
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentProgress:F

    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->currentProgressTime:J

    .line 58
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SendingFileDrawable;->invalidateSelf()V

    .line 59
    return-void

    .line 53
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->animatedProgressValue:F

    iput v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->animationProgressStart:F

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->lastUpdateTime:J

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->started:Z

    .line 86
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SendingFileDrawable;->invalidateSelf()V

    .line 87
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileDrawable;->started:Z

    .line 91
    return-void
.end method
