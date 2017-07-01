.class Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;
.super Landroid/view/View;
.source "ChatActivityEnterView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordCircle"
.end annotation


# instance fields
.field private amplitude:F

.field private animateAmplitudeDiff:F

.field private animateToAmplitude:F

.field private lastUpdateTime:J

.field private micDrawable:Landroid/graphics/drawable/Drawable;

.field private paint:Landroid/graphics/Paint;

.field private paintRecord:Landroid/graphics/Paint;

.field private scale:F

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 466
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    .line 467
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 457
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->paint:Landroid/graphics/Paint;

    .line 458
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->paintRecord:Landroid/graphics/Paint;

    .line 468
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->paint:Landroid/graphics/Paint;

    const v1, -0xa86a34

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 469
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->paintRecord:Landroid/graphics/Paint;

    const/high16 v1, 0xd000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 470
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->micDrawable:Landroid/graphics/drawable/Drawable;

    .line 471
    return-void
.end method


# virtual methods
.method public getScale()F
    .locals 1

    .prologue
    .line 481
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x3e800000    # 0.25f

    const v9, 0x3dcccccd    # 0.1f

    const/4 v10, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v11, 0x40000000    # 2.0f

    .line 491
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v1, v6, 0x2

    .line 492
    .local v1, "cx":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    .line 495
    .local v2, "cy":I
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    cmpg-float v6, v6, v8

    if-gtz v6, :cond_3

    .line 496
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    div-float v3, v6, v8

    .local v3, "sc":F
    move v0, v3

    .line 504
    .local v0, "alpha":F
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastUpdateTime:J

    sub-long v4, v6, v8

    .line 505
    .local v4, "dt":J
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    .line 506
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateAmplitudeDiff:F

    long-to-float v8, v4

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    .line 507
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateAmplitudeDiff:F

    cmpl-float v6, v6, v10

    if-lez v6, :cond_5

    .line 508
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    cmpl-float v6, v6, v7

    if-lez v6, :cond_0

    .line 509
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    iput v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    .line 516
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    .line 518
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastUpdateTime:J

    .line 519
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    cmpl-float v6, v6, v10

    if-eqz v6, :cond_2

    .line 520
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    const/high16 v8, 0x42280000    # 42.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iget v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->paintRecord:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 522
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v11

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->getMeasuredHeight()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v11

    const/high16 v8, 0x42280000    # 42.0f

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v3

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 523
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->micDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->micDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    iget-object v8, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->micDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int v8, v2, v8

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->micDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->micDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v2

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 524
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->micDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v7, v0

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 525
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->micDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 526
    return-void

    .line 497
    .end local v0    # "alpha":F
    .end local v3    # "sc":F
    .end local v4    # "dt":J
    :cond_3
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    const/high16 v7, 0x3f400000    # 0.75f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_4

    .line 498
    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    sub-float/2addr v7, v8

    div-float/2addr v7, v12

    mul-float/2addr v7, v9

    sub-float v3, v6, v7

    .line 499
    .restart local v3    # "sc":F
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "alpha":F
    goto/16 :goto_0

    .line 501
    .end local v0    # "alpha":F
    .end local v3    # "sc":F
    :cond_4
    const v6, 0x3f666666    # 0.9f

    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    const/high16 v8, 0x3f400000    # 0.75f

    sub-float/2addr v7, v8

    div-float/2addr v7, v12

    mul-float/2addr v7, v9

    add-float v3, v6, v7

    .line 502
    .restart local v3    # "sc":F
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "alpha":F
    goto/16 :goto_0

    .line 512
    .restart local v4    # "dt":J
    :cond_5
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    iget v7, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 513
    iget v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    iput v6, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    goto/16 :goto_1
.end method

.method public setAmplitude(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 474
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    .line 475
    iget v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateToAmplitude:F

    iget v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->amplitude:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x43160000    # 150.0f

    div-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->animateAmplitudeDiff:F

    .line 476
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->lastUpdateTime:J

    .line 477
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    .line 478
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 485
    iput p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->scale:F

    .line 486
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$RecordCircle;->invalidate()V

    .line 487
    return-void
.end method
