.class public Lorg/telegram/ui/Components/ContextProgressView;
.super Landroid/view/View;
.source "ContextProgressView.java"


# instance fields
.field private cicleRect:Landroid/graphics/RectF;

.field private innerPaint:Landroid/graphics/Paint;

.field private lastUpdateTime:J

.field private outerPaint:Landroid/graphics/Paint;

.field private radOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/high16 v2, 0x40000000    # 2.0f

    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->cicleRect:Landroid/graphics/RectF;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->radOffset:I

    .line 29
    iget-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    const v1, -0x40200a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    iget-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 31
    iget-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 32
    iget-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    const v1, -0xd4691e

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    iget-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 35
    iget-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->lastUpdateTime:J

    .line 49
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ContextProgressView;->invalidate()V

    .line 50
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x41900000    # 18.0f

    const/high16 v5, 0x41100000    # 9.0f

    .line 54
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ContextProgressView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 57
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 58
    .local v8, "newTime":J
    iget-wide v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->lastUpdateTime:J

    sub-long v6, v8, v0

    .line 59
    .local v6, "dt":J
    iput-wide v8, p0, Lorg/telegram/ui/Components/ContextProgressView;->lastUpdateTime:J

    .line 60
    iget v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->radOffset:I

    int-to-float v0, v0

    const-wide/16 v2, 0x168

    mul-long/2addr v2, v6

    long-to-float v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->radOffset:I

    .line 62
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ContextProgressView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v10, v0, v1

    .line 63
    .local v10, "x":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ContextProgressView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int v11, v0, v1

    .line 64
    .local v11, "y":I
    iget-object v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->cicleRect:Landroid/graphics/RectF;

    int-to-float v1, v10

    int-to-float v2, v11

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    add-int/2addr v3, v10

    int-to-float v3, v3

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v4, v11

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 65
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ContextProgressView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ContextProgressView;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/ContextProgressView;->innerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 66
    iget-object v1, p0, Lorg/telegram/ui/Components/ContextProgressView;->cicleRect:Landroid/graphics/RectF;

    iget v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->radOffset:I

    add-int/lit8 v0, v0, -0x5a

    int-to-float v2, v0

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/ContextProgressView;->outerPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 67
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ContextProgressView;->invalidate()V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ContextProgressView;->lastUpdateTime:J

    .line 42
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ContextProgressView;->invalidate()V

    .line 43
    return-void
.end method
