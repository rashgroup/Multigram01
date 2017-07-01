.class public Lorg/telegram/messenger/ImageReceiver;
.super Ljava/lang/Object;
.source "ImageReceiver.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/ImageReceiver$1;,
        Lorg/telegram/messenger/ImageReceiver$SetImageBackup;,
        Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;
    }
.end annotation


# static fields
.field private static roundPaint:Landroid/graphics/Paint;

.field private static selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;


# instance fields
.field private allowStartAnimation:Z

.field private bitmapRect:Landroid/graphics/RectF;

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private bitmapShaderThumb:Landroid/graphics/BitmapShader;

.field private canceledLoading:Z

.field private centerRotation:Z

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private crossfadeAlpha:B

.field private crossfadeWithThumb:Z

.field private currentAlpha:F

.field private currentCacheOnly:Z

.field private currentExt:Ljava/lang/String;

.field private currentFilter:Ljava/lang/String;

.field private currentHttpUrl:Ljava/lang/String;

.field private currentImage:Landroid/graphics/drawable/Drawable;

.field private currentImageLocation:Lorg/telegram/tgnet/TLObject;

.field private currentKey:Ljava/lang/String;

.field private currentSize:I

.field private currentThumb:Landroid/graphics/drawable/Drawable;

.field private currentThumbFilter:Ljava/lang/String;

.field private currentThumbKey:Ljava/lang/String;

.field private currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

.field private delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

.field private drawRegion:Landroid/graphics/Rect;

.field private forcePreview:Z

.field private imageH:I

.field private imageW:I

.field private imageX:I

.field private imageY:I

.field private invalidateAll:Z

.field private isAspectFit:Z

.field private isPressed:Z

.field private isVisible:Z

.field private lastUpdateAlphaTime:J

.field private needsQualityThumb:Z

.field private orientation:I

.field private overrideAlpha:F

.field private parentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private parentView:Landroid/view/View;

.field private roundRadius:I

.field private roundRect:Landroid/graphics/RectF;

.field private setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

.field private shaderMatrix:Landroid/graphics/Matrix;

.field private shouldGenerateQualityThumb:Z

.field private staticThumb:Landroid/graphics/drawable/Drawable;

.field private tag:Ljava/lang/Integer;

.field private thumbTag:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    const v1, -0x222223

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    sput-object v0, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/ImageReceiver;-><init>(Landroid/view/View;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    .line 78
    iput-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    .line 85
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    .line 86
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    .line 87
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    .line 88
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    .line 95
    iput-byte v1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    .line 104
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    .line 105
    sget-object v0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    .line 108
    :cond_0
    return-void
.end method

.method private checkAlphaAnimation(Z)V
    .locals 10
    .param p1, "skip"    # Z

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 572
    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float v4, v4, v7

    if-eqz v4, :cond_2

    .line 573
    if-nez p1, :cond_1

    .line 574
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 575
    .local v0, "currentTime":J
    iget-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    sub-long v2, v0, v4

    .line 576
    .local v2, "dt":J
    const-wide/16 v4, 0x12

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 577
    const-wide/16 v2, 0x12

    .line 579
    :cond_0
    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    long-to-float v5, v2

    const/high16 v6, 0x43160000    # 150.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iput v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 580
    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float v4, v4, v7

    if-lez v4, :cond_1

    .line 581
    iput v7, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 584
    .end local v0    # "currentTime":J
    .end local v2    # "dt":J
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 585
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 586
    iget-boolean v4, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v4, :cond_3

    .line 587
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 593
    :cond_2
    :goto_0
    return-void

    .line 589
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method

.method private drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V
    .locals 27
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "alpha"    # I
    .param p4, "shader"    # Landroid/graphics/BitmapShader;

    .prologue
    .line 368
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_25

    move-object/from16 v12, p2

    .line 369
    check-cast v12, Landroid/graphics/drawable/BitmapDrawable;

    .line 372
    .local v12, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    if-eqz p4, :cond_4

    .line 373
    sget-object v21, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    .line 377
    .local v21, "paint":Landroid/graphics/Paint;
    :goto_0
    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v2

    if-eqz v2, :cond_5

    const/16 v19, 0x1

    .line 378
    .local v19, "hasFilter":Z
    :goto_1
    if-eqz v19, :cond_7

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->isPressed:Z

    if-nez v2, :cond_7

    .line 379
    if-eqz p4, :cond_6

    .line 380
    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 391
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    if-eqz v2, :cond_1

    .line 392
    if-eqz p4, :cond_9

    .line 393
    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 400
    :cond_1
    :goto_3
    instance-of v2, v12, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_b

    .line 401
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_a

    .line 402
    :cond_2
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v14

    .line 403
    .local v14, "bitmapW":I
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v13

    .line 417
    .local v13, "bitmapH":I
    :goto_4
    int-to-float v2, v14

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    int-to-float v3, v3

    div-float v24, v2, v3

    .line 418
    .local v24, "scaleW":F
    int-to-float v2, v13

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    int-to-float v3, v3

    div-float v23, v2, v3

    .line 420
    .local v23, "scaleH":F
    if-eqz p4, :cond_11

    .line 421
    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 422
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v22

    .line 423
    .local v22, "scale":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 425
    sub-float v2, v24, v23

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_f

    .line 426
    int-to-float v2, v14

    div-float v2, v2, v23

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_e

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    int-to-float v4, v14

    div-float v4, v4, v23

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    int-to-float v6, v14

    div-float v6, v6, v23

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 434
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v2, :cond_3

    .line 435
    sub-float v2, v24, v23

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_10

    .line 436
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    int-to-float v2, v2

    mul-float v2, v2, v22

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v25, v0

    .line 437
    .local v25, "w":I
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    int-to-float v2, v2

    mul-float v2, v2, v22

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    move/from16 v18, v0

    .line 438
    .local v18, "h":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    sub-int v3, v14, v25

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-int v4, v13, v18

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-int v5, v14, v25

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-int v6, v13, v18

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 444
    .end local v18    # "h":I
    .end local v25    # "w":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 445
    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    int-to-float v4, v4

    sget-object v5, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 569
    .end local v12    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v13    # "bitmapH":I
    .end local v14    # "bitmapW":I
    .end local v19    # "hasFilter":Z
    .end local v21    # "paint":Landroid/graphics/Paint;
    .end local v22    # "scale":F
    .end local v23    # "scaleH":F
    .end local v24    # "scaleW":F
    :cond_3
    :goto_7
    return-void

    .line 375
    .restart local v12    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v21

    .restart local v21    # "paint":Landroid/graphics/Paint;
    goto/16 :goto_0

    .line 377
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 382
    .restart local v19    # "hasFilter":Z
    :cond_6
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .line 384
    :cond_7
    if-nez v19, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->isPressed:Z

    if-eqz v2, :cond_0

    .line 385
    if-eqz p4, :cond_8

    .line 386
    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->roundPaint:Landroid/graphics/Paint;

    sget-object v3, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/16 :goto_2

    .line 388
    :cond_8
    sget-object v2, Lorg/telegram/messenger/ImageReceiver;->selectedColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_2

    .line 395
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_3

    .line 405
    :cond_a
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v14

    .line 406
    .restart local v14    # "bitmapW":I
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v13

    .restart local v13    # "bitmapH":I
    goto/16 :goto_4

    .line 409
    .end local v13    # "bitmapH":I
    .end local v14    # "bitmapW":I
    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_d

    .line 410
    :cond_c
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 411
    .restart local v14    # "bitmapW":I
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    .restart local v13    # "bitmapH":I
    goto/16 :goto_4

    .line 413
    .end local v13    # "bitmapH":I
    .end local v14    # "bitmapW":I
    :cond_d
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    .line 414
    .restart local v14    # "bitmapW":I
    invoke-virtual {v12}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    .restart local v13    # "bitmapH":I
    goto/16 :goto_4

    .line 429
    .restart local v22    # "scale":F
    .restart local v23    # "scaleH":F
    .restart local v24    # "scaleW":F
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    int-to-float v5, v13

    div-float v5, v5, v24

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    int-to-float v7, v13

    div-float v7, v7, v24

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    .line 432
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_5

    .line 441
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, v14

    int-to-float v6, v13

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->shaderMatrix:Landroid/graphics/Matrix;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->bitmapRect:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageReceiver;->roundRect:Landroid/graphics/RectF;

    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_6

    .line 449
    .end local v22    # "scale":F
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    if-eqz v2, :cond_14

    .line 450
    move/from16 v0, v24

    move/from16 v1, v23

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v22

    .line 451
    .restart local v22    # "scale":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 452
    int-to-float v2, v14

    div-float v2, v2, v22

    float-to-int v14, v2

    .line 453
    int-to-float v2, v13

    div-float v2, v2, v22

    float-to-int v13, v2

    .line 454
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    sub-int/2addr v4, v14

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    sub-int/2addr v5, v13

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v6, v14

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v7, v13

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 457
    :try_start_0
    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 458
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 459
    :catch_0
    move-exception v17

    .line 460
    .local v17, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-ne v12, v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 461
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 462
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 467
    :cond_12
    :goto_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 468
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 463
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-ne v12, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 464
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 465
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_9

    .line 472
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v22    # "scale":F
    :cond_14
    sub-float v2, v24, v23

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3727c5ac    # 1.0E-5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1d

    .line 473
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 474
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v5, v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 476
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    if-eqz v2, :cond_15

    .line 477
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    if-eqz v2, :cond_18

    .line 478
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 484
    :cond_15
    :goto_a
    int-to-float v2, v14

    div-float v2, v2, v23

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_19

    .line 485
    int-to-float v2, v14

    div-float v2, v2, v23

    float-to-int v14, v2

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    sub-int v4, v14, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v6, v14

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 491
    :goto_b
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_1a

    .line 492
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v26, v2, 0x2

    .line 493
    .local v26, "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v20, v2, 0x2

    .line 494
    .local v20, "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    div-int/lit8 v15, v2, 0x2

    .line 495
    .local v15, "centerX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    div-int/lit8 v16, v2, 0x2

    .line 496
    .local v16, "centerY":I
    sub-int v2, v15, v20

    sub-int v3, v16, v26

    add-int v4, v15, v20

    add-int v5, v16, v26

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 500
    .end local v15    # "centerX":I
    .end local v16    # "centerY":I
    .end local v20    # "height":I
    .end local v26    # "width":I
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v2, :cond_17

    .line 502
    :try_start_1
    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 503
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 517
    :cond_17
    :goto_d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 480
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_a

    .line 488
    :cond_19
    int-to-float v2, v13

    div-float v2, v2, v24

    float-to-int v13, v2

    .line 489
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    sub-int v5, v13, v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v7, v13

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_b

    .line 498
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_c

    .line 504
    :catch_1
    move-exception v17

    .line 505
    .restart local v17    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-ne v12, v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v2, :cond_1c

    .line 506
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 507
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 512
    :cond_1b
    :goto_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 513
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 508
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-ne v12, v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v2, :cond_1b

    .line 509
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 510
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_e

    .line 519
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 520
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    if-eqz v2, :cond_1e

    .line 521
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    if-eqz v2, :cond_21

    .line 522
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 527
    :cond_1e
    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 528
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_1f

    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v2, v2, 0x168

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_22

    .line 529
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v26, v2, 0x2

    .line 530
    .restart local v26    # "width":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    div-int/lit8 v20, v2, 0x2

    .line 531
    .restart local v20    # "height":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    div-int/lit8 v15, v2, 0x2

    .line 532
    .restart local v15    # "centerX":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    div-int/lit8 v16, v2, 0x2

    .line 533
    .restart local v16    # "centerY":I
    sub-int v2, v15, v20

    sub-int v3, v16, v26

    add-int v4, v15, v20

    add-int v5, v16, v26

    invoke-virtual {v12, v2, v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 537
    .end local v15    # "centerX":I
    .end local v16    # "centerY":I
    .end local v20    # "height":I
    .end local v26    # "width":I
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v2, :cond_20

    .line 539
    :try_start_2
    move/from16 v0, p3

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 540
    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 553
    :cond_20
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_7

    .line 524
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_f

    .line 535
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    invoke-virtual {v12, v2}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_10

    .line 541
    :catch_2
    move-exception v17

    .line 542
    .restart local v17    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-ne v12, v2, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v2, :cond_24

    .line 543
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 544
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 549
    :cond_23
    :goto_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v9, v0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v11}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 550
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    .line 545
    :cond_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-ne v12, v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v2, :cond_23

    .line 546
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/ImageLoader;->removeImage(Ljava/lang/String;)V

    .line 547
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    goto :goto_12

    .line 558
    .end local v12    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v13    # "bitmapH":I
    .end local v14    # "bitmapW":I
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v19    # "hasFilter":Z
    .end local v21    # "paint":Landroid/graphics/Paint;
    .end local v23    # "scaleH":F
    .end local v24    # "scaleW":F
    :cond_25
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 559
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 560
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-eqz v2, :cond_3

    .line 562
    :try_start_3
    invoke-virtual/range {p2 .. p3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 563
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_7

    .line 564
    :catch_3
    move-exception v17

    .line 565
    .restart local v17    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v17

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7
.end method

.method private recycleBitmap(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "newKey"    # Ljava/lang/String;
    .param p2, "thumb"    # Z

    .prologue
    const/4 v6, 0x0

    .line 993
    if-eqz p2, :cond_2

    .line 994
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 995
    .local v4, "key":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    .line 1000
    .local v3, "image":Landroid/graphics/drawable/Drawable;
    :goto_0
    if-eqz v4, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-eqz v3, :cond_1

    .line 1001
    instance-of v5, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v5, :cond_3

    move-object v2, v3

    .line 1002
    check-cast v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 1003
    .local v2, "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->recycle()V

    .line 1014
    .end local v2    # "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .end local v3    # "image":Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_1
    if-eqz p2, :cond_4

    .line 1015
    iput-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    .line 1016
    iput-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 1021
    :goto_2
    return-void

    .line 997
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 998
    .restart local v4    # "key":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    .restart local v3    # "image":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1004
    :cond_3
    instance-of v5, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_1

    .line 1005
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .end local v3    # "image":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1006
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/ImageLoader;->decrementUseCount(Ljava/lang/String;)Z

    move-result v1

    .line 1007
    .local v1, "canDelete":Z
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/telegram/messenger/ImageLoader;->isInCache(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1008
    if-eqz v1, :cond_1

    .line 1009
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_1

    .line 1018
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canDelete":Z
    :cond_4
    iput-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    .line 1019
    iput-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public cancelLoadImage()V
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->canceledLoading:Z

    .line 113
    return-void
.end method

.method public clearImage()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 331
    invoke-direct {p0, v1, v2}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    .line 332
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    .line 333
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    if-eqz v0, :cond_0

    .line 334
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageThumbGenerated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 335
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 337
    :cond_0
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 1025
    sget v3, Lorg/telegram/messenger/NotificationCenter;->messageThumbGenerated:I

    if-ne p1, v3, :cond_5

    .line 1026
    aget-object v0, p2, v4

    check-cast v0, Ljava/lang/String;

    .line 1027
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1028
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 1029
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 1031
    :cond_0
    aget-object v3, p2, v6

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    .line 1032
    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v3, :cond_3

    .line 1033
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1034
    .local v1, "object":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v3, v1, v4, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    .line 1038
    .end local v1    # "object":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 1039
    iput-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    .line 1041
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1042
    iget-boolean v3, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v3, :cond_4

    .line 1043
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    .line 1070
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 1036
    .restart local v0    # "key":Ljava/lang/String;
    :cond_3
    iput-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    goto :goto_0

    .line 1045
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v6, v7

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v7, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_1

    .line 1049
    .end local v0    # "key":Ljava/lang/String;
    :cond_5
    sget v3, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    if-ne p1, v3, :cond_2

    .line 1050
    aget-object v2, p2, v6

    check-cast v2, Ljava/lang/String;

    .line 1051
    .local v2, "oldKey":Ljava/lang/String;
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1052
    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 1053
    aget-object v3, p2, v5

    check-cast v3, Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    .line 1055
    :cond_6
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1056
    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 1057
    aget-object v3, p2, v5

    check-cast v3, Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1059
    :cond_7
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v3, :cond_2

    .line 1060
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1061
    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 1062
    aget-object v3, p2, v5

    check-cast v3, Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    .line 1064
    :cond_8
    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1065
    aget-object v3, p2, v4

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 1066
    aget-object v3, p2, v5

    check-cast v3, Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_1
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/high16 v9, 0x437f0000    # 255.0f

    .line 597
    const/4 v1, 0x0

    .line 598
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v5, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v6

    .line 599
    .local v0, "animationNotReady":Z
    :goto_0
    const/4 v3, 0x0

    .line 600
    .local v3, "isThumb":Z
    iget-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    .line 601
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    .line 609
    :cond_0
    :goto_1
    if-eqz v1, :cond_d

    .line 610
    iget-byte v5, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    if-eqz v5, :cond_a

    .line 611
    iget-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    if-eqz v5, :cond_4

    if-eqz v0, :cond_4

    .line 612
    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    iget-object v8, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    invoke-direct {p0, p1, v1, v5, v8}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    .line 637
    :goto_2
    if-eqz v0, :cond_c

    iget-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    if-eqz v5, :cond_c

    move v5, v6

    :goto_3
    invoke-direct {p0, v5}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(Z)V

    move v5, v6

    .line 649
    .end local v0    # "animationNotReady":Z
    .end local v3    # "isThumb":Z
    :goto_4
    return v5

    :cond_1
    move v0, v7

    .line 598
    goto :goto_0

    .line 602
    .restart local v0    # "animationNotReady":Z
    .restart local v3    # "isThumb":Z
    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_3

    .line 603
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    .line 604
    const/4 v3, 0x1

    goto :goto_1

    .line 605
    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 606
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    .line 607
    const/4 v3, 0x1

    goto :goto_1

    .line 614
    :cond_4
    iget-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    if-eqz v5, :cond_6

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_6

    .line 615
    const/4 v4, 0x0

    .line 616
    .local v4, "thumbDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-ne v1, v5, :cond_8

    .line 617
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    .line 618
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    .line 627
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 628
    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    mul-float/2addr v5, v9

    float-to-int v5, v5

    iget-object v8, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    invoke-direct {p0, p1, v4, v5, v8}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    .line 631
    .end local v4    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    mul-float/2addr v5, v8

    mul-float/2addr v5, v9

    float-to-int v8, v5

    if-eqz v3, :cond_9

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    :goto_6
    invoke-direct {p0, p1, v1, v8, v5}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 646
    .end local v0    # "animationNotReady":Z
    .end local v3    # "isThumb":Z
    :catch_0
    move-exception v2

    .line 647
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "tmessages"

    invoke-static {v5, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7
    move v5, v7

    .line 649
    goto :goto_4

    .line 619
    .restart local v0    # "animationNotReady":Z
    .restart local v3    # "isThumb":Z
    .restart local v4    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_7
    :try_start_1
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 620
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 622
    :cond_8
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-ne v1, v5, :cond_5

    .line 623
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 624
    iget-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 631
    .end local v4    # "thumbDrawable":Landroid/graphics/drawable/Drawable;
    :cond_9
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    goto :goto_6

    .line 634
    :cond_a
    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    mul-float/2addr v5, v9

    float-to-int v8, v5

    if-eqz v3, :cond_b

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    :goto_8
    invoke-direct {p0, p1, v1, v8, v5}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    goto :goto_2

    :cond_b
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    goto :goto_8

    :cond_c
    move v5, v7

    .line 637
    goto :goto_3

    .line 639
    :cond_d
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_e

    .line 640
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    const/16 v8, 0xff

    const/4 v9, 0x0

    invoke-direct {p0, p1, v5, v8, v9}, Lorg/telegram/messenger/ImageReceiver;->drawDrawable(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;ILandroid/graphics/BitmapShader;)V

    .line 641
    invoke-direct {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(Z)V

    move v5, v6

    .line 642
    goto/16 :goto_4

    .line 644
    :cond_e
    invoke-direct {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->checkAlphaAnimation(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7
.end method

.method public getAnimation()Lorg/telegram/ui/Components/AnimatedFileDrawable;
    .locals 1

    .prologue
    .line 882
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 653
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 664
    :goto_0
    return-object v0

    .line 655
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->getAnimatedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 657
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 658
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 659
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 660
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 661
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4

    .line 662
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 664
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmapHeight()I
    .locals 3

    .prologue
    const/16 v2, 0xb4

    .line 678
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_2

    .line 679
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 684
    :goto_0
    return v1

    .line 679
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    .line 680
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_5

    .line 681
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    .line 683
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 684
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_7

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method public getBitmapWidth()I
    .locals 3

    .prologue
    const/16 v2, 0xb4

    .line 668
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_2

    .line 669
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 674
    :goto_0
    return v1

    .line 669
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_0

    .line 670
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_5

    .line 671
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_3

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_0

    .line 673
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 674
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-eqz v1, :cond_6

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    rem-int/lit16 v1, v1, 0x168

    if-ne v1, v2, :cond_7

    :cond_6
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method public getCacheOnly()Z
    .locals 1

    .prologue
    .line 809
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    return v0
.end method

.method public getDrawRegion()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->drawRegion:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 765
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    return-object v0
.end method

.method public getFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpImageLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    .prologue
    .line 761
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    return v0
.end method

.method public getImageLocation()Lorg/telegram/tgnet/TLObject;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    return v0
.end method

.method public getImageX()I
    .locals 1

    .prologue
    .line 741
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    return v0
.end method

.method public getImageX2()I
    .locals 2

    .prologue
    .line 745
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getImageY()I
    .locals 1

    .prologue
    .line 749
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    return v0
.end method

.method public getImageY2()I
    .locals 2

    .prologue
    .line 753
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 286
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    return v0
.end method

.method public getParentMessageObject()Lorg/telegram/messenger/MessageObject;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getPressed()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:Z

    return v0
.end method

.method public getRoundRadius()I
    .locals 1

    .prologue
    .line 825
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 793
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    return v0
.end method

.method protected getTag(Z)Ljava/lang/Integer;
    .locals 1
    .param p1, "thumb"    # Z

    .prologue
    .line 886
    if-eqz p1, :cond_0

    .line 887
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->thumbTag:Ljava/lang/Integer;

    .line 889
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->tag:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public getThumbFilter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbLocation()Lorg/telegram/tgnet/TLRPC$FileLocation;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .prologue
    .line 702
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    return v0
.end method

.method public hasBitmapImage()Z
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllowStartAnimation()Z
    .locals 1

    .prologue
    .line 862
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    return v0
.end method

.method public isAnimationRunning()Z
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForcePreview()Z
    .locals 1

    .prologue
    .line 817
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    return v0
.end method

.method public isInsideImage(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 769
    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedsQualityThumb()Z
    .locals 1

    .prologue
    .line 846
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    return v0
.end method

.method public isShouldGenerateQualityThumb()Z
    .locals 1

    .prologue
    .line 854
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->shouldGenerateQualityThumb:Z

    return v0
.end method

.method public onAttachedToWindow()Z
    .locals 10

    .prologue
    .line 359
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 360
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v0, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->fileLocation:Lorg/telegram/tgnet/TLObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v0, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->httpUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v0, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v0, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 361
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->fileLocation:Lorg/telegram/tgnet/TLObject;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v2, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->httpUrl:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v3, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->filter:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v4, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v5, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v6, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbFilter:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget v7, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->size:I

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v8, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->ext:Ljava/lang/String;

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-boolean v9, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->cacheOnly:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 362
    const/4 v0, 0x1

    .line 364
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 341
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-nez v0, :cond_1

    .line 342
    new-instance v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;-><init>(Lorg/telegram/messenger/ImageReceiver;Lorg/telegram/messenger/ImageReceiver$1;)V

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    .line 344
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->fileLocation:Lorg/telegram/tgnet/TLObject;

    .line 345
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->httpUrl:Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->filter:Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    .line 348
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 349
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbFilter:Ljava/lang/String;

    .line 350
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    iput v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->size:I

    .line 351
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    iput-object v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->ext:Ljava/lang/String;

    .line 352
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iget-boolean v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    iput-boolean v1, v0, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->cacheOnly:Z

    .line 354
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->didReplacedPhotoInMemCache:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 355
    invoke-virtual {p0}, Lorg/telegram/messenger/ImageReceiver;->clearImage()V

    .line 356
    return-void
.end method

.method public setAllowStartAnimation(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 858
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    .line 859
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "value"    # F

    .prologue
    .line 706
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->overrideAlpha:F

    .line 707
    return-void
.end method

.method public setAspectFit(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 722
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->isAspectFit:Z

    .line 723
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 255
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->colorFilter:Landroid/graphics/ColorFilter;

    .line 256
    return-void
.end method

.method public setCrossfadeAlpha(B)V
    .locals 0
    .param p1, "value"    # B

    .prologue
    .line 710
    iput-byte p1, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    .line 711
    return-void
.end method

.method public setDelegate(Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    .prologue
    .line 259
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    .line 260
    return-void
.end method

.method public setForcePreview(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 813
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    .line 814
    return-void
.end method

.method public setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;I)V
    .locals 10
    .param p1, "httpUrl"    # Ljava/lang/String;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p4, "ext"    # Ljava/lang/String;
    .param p5, "size"    # I

    .prologue
    const/4 v1, 0x0

    .line 124
    const/4 v9, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v1

    move-object v6, v1

    move v7, p5

    move-object v8, p4

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 125
    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILjava/lang/String;Z)V
    .locals 10
    .param p1, "path"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p4, "size"    # I
    .param p5, "ext"    # Ljava/lang/String;
    .param p6, "cacheOnly"    # Z

    .prologue
    .line 120
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v7, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 121
    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "path"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p4, "ext"    # Ljava/lang/String;
    .param p5, "cacheOnly"    # Z

    .prologue
    const/4 v2, 0x0

    .line 116
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    move-object v6, v2

    move-object v8, p4

    move v9, p5

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 117
    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 11
    .param p1, "fileLocation"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "httpUrl"    # Ljava/lang/String;
    .param p3, "filter"    # Ljava/lang/String;
    .param p4, "thumb"    # Landroid/graphics/drawable/Drawable;
    .param p5, "thumbLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p6, "thumbFilter"    # Ljava/lang/String;
    .param p7, "size"    # I
    .param p8, "ext"    # Ljava/lang/String;
    .param p9, "cacheOnly"    # Z

    .prologue
    .line 136
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v5, :cond_0

    .line 137
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->fileLocation:Lorg/telegram/tgnet/TLObject;

    .line 138
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->httpUrl:Ljava/lang/String;

    .line 139
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 140
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    .line 143
    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-eqz p5, :cond_2

    :cond_1
    if-eqz p1, :cond_9

    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-nez v5, :cond_9

    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    if-nez v5, :cond_9

    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-nez v5, :cond_9

    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    if-nez v5, :cond_9

    .line 148
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    .line 149
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    .line 150
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 151
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    .line 152
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 153
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    .line 154
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    .line 155
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    .line 156
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    .line 157
    const/4 v5, 0x0

    iput-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    .line 158
    iput-object p4, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    .line 159
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 160
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 161
    const/4 v5, 0x0

    iput v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    .line 162
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    .line 163
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 164
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    .line 165
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p0, v6}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 166
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 167
    iget-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v5, :cond_6

    .line 168
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 173
    :cond_3
    :goto_0
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v5, :cond_5

    .line 174
    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_4

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    :cond_4
    const/4 v5, 0x1

    :goto_1
    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_8

    const/4 v6, 0x1

    :goto_2
    invoke-interface {v7, p0, v5, v6}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V

    .line 252
    :cond_5
    :goto_3
    return-void

    .line 170
    :cond_6
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v8, v9

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v10, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 174
    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 179
    :cond_9
    move-object/from16 v0, p5

    instance-of v5, v0, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-nez v5, :cond_a

    .line 180
    const/16 p5, 0x0

    .line 183
    :cond_a
    const/4 v2, 0x0

    .line 184
    .local v2, "key":Ljava/lang/String;
    if-eqz p1, :cond_15

    .line 185
    instance-of v5, p1, Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v5, :cond_13

    move-object v3, p1

    .line 186
    check-cast v3, Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 187
    .local v3, "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 199
    .end local v3    # "location":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_b
    :goto_4
    if-eqz v2, :cond_c

    .line 200
    if-eqz p3, :cond_c

    .line 201
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    :cond_c
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v5, :cond_f

    if-eqz v2, :cond_f

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 206
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v5, :cond_e

    .line 207
    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_d

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_d

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_16

    :cond_d
    const/4 v5, 0x1

    :goto_5
    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_17

    const/4 v6, 0x1

    :goto_6
    invoke-interface {v7, p0, v5, v6}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V

    .line 209
    :cond_e
    iget-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->canceledLoading:Z

    if-nez v5, :cond_f

    iget-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-eqz v5, :cond_5

    .line 214
    :cond_f
    const/4 v4, 0x0

    .line 215
    .local v4, "thumbKey":Ljava/lang/String;
    if-eqz p5, :cond_10

    .line 216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 217
    if-eqz p6, :cond_10

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "@"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 222
    :cond_10
    const/4 v5, 0x0

    invoke-direct {p0, v2, v5}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    .line 223
    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    .line 225
    iput-object v4, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 226
    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 227
    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    .line 228
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    .line 229
    iput-object p2, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    .line 230
    iput-object p3, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    .line 231
    move-object/from16 v0, p6

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    .line 232
    move/from16 v0, p7

    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    .line 233
    move/from16 v0, p9

    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    .line 234
    move-object/from16 v0, p5

    iput-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 235
    iput-object p4, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    .line 236
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 237
    const/4 v5, 0x0

    iput-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    .line 238
    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 240
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v5, :cond_12

    .line 241
    iget-object v7, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_11

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_11

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_18

    :cond_11
    const/4 v5, 0x1

    :goto_7
    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_19

    const/4 v6, 0x1

    :goto_8
    invoke-interface {v7, p0, v5, v6}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V

    .line 244
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v5

    invoke-virtual {v5, p0}, Lorg/telegram/messenger/ImageLoader;->loadImageForImageReceiver(Lorg/telegram/messenger/ImageReceiver;)V

    .line 245
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 246
    iget-boolean v5, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v5, :cond_1a

    .line 247
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    goto/16 :goto_3

    .end local v4    # "thumbKey":Ljava/lang/String;
    :cond_13
    move-object v3, p1

    .line 189
    check-cast v3, Lorg/telegram/tgnet/TLRPC$Document;

    .line 190
    .local v3, "location":Lorg/telegram/tgnet/TLRPC$Document;
    iget v5, v3, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    if-eqz v5, :cond_14

    .line 191
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 193
    :cond_14
    const/4 p1, 0x0

    goto/16 :goto_4

    .line 196
    .end local v3    # "location":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_15
    if-eqz p2, :cond_b

    .line 197
    invoke-static {p2}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_4

    .line 207
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_17
    const/4 v6, 0x0

    goto/16 :goto_6

    .line 241
    .restart local v4    # "thumbKey":Ljava/lang/String;
    :cond_18
    const/4 v5, 0x0

    goto :goto_7

    :cond_19
    const/4 v6, 0x0

    goto :goto_8

    .line 249
    :cond_1a
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v8, v9

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v10, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_3
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 10
    .param p1, "fileLocation"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "thumbLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "thumbFilter"    # Ljava/lang/String;
    .param p5, "size"    # I
    .param p6, "ext"    # Ljava/lang/String;
    .param p7, "cacheOnly"    # Z

    .prologue
    .line 132
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 133
    return-void
.end method

.method public setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10
    .param p1, "fileLocation"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "filter"    # Ljava/lang/String;
    .param p3, "thumbLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p4, "thumbFilter"    # Ljava/lang/String;
    .param p5, "ext"    # Ljava/lang/String;
    .param p6, "cacheOnly"    # Z

    .prologue
    .line 128
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    move/from16 v9, p6

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 129
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 290
    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/ImageReceiver;->setImageBitmap(Landroid/graphics/drawable/Drawable;)V

    .line 291
    return-void

    :cond_0
    move-object v0, v1

    .line 290
    goto :goto_0
.end method

.method public setImageBitmap(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 294
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lorg/telegram/messenger/ImageLoader;->cancelLoadingForImageReceiver(Lorg/telegram/messenger/ImageReceiver;I)V

    .line 295
    invoke-direct {p0, v3, v0}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    .line 296
    invoke-direct {p0, v3, v1}, Lorg/telegram/messenger/ImageReceiver;->recycleBitmap(Ljava/lang/String;Z)V

    .line 297
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    .line 298
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 299
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    .line 300
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentExt:Ljava/lang/String;

    .line 301
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    .line 302
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    .line 303
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbFilter:Ljava/lang/String;

    .line 304
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentImageLocation:Lorg/telegram/tgnet/TLObject;

    .line 305
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentHttpUrl:Ljava/lang/String;

    .line 306
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentFilter:Ljava/lang/String;

    .line 307
    iput v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentSize:I

    .line 308
    iput-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentCacheOnly:Z

    .line 309
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 310
    iput-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    .line 311
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iput-object v3, v2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->fileLocation:Lorg/telegram/tgnet/TLObject;

    .line 313
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iput-object v3, v2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->httpUrl:Ljava/lang/String;

    .line 314
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iput-object v3, v2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumbLocation:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 315
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->setImageBackup:Lorg/telegram/messenger/ImageReceiver$SetImageBackup;

    iput-object v3, v2, Lorg/telegram/messenger/ImageReceiver$SetImageBackup;->thumb:Landroid/graphics/drawable/Drawable;

    .line 317
    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 318
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v2, :cond_3

    .line 319
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    invoke-interface {v2, p0, v0, v1}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V

    .line 321
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 322
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v0, :cond_5

    .line 323
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 328
    :cond_4
    :goto_0
    return-void

    .line 325
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method

.method protected setImageBitmapByKey(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;ZZ)Z
    .locals 10
    .param p1, "bitmap"    # Landroid/graphics/drawable/BitmapDrawable;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "thumb"    # Z
    .param p4, "memCache"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 902
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 987
    .end local p1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    return v3

    .line 905
    .restart local p1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    if-nez p3, :cond_11

    .line 906
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 909
    instance-of v2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-nez v2, :cond_2

    .line 910
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 912
    :cond_2
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    .line 913
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    if-eqz v2, :cond_d

    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_d

    .line 914
    instance-of v2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_c

    move-object v2, p1

    .line 915
    check-cast v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setRoundRadius(I)V

    .line 924
    :goto_1
    if-nez p4, :cond_f

    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-nez v2, :cond_f

    .line 925
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    :cond_3
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_6

    .line 926
    :cond_4
    iput v8, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 927
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 928
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_e

    :cond_5
    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    .line 933
    :cond_6
    :goto_3
    instance-of v2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_7

    move-object v0, p1

    .line 934
    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 935
    .local v0, "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setParentView(Landroid/view/View;)V

    .line 936
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->allowStartAnimation:Z

    if-eqz v2, :cond_7

    .line 937
    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    .line 941
    .end local v0    # "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    :cond_7
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 942
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v2, :cond_10

    .line 943
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 984
    .end local p1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_8
    :goto_4
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    if-eqz v2, :cond_b

    .line 985
    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->delegate:Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_9

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_9

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_19

    :cond_9
    move v2, v4

    :goto_5
    iget-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_a

    move v3, v4

    :cond_a
    invoke-interface {v5, p0, v2, v3}, Lorg/telegram/messenger/ImageReceiver$ImageReceiverDelegate;->didSetImage(Lorg/telegram/messenger/ImageReceiver;ZZ)V

    :cond_b
    move v3, v4

    .line 987
    goto/16 :goto_0

    .line 917
    .restart local p1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_c
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 918
    .local v1, "object":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v1, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    goto :goto_1

    .line 921
    .end local v1    # "object":Landroid/graphics/Bitmap;
    :cond_d
    iput-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShader:Landroid/graphics/BitmapShader;

    goto :goto_1

    :cond_e
    move v2, v3

    .line 928
    goto :goto_2

    .line 931
    :cond_f
    iput v7, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    goto :goto_3

    .line 945
    :cond_10
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v8, v9

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_4

    .line 948
    :cond_11
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_13

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->hasBitmap()Z

    move-result v2

    if-eqz v2, :cond_13

    :cond_12
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->forcePreview:Z

    if-eqz v2, :cond_8

    .line 949
    :cond_13
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 952
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v5, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumbKey:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/ImageLoader;->incrementUseCount(Ljava/lang/String;)V

    .line 954
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->currentThumb:Landroid/graphics/drawable/Drawable;

    .line 956
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    if-eqz v2, :cond_15

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_15

    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_15

    .line 957
    instance-of v2, p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v2, :cond_14

    .line 958
    check-cast p1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .end local p1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    invoke-virtual {p1, v2}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setRoundRadius(I)V

    .line 967
    :goto_6
    if-nez p4, :cond_17

    iget-byte v2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeAlpha:B

    const/4 v5, 0x2

    if-eq v2, v5, :cond_17

    .line 968
    iput v8, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    .line 969
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lorg/telegram/messenger/ImageReceiver;->lastUpdateAlphaTime:J

    .line 970
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->currentKey:Ljava/lang/String;

    if-nez v2, :cond_16

    move v2, v4

    :goto_7
    iput-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->crossfadeWithThumb:Z

    .line 975
    :goto_8
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->staticThumb:Landroid/graphics/drawable/Drawable;

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v2, :cond_8

    .line 976
    iget-boolean v2, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v2, :cond_18

    .line 977
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto/16 :goto_4

    .line 960
    .restart local p1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_14
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 961
    .restart local v1    # "object":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v1, v5, v6}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    goto :goto_6

    .line 964
    .end local v1    # "object":Landroid/graphics/Bitmap;
    :cond_15
    iput-object v6, p0, Lorg/telegram/messenger/ImageReceiver;->bitmapShaderThumb:Landroid/graphics/BitmapShader;

    goto :goto_6

    .end local p1    # "bitmap":Landroid/graphics/drawable/BitmapDrawable;
    :cond_16
    move v2, v3

    .line 970
    goto :goto_7

    .line 972
    :cond_17
    iput v7, p0, Lorg/telegram/messenger/ImageReceiver;->currentAlpha:F

    goto :goto_8

    .line 979
    :cond_18
    iget-object v2, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v6, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v7, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v7, v8

    iget v8, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v9, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v8, v9

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    goto/16 :goto_4

    :cond_19
    move v2, v3

    .line 985
    goto/16 :goto_5
.end method

.method public setImageCoords(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 734
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    .line 735
    iput p2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    .line 736
    iput p3, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    .line 737
    iput p4, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    .line 738
    return-void
.end method

.method public setInvalidateAll(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    .line 283
    return-void
.end method

.method public setNeedsQualityThumb(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 837
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    .line 838
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->needsQualityThumb:Z

    if-eqz v0, :cond_0

    .line 839
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageThumbGenerated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 843
    :goto_0
    return-void

    .line 841
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->messageThumbGenerated:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "angle"    # I
    .param p2, "center"    # Z

    .prologue
    .line 271
    :goto_0
    if-gez p1, :cond_0

    .line 272
    add-int/lit16 p1, p1, 0x168

    goto :goto_0

    .line 274
    :cond_0
    :goto_1
    const/16 v0, 0x168

    if-le p1, v0, :cond_1

    .line 275
    add-int/lit16 p1, p1, -0x168

    goto :goto_1

    .line 277
    :cond_1
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->orientation:I

    .line 278
    iput-boolean p2, p0, Lorg/telegram/messenger/ImageReceiver;->centerRotation:Z

    .line 279
    return-void
.end method

.method public setParentMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .locals 0
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 829
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 830
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 726
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    .line 727
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v1, :cond_0

    .line 728
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    .line 729
    .local v0, "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    iget-object v1, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->setParentView(Landroid/view/View;)V

    .line 731
    .end local v0    # "fileDrawable":Lorg/telegram/ui/Components/AnimatedFileDrawable;
    :cond_0
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 263
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->isPressed:Z

    .line 264
    return-void
.end method

.method public setRoundRadius(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 821
    iput p1, p0, Lorg/telegram/messenger/ImageReceiver;->roundRadius:I

    .line 822
    return-void
.end method

.method public setShouldGenerateQualityThumb(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 850
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->shouldGenerateQualityThumb:Z

    .line 851
    return-void
.end method

.method protected setTag(Ljava/lang/Integer;Z)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Integer;
    .param p2, "thumb"    # Z

    .prologue
    .line 894
    if-eqz p2, :cond_0

    .line 895
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->thumbTag:Ljava/lang/Integer;

    .line 899
    :goto_0
    return-void

    .line 897
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/ImageReceiver;->tag:Ljava/lang/Integer;

    goto :goto_0
.end method

.method public setVisible(ZZ)V
    .locals 6
    .param p1, "value"    # Z
    .param p2, "invalidate"    # Z

    .prologue
    .line 688
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    if-ne v0, p1, :cond_1

    .line 699
    :cond_0
    :goto_0
    return-void

    .line 691
    :cond_1
    iput-boolean p1, p0, Lorg/telegram/messenger/ImageReceiver;->isVisible:Z

    .line 692
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 693
    iget-boolean v0, p0, Lorg/telegram/messenger/ImageReceiver;->invalidateAll:Z

    if-eqz v0, :cond_2

    .line 694
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 696
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->parentView:Landroid/view/View;

    iget v1, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v2, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v3, p0, Lorg/telegram/messenger/ImageReceiver;->imageX:I

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageW:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/telegram/messenger/ImageReceiver;->imageY:I

    iget v5, p0, Lorg/telegram/messenger/ImageReceiver;->imageH:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0
.end method

.method public startAnimation()V
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->start()V

    .line 869
    :cond_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    if-eqz v0, :cond_0

    .line 873
    iget-object v0, p0, Lorg/telegram/messenger/ImageReceiver;->currentImage:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lorg/telegram/ui/Components/AnimatedFileDrawable;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/AnimatedFileDrawable;->stop()V

    .line 875
    :cond_0
    return-void
.end method
