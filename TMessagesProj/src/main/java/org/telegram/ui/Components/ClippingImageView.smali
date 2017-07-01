.class public Lorg/telegram/ui/Components/ClippingImageView;
.super Landroid/view/View;
.source "ClippingImageView.java"


# instance fields
.field private animationProgress:F

.field private animationValues:[[F

.field private bitmapRect:Landroid/graphics/RectF;

.field private bitmapShader:Landroid/graphics/BitmapShader;

.field private bmp:Landroid/graphics/Bitmap;

.field private clipBottom:I

.field private clipLeft:I

.field private clipRight:I

.field private clipTop:I

.field private drawRect:Landroid/graphics/RectF;

.field private matrix:Landroid/graphics/Matrix;

.field private needRadius:Z

.field private orientation:I

.field private paint:Landroid/graphics/Paint;

.field private radius:I

.field private roundPaint:Landroid/graphics/Paint;

.field private roundRect:Landroid/graphics/RectF;

.field private shaderMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->paint:Landroid/graphics/Paint;

    .line 49
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 50
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    .line 51
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundRect:Landroid/graphics/RectF;

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->shaderMatrix:Landroid/graphics/Matrix;

    .line 56
    return-void
.end method


# virtual methods
.method public getAnimationProgress()F
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    return v0
.end method

.method public getClipBottom()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipBottom:I

    return v0
.end method

.method public getClipHorizontal()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    return v0
.end method

.method public getClipLeft()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipLeft:I

    return v0
.end method

.method public getClipRight()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    return v0
.end method

.method public getClipTop()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipTop:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->radius:I

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 106
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    if-eqz v9, :cond_0

    .line 110
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getScaleY()F

    move-result v7

    .line 111
    .local v7, "scaleY":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 113
    iget-boolean v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->needRadius:Z

    if-eqz v9, :cond_7

    .line 114
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 115
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundRect:Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 119
    iget v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    rem-int/lit16 v9, v9, 0x168

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_2

    iget v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    rem-int/lit16 v9, v9, 0x168

    const/16 v10, 0x10e

    if-ne v9, v10, :cond_3

    .line 120
    :cond_2
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 121
    .local v1, "bitmapW":I
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 126
    .local v0, "bitmapH":I
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v9

    div-int v9, v1, v9

    int-to-float v6, v9

    .line 127
    .local v6, "scaleW":F
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v9

    div-int v9, v0, v9

    int-to-float v5, v9

    .line 128
    .local v5, "scaleH":F
    :goto_3
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 129
    .local v4, "scale":F
    sub-float v9, v6, v5

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const v10, 0x3727c5ac    # 1.0E-5f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 130
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v4

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v8, v10

    .line 131
    .local v8, "w":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v4

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    double-to-int v3, v10

    .line 132
    .local v3, "h":I
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    sub-int v10, v1, v8

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    sub-int v11, v0, v3

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    int-to-float v12, v8

    int-to-float v13, v3

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 133
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->shaderMatrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundRect:Landroid/graphics/RectF;

    sget-object v12, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 138
    .end local v3    # "h":I
    .end local v8    # "w":I
    :goto_4
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    iget-object v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->shaderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 139
    iget v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipLeft:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    iget v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipTop:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    int-to-float v12, v12

    div-float/2addr v12, v7

    sub-float/2addr v11, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipBottom:I

    int-to-float v13, v13

    div-float/2addr v13, v7

    sub-float/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 140
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundRect:Landroid/graphics/RectF;

    iget v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->radius:I

    int-to-float v10, v10

    iget v11, p0, Lorg/telegram/ui/Components/ClippingImageView;->radius:I

    int-to-float v11, v11

    iget-object v12, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 164
    .end local v0    # "bitmapH":I
    .end local v1    # "bitmapW":I
    .end local v4    # "scale":F
    .end local v5    # "scaleH":F
    .end local v6    # "scaleW":F
    :goto_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 123
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 124
    .restart local v1    # "bitmapW":I
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .restart local v0    # "bitmapH":I
    goto/16 :goto_1

    .line 126
    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    goto/16 :goto_2

    .line 127
    .restart local v6    # "scaleW":F
    :cond_5
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_3

    .line 135
    .restart local v4    # "scale":F
    .restart local v5    # "scaleH":F
    :cond_6
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 136
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->shaderMatrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundRect:Landroid/graphics/RectF;

    sget-object v12, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_4

    .line 142
    .end local v0    # "bitmapH":I
    .end local v1    # "bitmapW":I
    .end local v4    # "scale":F
    .end local v5    # "scaleH":F
    .end local v6    # "scaleW":F
    :cond_7
    iget v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    const/16 v10, 0x5a

    if-eq v9, v10, :cond_8

    iget v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    const/16 v10, 0x10e

    if-ne v9, v10, :cond_9

    .line 143
    :cond_8
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v11

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 144
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    sget-object v12, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 145
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    int-to-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 146
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 157
    :goto_6
    iget v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipLeft:I

    int-to-float v9, v9

    div-float/2addr v9, v7

    iget v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipTop:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    int-to-float v12, v12

    div-float/2addr v12, v7

    sub-float/2addr v11, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget v13, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipBottom:I

    int-to-float v13, v13

    div-float/2addr v13, v7

    sub-float/2addr v12, v13

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 159
    :try_start_0
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    iget-object v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v11, p0, Lorg/telegram/ui/Components/ClippingImageView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 160
    :catch_0
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v2}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 147
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    iget v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    const/16 v10, 0xb4

    if-ne v9, v10, :cond_a

    .line 148
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v10

    neg-int v10, v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v11

    neg-int v11, v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 149
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    sget-object v12, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 150
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    int-to-float v10, v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 151
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_6

    .line 153
    :cond_a
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;->set(FFFF)V

    .line 154
    iget-object v9, p0, Lorg/telegram/ui/Components/ClippingImageView;->matrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    iget-object v11, p0, Lorg/telegram/ui/Components/ClippingImageView;->drawRect:Landroid/graphics/RectF;

    sget-object v12, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_6
.end method

.method public setAnimationProgress(F)V
    .locals 8
    .param p1, "progress"    # F

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    aget v0, v0, v4

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    aget v1, v1, v4

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    aget v2, v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleX(F)V

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    aget v0, v0, v5

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    aget v1, v1, v5

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    aget v2, v2, v5

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setScaleY(F)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    aget v0, v0, v3

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    aget v1, v1, v3

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationX(F)V

    .line 72
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    aget v0, v0, v6

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    aget v1, v1, v6

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    aget v2, v2, v6

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setTranslationY(F)V

    .line 73
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    aget v0, v0, v7

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    aget v1, v1, v7

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    aget v2, v2, v7

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setClipHorizontal(I)V

    .line 74
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    const/4 v1, 0x5

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    const/4 v2, 0x5

    aget v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    const/4 v3, 0x5

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setClipTop(I)V

    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    const/4 v1, 0x6

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    const/4 v2, 0x6

    aget v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    const/4 v3, 0x6

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setClipBottom(I)V

    .line 76
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v0, v0, v4

    const/4 v1, 0x7

    aget v0, v0, v1

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v1, v1, v5

    const/4 v2, 0x7

    aget v1, v1, v2

    iget-object v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    aget-object v2, v2, v4

    const/4 v3, 0x7

    aget v2, v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/ClippingImageView;->setRadius(I)V

    .line 78
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    .line 79
    return-void
.end method

.method public setAnimationValues([[F)V
    .locals 0
    .param p1, "values"    # [[F

    .prologue
    .line 59
    iput-object p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->animationValues:[[F

    .line 60
    return-void
.end method

.method public setClipBottom(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 169
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipBottom:I

    .line 170
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    .line 171
    return-void
.end method

.method public setClipHorizontal(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 174
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    .line 175
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipLeft:I

    .line 176
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    .line 177
    return-void
.end method

.method public setClipLeft(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 180
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipLeft:I

    .line 181
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    .line 182
    return-void
.end method

.method public setClipRight(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 185
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipRight:I

    .line 186
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    .line 187
    return-void
.end method

.method public setClipTop(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 190
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipTop:I

    .line 191
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    .line 192
    return-void
.end method

.method public setClipVertical(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 195
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipBottom:I

    .line 196
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->clipTop:I

    .line 197
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    .line 198
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, 0x0

    .line 205
    iput-object p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->bmp:Landroid/graphics/Bitmap;

    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 208
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->needRadius:Z

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    .line 210
    iget-object v0, p0, Lorg/telegram/ui/Components/ClippingImageView;->roundPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lorg/telegram/ui/Components/ClippingImageView;->bitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 213
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ClippingImageView;->invalidate()V

    .line 214
    return-void
.end method

.method public setNeedRadius(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 217
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->needRadius:Z

    .line 218
    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .param p1, "angle"    # I

    .prologue
    .line 201
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->orientation:I

    .line 202
    return-void
.end method

.method public setRadius(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 221
    iput p1, p0, Lorg/telegram/ui/Components/ClippingImageView;->radius:I

    .line 222
    return-void
.end method
