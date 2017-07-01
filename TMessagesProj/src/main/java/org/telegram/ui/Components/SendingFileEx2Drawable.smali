.class public Lorg/telegram/ui/Components/SendingFileEx2Drawable;
.super Landroid/graphics/drawable/Drawable;
.source "SendingFileEx2Drawable.java"


# instance fields
.field private isChat:Z

.field private lastUpdateTime:J

.field private paint:Landroid/graphics/Paint;

.field private progress:F

.field private started:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 21
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->isChat:Z

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->paint:Landroid/graphics/Paint;

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->lastUpdateTime:J

    .line 24
    iput-boolean v2, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->started:Z

    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->paint:Landroid/graphics/Paint;

    const v1, -0x2a1709

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v0, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object v0, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 33
    return-void
.end method

.method private update()V
    .locals 8

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 41
    .local v2, "newTime":J
    iget-wide v4, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->lastUpdateTime:J

    sub-long v0, v2, v4

    .line 42
    .local v0, "dt":J
    iput-wide v2, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->lastUpdateTime:J

    .line 43
    const-wide/16 v4, 0x32

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 44
    const-wide/16 v0, 0x32

    .line 46
    :cond_0
    iget v4, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->progress:F

    long-to-float v5, v0

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->progress:F

    .line 47
    :goto_0
    iget v4, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->progress:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    .line 48
    iget v4, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->progress:F

    sub-float/2addr v4, v7

    iput v4, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->progress:F

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->invalidateSelf()V

    .line 51
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x41400000    # 12.0f

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v4, 0x41300000    # 11.0f

    .line 65
    iget v0, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->progress:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_0
    float-to-int v7, v0

    .line 66
    .local v7, "start":I
    iget v0, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->progress:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    :goto_1
    float-to-int v6, v0

    .line 67
    .local v6, "end":I
    int-to-float v1, v7

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->isChat:Z

    if-eqz v0, :cond_3

    move v0, v4

    :goto_2
    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v2, v0

    int-to-float v3, v6

    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->isChat:Z

    if-eqz v0, :cond_4

    :goto_3
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 69
    iget-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->started:Z

    if-eqz v0, :cond_0

    .line 70
    invoke-direct {p0}, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->update()V

    .line 72
    :cond_0
    return-void

    .line 65
    .end local v6    # "end":I
    .end local v7    # "start":I
    :cond_1
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->progress:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, v3

    goto :goto_0

    .line 66
    .restart local v7    # "start":I
    :cond_2
    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->progress:F

    mul-float/2addr v0, v1

    mul-float/2addr v0, v3

    goto :goto_1

    .restart local v6    # "end":I
    :cond_3
    move v0, v5

    .line 67
    goto :goto_2

    :cond_4
    move v4, v5

    goto :goto_3
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 96
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 91
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 77
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 82
    return-void
.end method

.method public setIsChat(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 36
    iput-boolean p1, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->isChat:Z

    .line 37
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->lastUpdateTime:J

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->started:Z

    .line 56
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->invalidateSelf()V

    .line 57
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/SendingFileEx2Drawable;->started:Z

    .line 61
    return-void
.end method
