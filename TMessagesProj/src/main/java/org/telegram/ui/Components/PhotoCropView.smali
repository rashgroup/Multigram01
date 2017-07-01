.class public Lorg/telegram/ui/Components/PhotoCropView;
.super Landroid/widget/FrameLayout;
.source "PhotoCropView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;
    }
.end annotation


# instance fields
.field private animationEndValues:Landroid/graphics/RectF;

.field private animationRunnable:Ljava/lang/Runnable;

.field private animationStartValues:Landroid/graphics/RectF;

.field private bitmapGlobalScale:F

.field private bitmapGlobalX:F

.field private bitmapGlobalY:F

.field private bitmapHeight:I

.field private bitmapToEdit:Landroid/graphics/Bitmap;

.field private bitmapWidth:I

.field private bitmapX:I

.field private bitmapY:I

.field private circlePaint:Landroid/graphics/Paint;

.field private delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

.field private draggingState:I

.field private freeformCrop:Z

.field private halfPaint:Landroid/graphics/Paint;

.field private oldX:F

.field private oldY:F

.field private orientation:I

.field private rectPaint:Landroid/graphics/Paint;

.field private rectSizeX:F

.field private rectSizeY:F

.field private rectX:F

.field private rectY:F

.field private shadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x44160000    # 600.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->freeformCrop:Z

    .line 35
    iput v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 36
    iput v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    .line 37
    iput v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    .line 39
    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->oldX:F

    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->oldY:F

    .line 40
    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    .line 41
    iput v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iput v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 42
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    .line 43
    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    .line 44
    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectPaint:Landroid/graphics/Paint;

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectPaint:Landroid/graphics/Paint;

    const v1, -0x4d000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 58
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    .line 62
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x7f000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->shadowPaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->shadowPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x1a000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/PhotoCropView;->setWillNotDraw(Z)V

    .line 66
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/PhotoCropView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoCropView;

    .prologue
    .line 23
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/PhotoCropView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/PhotoCropView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 23
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method private createBitmap(IIII)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 476
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    invoke-interface {v5}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 477
    .local v3, "newBimap":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 478
    iput-object v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    .line 481
    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 482
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 483
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x6

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 485
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 486
    .local v2, "matrix":Landroid/graphics/Matrix;
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 487
    iget v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->orientation:I

    int-to-float v5, v5

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 488
    iget v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->orientation:I

    rem-int/lit16 v5, v5, 0x168

    const/16 v6, 0x5a

    if-eq v5, v6, :cond_1

    iget v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->orientation:I

    rem-int/lit16 v5, v5, 0x168

    const/16 v6, 0x10e

    if-ne v5, v6, :cond_2

    .line 489
    :cond_1
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, p1

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, p2

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 493
    :goto_0
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 495
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    :goto_1
    return-object v0

    .line 491
    :cond_2
    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, p1

    int-to-float v5, v5

    iget-object v6, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, p2

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 496
    :catch_0
    move-exception v5

    goto :goto_1
.end method


# virtual methods
.method public cancelAnimationRunnable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 615
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 617
    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    .line 618
    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    .line 619
    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    .line 621
    :cond_0
    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 24

    .prologue
    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 505
    .local v12, "newBimap":Landroid/graphics/Bitmap;
    if-eqz v12, :cond_0

    .line 506
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    .line 509
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    move/from16 v23, v0

    mul-float v6, v22, v23

    .line 510
    .local v6, "bitmapScaledWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    move/from16 v23, v0

    mul-float v5, v22, v23

    .line 511
    .local v5, "bitmapScaledHeight":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v22

    const/high16 v23, 0x41e00000    # 28.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v6

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move/from16 v23, v0

    add-float v22, v22, v23

    const/high16 v23, 0x41600000    # 14.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v7, v22, v23

    .line 512
    .local v7, "bitmapStartX":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v22

    const/high16 v23, 0x41e00000    # 28.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    sub-float v22, v22, v5

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move/from16 v23, v0

    add-float v22, v22, v23

    const/high16 v23, 0x41600000    # 14.0f

    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    add-float v8, v22, v23

    .line 514
    .local v8, "bitmapStartY":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    move/from16 v22, v0

    sub-float v22, v22, v7

    div-float v15, v22, v6

    .line 515
    .local v15, "percX":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    move/from16 v22, v0

    sub-float v22, v22, v8

    div-float v16, v22, v5

    .line 516
    .local v16, "percY":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    move/from16 v22, v0

    div-float v13, v22, v6

    .line 517
    .local v13, "percSizeX":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    move/from16 v22, v0

    div-float v14, v22, v5

    .line 521
    .local v14, "percSizeY":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->orientation:I

    move/from16 v22, v0

    move/from16 v0, v22

    rem-int/lit16 v0, v0, 0x168

    move/from16 v22, v0

    const/16 v23, 0x5a

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->orientation:I

    move/from16 v22, v0

    move/from16 v0, v22

    rem-int/lit16 v0, v0, 0x168

    move/from16 v22, v0

    const/16 v23, 0x10e

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 522
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v19

    .line 523
    .local v19, "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 529
    .local v11, "height":I
    :goto_0
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v15

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 530
    .local v20, "x":I
    int-to-float v0, v11

    move/from16 v22, v0

    mul-float v22, v22, v16

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 531
    .local v21, "y":I
    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v13

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v17, v0

    .line 532
    .local v17, "sizeX":I
    int-to-float v0, v11

    move/from16 v22, v0

    mul-float v22, v22, v14

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v18, v0

    .line 533
    .local v18, "sizeY":I
    if-gez v20, :cond_2

    .line 534
    const/16 v20, 0x0

    .line 536
    :cond_2
    if-gez v21, :cond_3

    .line 537
    const/16 v21, 0x0

    .line 539
    :cond_3
    add-int v22, v20, v17

    move/from16 v0, v22

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 540
    sub-int v17, v19, v20

    .line 542
    :cond_4
    add-int v22, v21, v18

    move/from16 v0, v22

    if-le v0, v11, :cond_5

    .line 543
    sub-int v18, v11, v21

    .line 546
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/PhotoCropView;->createBitmap(IIII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 556
    :goto_1
    return-object v22

    .line 525
    .end local v11    # "height":I
    .end local v17    # "sizeX":I
    .end local v18    # "sizeY":I
    .end local v19    # "width":I
    .end local v20    # "x":I
    .end local v21    # "y":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 526
    .restart local v19    # "width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    .restart local v11    # "height":I
    goto :goto_0

    .line 547
    .restart local v17    # "sizeX":I
    .restart local v18    # "sizeY":I
    .restart local v20    # "x":I
    .restart local v21    # "y":I
    :catch_0
    move-exception v9

    .line 548
    .local v9, "e":Ljava/lang/Throwable;
    const-string/jumbo v22, "tmessags"

    move-object/from16 v0, v22

    invoke-static {v0, v9}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 549
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 551
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/telegram/ui/Components/PhotoCropView;->createBitmap(IIII)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v22

    goto :goto_1

    .line 552
    :catch_1
    move-exception v10

    .line 553
    .local v10, "e2":Ljava/lang/Throwable;
    const-string/jumbo v22, "tmessages"

    move-object/from16 v0, v22

    invoke-static {v0, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 556
    const/16 v22, 0x0

    goto :goto_1
.end method

.method public getBitmapX()F
    .locals 2

    .prologue
    .line 452
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapX:I

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getBitmapY()F
    .locals 2

    .prologue
    .line 456
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public getLimitHeight()F
    .locals 6

    .prologue
    .line 472
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float/2addr v0, v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v1

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLimitWidth()F
    .locals 6

    .prologue
    .line 468
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    sub-float/2addr v0, v1

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v1

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLimitX()F
    .locals 6

    .prologue
    .line 460
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v1

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v1, v2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getLimitY()F
    .locals 6

    .prologue
    .line 464
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v1

    const/high16 v4, 0x41e00000    # 28.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v4, v4

    iget v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    double-to-int v1, v2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getRectSizeX()F
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    return v0
.end method

.method public getRectSizeY()F
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    return v0
.end method

.method public getRectX()F
    .locals 2

    .prologue
    .line 436
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public getRectY()F
    .locals 2

    .prologue
    .line 440
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public moveToFill(Z)V
    .locals 14
    .param p1, "animated"    # Z

    .prologue
    .line 643
    iget v9, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    div-float v7, v9, v10

    .line 644
    .local v7, "scaleToX":F
    iget v9, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v9, v9

    iget v10, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    div-float v8, v9, v10

    .line 645
    .local v8, "scaleToY":F
    cmpl-float v9, v7, v8

    if-lez v9, :cond_1

    move v6, v8

    .line 646
    .local v6, "scaleTo":F
    :goto_0
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v6, v9

    if-lez v9, :cond_2

    iget v9, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v9, v6

    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 647
    const/high16 v9, 0x40400000    # 3.0f

    iget v10, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    div-float v6, v9, v10

    .line 651
    :cond_0
    :goto_1
    iget v9, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    mul-float v2, v9, v6

    .line 652
    .local v2, "newSizeX":F
    iget v9, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    mul-float v3, v9, v6

    .line 653
    .local v3, "newSizeY":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v9

    const/high16 v10, 0x41e00000    # 28.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v9, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x41600000    # 14.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float v4, v9, v10

    .line 654
    .local v4, "newX":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v9

    const/high16 v10, 0x41e00000    # 28.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    sub-int/2addr v9, v10

    int-to-float v9, v9

    sub-float/2addr v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    const/high16 v10, 0x41600000    # 14.0f

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    int-to-float v10, v10

    add-float v5, v9, v10

    .line 655
    .local v5, "newY":F
    new-instance v9, Landroid/graphics/RectF;

    iget v10, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v12, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    iget v13, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v9, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    .line 656
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v4, v5, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v9, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    .line 658
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v6, v10

    mul-float/2addr v9, v10

    add-float/2addr v9, v4

    iget v10, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v6

    add-float v0, v9, v10

    .line 659
    .local v0, "newBitmapGlobalX":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, v6, v10

    mul-float/2addr v9, v10

    add-float/2addr v9, v5

    iget v10, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v6

    add-float v1, v9, v10

    .line 661
    .local v1, "newBitmapGlobalY":F
    iget-object v9, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    iget v10, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v10, v6

    invoke-interface {v9, v0, v1, v10, p1}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    .line 662
    return-void

    .end local v0    # "newBitmapGlobalX":F
    .end local v1    # "newBitmapGlobalY":F
    .end local v2    # "newSizeX":F
    .end local v3    # "newSizeY":F
    .end local v4    # "newX":F
    .end local v5    # "newY":F
    .end local v6    # "scaleTo":F
    :cond_1
    move v6, v7

    .line 645
    goto/16 :goto_0

    .line 648
    .restart local v6    # "scaleTo":F
    :cond_2
    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, v6, v9

    if-gez v9, :cond_0

    iget v9, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float/2addr v9, v6

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_0

    .line 649
    const/high16 v9, 0x3f800000    # 1.0f

    iget v10, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    div-float v6, v9, v10

    goto/16 :goto_1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x3

    const/4 v1, 0x0

    const/high16 v11, 0x41a00000    # 20.0f

    const/high16 v10, 0x40400000    # 3.0f

    .line 561
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 562
    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 563
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float v3, v0, v2

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float v6, v0, v2

    iget-object v7, p0, Lorg/telegram/ui/Components/PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 564
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->halfPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 566
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    .line 567
    .local v9, "side":I
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    mul-int/lit8 v1, v9, 0x2

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    mul-int/lit8 v2, v9, 0x2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    mul-int/lit8 v3, v9, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 568
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    mul-int/lit8 v1, v9, 0x2

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    mul-int/lit8 v2, v9, 0x2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    mul-int/lit8 v4, v9, 0x2

    int-to-float v4, v4

    sub-float/2addr v0, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 570
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v1

    mul-int/lit8 v1, v9, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    mul-int/lit8 v2, v9, 0x2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v3

    mul-int/lit8 v3, v9, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 571
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    mul-int/lit8 v2, v9, 0x2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v3

    mul-int/lit8 v3, v9, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    mul-int/lit8 v4, v9, 0x2

    int-to-float v4, v4

    sub-float/2addr v0, v4

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 573
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    mul-int/lit8 v1, v9, 0x2

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v2

    mul-int/lit8 v2, v9, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v4

    mul-int/lit8 v4, v9, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 574
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    mul-int/lit8 v1, v9, 0x2

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v2, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    mul-int/lit8 v3, v9, 0x2

    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v4

    mul-int/lit8 v4, v9, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 576
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v1

    mul-int/lit8 v1, v9, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v2, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v3

    mul-int/lit8 v3, v9, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v4

    mul-int/lit8 v4, v9, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 577
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v1, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v2

    mul-int/lit8 v2, v9, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-static {v11}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v0, v3

    mul-int/lit8 v3, v9, 0x2

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v0, v4

    mul-int/lit8 v4, v9, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 579
    const/4 v8, 0x1

    .local v8, "a":I
    :goto_0
    if-ge v8, v12, :cond_0

    .line 580
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    div-float/2addr v1, v10

    int-to-float v2, v8

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    int-to-float v1, v9

    sub-float v1, v0, v1

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    mul-int/lit8 v3, v9, 0x2

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    div-float/2addr v3, v10

    int-to-float v4, v8

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->shadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 581
    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    div-float/2addr v2, v10

    int-to-float v3, v8

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    int-to-float v2, v9

    sub-float v2, v0, v2

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    div-float/2addr v4, v10

    int-to-float v5, v8

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    mul-int/lit8 v4, v9, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->shadowPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 579
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 584
    :cond_0
    const/4 v8, 0x1

    :goto_1
    if-ge v8, v12, :cond_1

    .line 585
    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    div-float/2addr v1, v10

    int-to-float v2, v8

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v3, v9

    add-float/2addr v0, v3

    iget v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    div-float/2addr v3, v10

    int-to-float v4, v8

    mul-float/2addr v3, v4

    add-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 586
    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    div-float/2addr v2, v10

    int-to-float v3, v8

    mul-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    div-float/2addr v4, v10

    int-to-float v5, v8

    mul-float/2addr v4, v5

    add-float/2addr v0, v4

    int-to-float v4, v9

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 584
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 589
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v3, v0

    iget v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v4, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 590
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 670
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 672
    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    invoke-interface {v11}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 673
    .local v2, "newBimap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_0

    .line 674
    iput-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    .line 677
    :cond_0
    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    if-nez v11, :cond_1

    .line 738
    :goto_0
    return-void

    .line 681
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v11

    const/high16 v12, 0x41e00000    # 28.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int v10, v11, v12

    .line 682
    .local v10, "viewWidth":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v11

    const/high16 v12, 0x41e00000    # 28.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    sub-int v9, v11, v12

    .line 686
    .local v9, "viewHeight":I
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->orientation:I

    rem-int/lit16 v11, v11, 0x168

    const/16 v12, 0x5a

    if-eq v11, v12, :cond_2

    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->orientation:I

    rem-int/lit16 v11, v11, 0x168

    const/16 v12, 0x10e

    if-ne v11, v12, :cond_3

    .line 687
    :cond_2
    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v1, v11

    .line 688
    .local v1, "bitmapW":F
    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v0, v11

    .line 693
    .local v0, "bitmapH":F
    :goto_1
    int-to-float v11, v10

    div-float v7, v11, v1

    .line 694
    .local v7, "scaleX":F
    int-to-float v11, v9

    div-float v8, v11, v0

    .line 695
    .local v8, "scaleY":F
    cmpl-float v11, v7, v8

    if-lez v11, :cond_4

    .line 696
    int-to-float v0, v9

    .line 697
    mul-float v11, v1, v8

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v11, v12

    int-to-float v1, v11

    .line 703
    :goto_2
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    iget v12, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapX:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iget v12, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v12, v12

    div-float v5, v11, v12

    .line 704
    .local v5, "percX":F
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    iget v12, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    int-to-float v12, v12

    sub-float/2addr v11, v12

    iget v12, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v12, v12

    div-float v6, v11, v12

    .line 705
    .local v6, "percY":F
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    iget v12, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v12, v12

    div-float v3, v11, v12

    .line 706
    .local v3, "percSizeX":F
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    iget v12, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v12, v12

    div-float v4, v11, v12

    .line 707
    .local v4, "percSizeY":F
    float-to-int v11, v1

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    .line 708
    float-to-int v11, v0

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    .line 710
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    sub-int v11, v10, v11

    div-int/lit8 v11, v11, 0x2

    const/high16 v12, 0x41600000    # 14.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v11, v12

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapX:I

    .line 711
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    sub-int v11, v9, v11

    div-int/lit8 v11, v11, 0x2

    const/high16 v12, 0x41600000    # 14.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    int-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v11, v12

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    .line 713
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v11, v11, v12

    if-nez v11, :cond_7

    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v11, v11, v12

    if-nez v11, :cond_7

    .line 714
    iget-boolean v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->freeformCrop:Z

    if-eqz v11, :cond_5

    .line 715
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    int-to-float v11, v11

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 716
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapX:I

    int-to-float v11, v11

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    .line 717
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v11, v11

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 718
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v11, v11

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    goto/16 :goto_0

    .line 690
    .end local v0    # "bitmapH":F
    .end local v1    # "bitmapW":F
    .end local v3    # "percSizeX":F
    .end local v4    # "percSizeY":F
    .end local v5    # "percX":F
    .end local v6    # "percY":F
    .end local v7    # "scaleX":F
    .end local v8    # "scaleY":F
    :cond_3
    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v1, v11

    .line 691
    .restart local v1    # "bitmapW":F
    iget-object v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v0, v11

    .restart local v0    # "bitmapH":F
    goto/16 :goto_1

    .line 699
    .restart local v7    # "scaleX":F
    .restart local v8    # "scaleY":F
    :cond_4
    int-to-float v1, v10

    .line 700
    mul-float v11, v0, v7

    float-to-double v12, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v11, v12

    int-to-float v0, v11

    goto/16 :goto_2

    .line 720
    .restart local v3    # "percSizeX":F
    .restart local v4    # "percSizeY":F
    .restart local v5    # "percX":F
    .restart local v6    # "percY":F
    :cond_5
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    iget v12, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    if-le v11, v12, :cond_6

    .line 721
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    int-to-float v11, v11

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 722
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    sub-int v11, v10, v11

    div-int/lit8 v11, v11, 0x2

    const/high16 v12, 0x41600000    # 14.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    .line 723
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v11, v11

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 724
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v11, v11

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    goto/16 :goto_0

    .line 726
    :cond_6
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapX:I

    int-to-float v11, v11

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    .line 727
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    sub-int v11, v9, v11

    div-int/lit8 v11, v11, 0x2

    const/high16 v12, 0x41600000    # 14.0f

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 728
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v11, v11

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 729
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v11, v11

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    goto/16 :goto_0

    .line 733
    :cond_7
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v11, v11

    mul-float/2addr v11, v5

    iget v12, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapX:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    .line 734
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v11, v11

    mul-float/2addr v11, v6

    iget v12, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 735
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v11, v11

    mul-float/2addr v11, v3

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 736
    iget v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v11, v11

    mul-float/2addr v11, v4

    iput v11, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    .line 213
    const/4 v13, 0x0

    .line 432
    :goto_0
    return v13

    .line 215
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    .line 216
    .local v11, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 217
    .local v12, "y":F
    const/high16 v13, 0x41a00000    # 20.0f

    invoke-static {v13}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .line 218
    .local v7, "cornerSide":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    if-nez v13, :cond_c

    .line 219
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v14, v7

    sub-float/2addr v13, v14

    cmpg-float v13, v13, v11

    if-gez v13, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    cmpl-float v13, v13, v11

    if-lez v13, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    int-to-float v14, v7

    sub-float/2addr v13, v14

    cmpg-float v13, v13, v12

    if-gez v13, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    cmpl-float v13, v13, v12

    if-lez v13, :cond_4

    .line 220
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    .line 242
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    if-eqz v13, :cond_2

    .line 243
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoCropView;->cancelAnimationRunnable()V

    .line 244
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lorg/telegram/ui/Components/PhotoCropView;->requestDisallowInterceptTouchEvent(Z)V

    .line 246
    :cond_2
    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/ui/Components/PhotoCropView;->oldX:F

    .line 247
    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/Components/PhotoCropView;->oldY:F

    .line 432
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    if-eqz v13, :cond_3c

    const/4 v13, 0x1

    goto :goto_0

    .line 221
    :cond_4
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v14, v7

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    cmpg-float v13, v13, v11

    if-gez v13, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    cmpl-float v13, v13, v11

    if-lez v13, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    int-to-float v14, v7

    sub-float/2addr v13, v14

    cmpg-float v13, v13, v12

    if-gez v13, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    cmpl-float v13, v13, v12

    if-lez v13, :cond_5

    .line 222
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    goto :goto_1

    .line 223
    :cond_5
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v14, v7

    sub-float/2addr v13, v14

    cmpg-float v13, v13, v11

    if-gez v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    cmpl-float v13, v13, v11

    if-lez v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    int-to-float v14, v7

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v13, v14

    cmpg-float v13, v13, v12

    if-gez v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v13, v14

    cmpl-float v13, v13, v12

    if-lez v13, :cond_6

    .line 224
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    goto/16 :goto_1

    .line 225
    :cond_6
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v14, v7

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    cmpg-float v13, v13, v11

    if-gez v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    cmpl-float v13, v13, v11

    if-lez v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    int-to-float v14, v7

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v13, v14

    cmpg-float v13, v13, v12

    if-gez v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v13, v14

    cmpl-float v13, v13, v12

    if-lez v13, :cond_7

    .line 226
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    goto/16 :goto_1

    .line 228
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->freeformCrop:Z

    if-eqz v13, :cond_b

    .line 229
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    cmpg-float v13, v13, v11

    if-gez v13, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v14, v7

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    cmpl-float v13, v13, v11

    if-lez v13, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    int-to-float v14, v7

    sub-float/2addr v13, v14

    cmpg-float v13, v13, v12

    if-gez v13, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    cmpl-float v13, v13, v12

    if-lez v13, :cond_8

    .line 230
    const/4 v13, 0x5

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    goto/16 :goto_1

    .line 231
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    cmpg-float v13, v13, v12

    if-gez v13, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    int-to-float v14, v7

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v13, v14

    cmpl-float v13, v13, v12

    if-lez v13, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v14, v7

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    cmpg-float v13, v13, v11

    if-gez v13, :cond_9

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    cmpl-float v13, v13, v11

    if-lez v13, :cond_9

    .line 232
    const/4 v13, 0x6

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    goto/16 :goto_1

    .line 233
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    cmpg-float v13, v13, v12

    if-gez v13, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    int-to-float v14, v7

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v13, v14

    cmpl-float v13, v13, v12

    if-lez v13, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v14, v7

    sub-float/2addr v13, v14

    cmpg-float v13, v13, v11

    if-gez v13, :cond_a

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    cmpl-float v13, v13, v11

    if-lez v13, :cond_a

    .line 234
    const/4 v13, 0x7

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    goto/16 :goto_1

    .line 235
    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    cmpg-float v13, v13, v11

    if-gez v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    int-to-float v14, v7

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    cmpl-float v13, v13, v11

    if-lez v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    int-to-float v14, v7

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v13, v14

    cmpg-float v13, v13, v12

    if-gez v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    int-to-float v14, v7

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v13, v14

    cmpl-float v13, v13, v12

    if-lez v13, :cond_1

    .line 236
    const/16 v13, 0x8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    goto/16 :goto_1

    .line 239
    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    goto/16 :goto_1

    .line 248
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    .line 249
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    if-eqz v13, :cond_3

    .line 250
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    .line 251
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoCropView;->startAnimationRunnable()V

    .line 252
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 254
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_3

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    if-eqz v13, :cond_3

    .line 255
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->oldX:F

    sub-float v8, v11, v13

    .line 256
    .local v8, "diffX":F
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->oldY:F

    sub-float v9, v12, v13

    .line 257
    .local v9, "diffY":F
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float v4, v13, v14

    .line 258
    .local v4, "bitmapScaledWidth":F
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    mul-float v3, v13, v14

    .line 259
    .local v3, "bitmapScaledHeight":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoCropView;->getWidth()I

    move-result v13

    const/high16 v14, 0x41e00000    # 28.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    sub-float/2addr v13, v4

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    add-float/2addr v13, v14

    const/high16 v14, 0x41600000    # 14.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float v5, v13, v14

    .line 260
    .local v5, "bitmapStartX":F
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoCropView;->getHeight()I

    move-result v13

    const/high16 v14, 0x41e00000    # 28.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    sub-int/2addr v13, v14

    int-to-float v13, v13

    sub-float/2addr v13, v3

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    add-float/2addr v13, v14

    const/high16 v14, 0x41600000    # 14.0f

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v14

    int-to-float v14, v14

    add-float v6, v13, v14

    .line 261
    .local v6, "bitmapStartY":F
    add-float v1, v5, v4

    .line 262
    .local v1, "bitmapEndX":F
    add-float v2, v6, v3

    .line 264
    .local v2, "bitmapEndY":F
    const v13, 0x3f666666    # 0.9f

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lorg/telegram/messenger/AndroidUtilities;->getPixelsInCM(FZ)F

    move-result v10

    .line 266
    .local v10, "minSide":F
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    const/4 v14, 0x1

    if-eq v13, v14, :cond_e

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    const/4 v14, 0x5

    if-ne v13, v14, :cond_1a

    .line 267
    :cond_e
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    const/4 v14, 0x5

    if-eq v13, v14, :cond_11

    .line 268
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float/2addr v13, v8

    cmpg-float v13, v13, v10

    if-gez v13, :cond_f

    .line 269
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float v8, v13, v10

    .line 271
    :cond_f
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapX:I

    int-to-float v14, v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_10

    .line 272
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapX:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    sub-float v8, v13, v14

    .line 274
    :cond_10
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    add-float/2addr v13, v8

    cmpg-float v13, v13, v5

    if-gez v13, :cond_11

    .line 275
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    sub-float v14, v5, v14

    sub-float/2addr v14, v8

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    .line 276
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v13 .. v17}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    .line 279
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->freeformCrop:Z

    if-nez v13, :cond_15

    .line 280
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    int-to-float v14, v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_12

    .line 281
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float v8, v13, v14

    .line 283
    :cond_12
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    add-float/2addr v13, v8

    cmpg-float v13, v13, v6

    if-gez v13, :cond_13

    .line 284
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float v14, v6, v14

    sub-float/2addr v14, v8

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    .line 285
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v13 .. v17}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    .line 287
    :cond_13
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    .line 288
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 289
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 290
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    sub-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    .line 428
    :cond_14
    :goto_3
    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/ui/Components/PhotoCropView;->oldX:F

    .line 429
    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/Components/PhotoCropView;->oldY:F

    .line 430
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoCropView;->invalidate()V

    goto/16 :goto_2

    .line 292
    :cond_15
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    sub-float/2addr v13, v9

    cmpg-float v13, v13, v10

    if-gez v13, :cond_16

    .line 293
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    sub-float v9, v13, v10

    .line 295
    :cond_16
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    add-float/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    int-to-float v14, v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_17

    .line 296
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float v9, v13, v14

    .line 298
    :cond_17
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    add-float/2addr v13, v9

    cmpg-float v13, v13, v6

    if-gez v13, :cond_18

    .line 299
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float v14, v6, v14

    sub-float/2addr v14, v9

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    .line 300
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v13 .. v17}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    .line 302
    :cond_18
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    const/4 v14, 0x5

    if-eq v13, v14, :cond_19

    .line 303
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    .line 304
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 306
    :cond_19
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    add-float/2addr v13, v9

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 307
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    sub-float/2addr v13, v9

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    .line 309
    :cond_1a
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1b

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    const/4 v14, 0x6

    if-ne v13, v14, :cond_26

    .line 310
    :cond_1b
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v8

    cmpg-float v13, v13, v10

    if-gez v13, :cond_1c

    .line 311
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float/2addr v13, v10

    neg-float v8, v13

    .line 313
    :cond_1c
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapX:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_1d

    .line 314
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapX:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float v8, v13, v14

    .line 316
    :cond_1d
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    add-float/2addr v13, v8

    cmpl-float v13, v13, v1

    if-lez v13, :cond_1e

    .line 317
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    sub-float v14, v1, v14

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float/2addr v14, v15

    sub-float/2addr v14, v8

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    .line 318
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v13 .. v17}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    .line 320
    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->freeformCrop:Z

    if-nez v13, :cond_21

    .line 321
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    int-to-float v14, v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_1f

    .line 322
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    int-to-float v14, v14

    sub-float v8, v13, v14

    .line 324
    :cond_1f
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float/2addr v13, v8

    cmpg-float v13, v13, v6

    if-gez v13, :cond_20

    .line 325
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float v14, v6, v14

    add-float/2addr v14, v8

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v13 .. v17}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    .line 328
    :cond_20
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 329
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 330
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    .line 332
    :cond_21
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    const/4 v14, 0x6

    if-eq v13, v14, :cond_25

    .line 333
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    sub-float/2addr v13, v9

    cmpg-float v13, v13, v10

    if-gez v13, :cond_22

    .line 334
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    sub-float v9, v13, v10

    .line 336
    :cond_22
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    add-float/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    int-to-float v14, v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_23

    .line 337
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float v9, v13, v14

    .line 339
    :cond_23
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    add-float/2addr v13, v9

    cmpg-float v13, v13, v6

    if-gez v13, :cond_24

    .line 340
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float v14, v6, v14

    sub-float/2addr v14, v9

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    .line 341
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v13 .. v17}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    .line 343
    :cond_24
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    add-float/2addr v13, v9

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 344
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    sub-float/2addr v13, v9

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    .line 346
    :cond_25
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    goto/16 :goto_3

    .line 348
    :cond_26
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    const/4 v14, 0x3

    if-eq v13, v14, :cond_27

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    const/4 v14, 0x7

    if-ne v13, v14, :cond_31

    .line 349
    :cond_27
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float/2addr v13, v8

    cmpg-float v13, v13, v10

    if-gez v13, :cond_28

    .line 350
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float v8, v13, v10

    .line 352
    :cond_28
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapX:I

    int-to-float v14, v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_29

    .line 353
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapX:I

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    sub-float v8, v13, v14

    .line 355
    :cond_29
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    add-float/2addr v13, v8

    cmpg-float v13, v13, v5

    if-gez v13, :cond_2a

    .line 356
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    sub-float v14, v5, v14

    sub-float/2addr v14, v8

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    .line 357
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v13 .. v17}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    .line 359
    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->freeformCrop:Z

    if-nez v13, :cond_2d

    .line 360
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    sub-float/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2b

    .line 361
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    int-to-float v14, v14

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    int-to-float v14, v14

    sub-float v8, v13, v14

    .line 363
    :cond_2b
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    sub-float/2addr v13, v8

    cmpl-float v13, v13, v2

    if-lez v13, :cond_2c

    .line 364
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float v14, v2, v14

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float/2addr v14, v15

    add-float/2addr v14, v8

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    .line 365
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v13 .. v17}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    .line 367
    :cond_2c
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    .line 368
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 369
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    sub-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    .line 371
    :cond_2d
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    const/4 v14, 0x7

    if-eq v13, v14, :cond_30

    .line 372
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v13, v14

    add-float/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2e

    .line 373
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    sub-float v9, v13, v14

    .line 375
    :cond_2e
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v13, v14

    add-float/2addr v13, v9

    cmpl-float v13, v13, v2

    if-lez v13, :cond_2f

    .line 376
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float v14, v2, v14

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    sub-float/2addr v14, v15

    sub-float/2addr v14, v9

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    .line 377
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v13 .. v17}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    .line 379
    :cond_2f
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v13, v9

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    .line 380
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    cmpg-float v13, v13, v10

    if-gez v13, :cond_30

    .line 381
    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    .line 384
    :cond_30
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    .line 385
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    goto/16 :goto_3

    .line 387
    :cond_31
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    const/4 v14, 0x4

    if-eq v13, v14, :cond_32

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    const/16 v14, 0x8

    if-ne v13, v14, :cond_14

    .line 388
    :cond_32
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    const/16 v14, 0x8

    if-eq v13, v14, :cond_34

    .line 389
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapX:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_33

    .line 390
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapX:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float v8, v13, v14

    .line 392
    :cond_33
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    add-float/2addr v13, v8

    cmpl-float v13, v13, v1

    if-lez v13, :cond_34

    .line 393
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    sub-float v14, v1, v14

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float/2addr v14, v15

    sub-float/2addr v14, v8

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    .line 394
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v13 .. v17}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    .line 397
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->freeformCrop:Z

    if-nez v13, :cond_38

    .line 398
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_35

    .line 399
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float v8, v13, v14

    .line 401
    :cond_35
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v14

    add-float/2addr v13, v8

    cmpl-float v13, v13, v2

    if-lez v13, :cond_36

    .line 402
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float v14, v2, v14

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    sub-float/2addr v14, v15

    sub-float/2addr v14, v8

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    .line 403
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v13 .. v17}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    .line 405
    :cond_36
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 406
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    .line 420
    :goto_4
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    cmpg-float v13, v13, v10

    if-gez v13, :cond_37

    .line 421
    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 423
    :cond_37
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    cmpg-float v13, v13, v10

    if-gez v13, :cond_14

    .line 424
    move-object/from16 v0, p0

    iput v10, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    goto/16 :goto_3

    .line 408
    :cond_38
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v13, v14

    add-float/2addr v13, v9

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    cmpl-float v13, v13, v14

    if-lez v13, :cond_39

    .line 409
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapY:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    add-int/2addr v13, v14

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    sub-float v9, v13, v14

    .line 411
    :cond_39
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v13, v14

    add-float/2addr v13, v9

    cmpl-float v13, v13, v2

    if-lez v13, :cond_3a

    .line 412
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    sub-float v14, v2, v14

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    sub-float/2addr v14, v15

    sub-float/2addr v14, v9

    sub-float/2addr v13, v14

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    .line 413
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    move-object/from16 v0, p0

    iget v15, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v13 .. v17}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    .line 415
    :cond_3a
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    const/16 v14, 0x8

    if-eq v13, v14, :cond_3b

    .line 416
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    add-float/2addr v13, v8

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 418
    :cond_3b
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    add-float/2addr v13, v9

    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    goto/16 :goto_4

    .line 432
    .end local v1    # "bitmapEndX":F
    .end local v2    # "bitmapEndY":F
    .end local v3    # "bitmapScaledHeight":F
    .end local v4    # "bitmapScaledWidth":F
    .end local v5    # "bitmapStartX":F
    .end local v6    # "bitmapStartY":F
    .end local v8    # "diffX":F
    .end local v9    # "diffY":F
    .end local v10    # "minSide":F
    :cond_3c
    const/4 v13, 0x0

    goto/16 :goto_0
.end method

.method public setAnimationProgress(F)V
    .locals 3
    .param p1, "animationProgress"    # F

    .prologue
    const/4 v1, 0x0

    .line 624
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 625
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 626
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    .line 627
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 628
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 629
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    .line 630
    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    .line 631
    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    .line 638
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->invalidate()V

    .line 640
    :cond_0
    return-void

    .line 633
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    .line 634
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 635
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 636
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationEndValues:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationStartValues:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;IZ)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rotation"    # I
    .param p3, "freeform"    # Z

    .prologue
    const/4 v3, 0x1

    const/high16 v0, 0x44160000    # 600.0f

    const/4 v2, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 69
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapToEdit:Landroid/graphics/Bitmap;

    .line 70
    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 71
    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->draggingState:I

    .line 73
    iput v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->oldX:F

    .line 74
    iput v2, p0, Lorg/telegram/ui/Components/PhotoCropView;->oldY:F

    .line 75
    iput v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapWidth:I

    .line 76
    iput v3, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapHeight:I

    .line 77
    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    .line 78
    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 79
    iput-boolean p3, p0, Lorg/telegram/ui/Components/PhotoCropView;->freeformCrop:Z

    .line 80
    iput p2, p0, Lorg/telegram/ui/Components/PhotoCropView;->orientation:I

    .line 81
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->requestLayout()V

    .line 82
    return-void
.end method

.method public setBitmapParams(FFF)V
    .locals 0
    .param p1, "scale"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 593
    iput p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalScale:F

    .line 594
    iput p2, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalX:F

    .line 595
    iput p3, p0, Lorg/telegram/ui/Components/PhotoCropView;->bitmapGlobalY:F

    .line 596
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    .prologue
    .line 665
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    .line 666
    return-void
.end method

.method public setOrientation(I)V
    .locals 4
    .param p1, "rotation"    # I

    .prologue
    const/high16 v1, 0x44160000    # 600.0f

    const/4 v3, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    .line 85
    iput p1, p0, Lorg/telegram/ui/Components/PhotoCropView;->orientation:I

    .line 86
    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectX:F

    .line 87
    iput v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectY:F

    .line 88
    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeX:F

    .line 89
    iput v1, p0, Lorg/telegram/ui/Components/PhotoCropView;->rectSizeY:F

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->delegate:Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-interface {v0, v3, v3, v1, v2}, Lorg/telegram/ui/Components/PhotoCropView$PhotoCropViewDelegate;->needMoveImageTo(FFFZ)V

    .line 91
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoCropView;->requestLayout()V

    .line 208
    return-void
.end method

.method public startAnimationRunnable()V
    .locals 4

    .prologue
    .line 599
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 612
    :goto_0
    return-void

    .line 602
    :cond_0
    new-instance v0, Lorg/telegram/ui/Components/PhotoCropView$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/PhotoCropView$1;-><init>(Lorg/telegram/ui/Components/PhotoCropView;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    .line 611
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoCropView;->animationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method
