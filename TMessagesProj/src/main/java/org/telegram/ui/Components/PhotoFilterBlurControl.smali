.class public Lorg/telegram/ui/Components/PhotoFilterBlurControl;
.super Landroid/widget/FrameLayout;
.source "PhotoFilterBlurControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/PhotoFilterBlurControl$1;,
        Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;,
        Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;
    }
.end annotation


# static fields
.field private static final BlurInsetProximity:F

.field private static final BlurMinimumDifference:F = 0.02f

.field private static final BlurMinimumFalloff:F = 0.1f

.field private static final BlurViewCenterInset:F

.field private static final BlurViewRadiusInset:F


# instance fields
.field private final GestureStateBegan:I

.field private final GestureStateCancelled:I

.field private final GestureStateChanged:I

.field private final GestureStateEnded:I

.field private final GestureStateFailed:I

.field private activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

.field private actualAreaSize:Lorg/telegram/ui/Components/Size;

.field private angle:F

.field private arcPaint:Landroid/graphics/Paint;

.field private arcRect:Landroid/graphics/RectF;

.field private centerPoint:Lorg/telegram/ui/Components/Point;

.field private checkForMoving:Z

.field private checkForZooming:Z

.field private delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

.field private falloff:F

.field private isMoving:Z

.field private isZooming:Z

.field private paint:Landroid/graphics/Paint;

.field private pointerScale:F

.field private pointerStartX:F

.field private pointerStartY:F

.field private size:F

.field private startCenterPoint:Lorg/telegram/ui/Components/Point;

.field private startDistance:F

.field private startPointerDistance:F

.field private startRadius:F

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x41f00000    # 30.0f

    .line 26
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurInsetProximity:F

    .line 29
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    .line 30
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v1, 0x1

    .line 75
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateBegan:I

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateChanged:I

    .line 43
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateEnded:I

    .line 44
    const/4 v0, 0x4

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateCancelled:I

    .line 45
    const/4 v0, 0x5

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->GestureStateFailed:I

    .line 48
    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Point;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    .line 51
    new-instance v0, Lorg/telegram/ui/Components/Size;

    invoke-direct {v0}, Lorg/telegram/ui/Components/Size;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    .line 52
    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-direct {v0, v2, v2}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    .line 53
    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    .line 54
    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    .line 64
    iput-boolean v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    .line 69
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    .line 70
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setWillNotDraw(Z)V

    .line 77
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    return-void
.end method

.method private degreesToRadians(F)F
    .locals 2
    .param p1, "degrees"    # F

    .prologue
    .line 103
    const v0, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, p1

    const/high16 v1, 0x43340000    # 180.0f

    div-float/2addr v0, v1

    return v0
.end method

.method private getActualCenterPoint()Lorg/telegram/ui/Components/Point;
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 489
    new-instance v0, Lorg/telegram/ui/Components/Point;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v2, v2, Lorg/telegram/ui/Components/Size;->width:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v5

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    iget v2, v2, Lorg/telegram/ui/Components/Point;->x:F

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v3, v3, Lorg/telegram/ui/Components/Size;->width:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v3, v3, Lorg/telegram/ui/Components/Size;->height:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v3, v3, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v4, v4, Lorg/telegram/ui/Components/Size;->height:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v5

    sub-float/2addr v2, v3

    iget-object v3, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    iget v3, v3, Lorg/telegram/ui/Components/Point;->y:F

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v4, v4, Lorg/telegram/ui/Components/Size;->width:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    return-object v0
.end method

.method private getActualInnerRadius()F
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v1, v1, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    mul-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    goto :goto_0
.end method

.method private getActualOuterRadius()F
    .locals 2

    .prologue
    .line 497
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v1, v1, Lorg/telegram/ui/Components/Size;->height:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    :goto_0
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    mul-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    goto :goto_0
.end method

.method private getDistance(Landroid/view/MotionEvent;)F
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 93
    const/4 v4, 0x0

    .line 99
    :goto_0
    return v4

    .line 95
    :cond_0
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 96
    .local v0, "x1":F
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 97
    .local v2, "y1":F
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 98
    .local v1, "x2":F
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 99
    .local v3, "y2":F
    sub-float v4, v0, v1

    sub-float v5, v0, v1

    mul-float/2addr v4, v5

    sub-float v5, v2, v3

    sub-float v6, v2, v3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    goto :goto_0
.end method

.method private handlePan(ILandroid/view/MotionEvent;)V
    .locals 32
    .param p1, "state"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    .line 199
    .local v14, "locationX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    .line 200
    .local v15, "locationY":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualCenterPoint()Lorg/telegram/ui/Components/Point;

    move-result-object v5

    .line 201
    .local v5, "actualCenterPoint":Lorg/telegram/ui/Components/Point;
    new-instance v10, Lorg/telegram/ui/Components/Point;

    iget v0, v5, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v24, v0

    sub-float v24, v14, v24

    iget v0, v5, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v25, v0

    sub-float v25, v15, v25

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-direct {v10, v0, v1}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    .line 202
    .local v10, "delta":Lorg/telegram/ui/Components/Point;
    iget v0, v10, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v24, v0

    iget v0, v10, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v25, v0

    mul-float v24, v24, v25

    iget v0, v10, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v25, v0

    iget v0, v10, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v19, v0

    .line 203
    .local v19, "radialDistance":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    move/from16 v25, v0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    move/from16 v21, v0

    .line 204
    .local v21, "shorterSide":F
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    move/from16 v24, v0

    mul-float v12, v21, v24

    .line 205
    .local v12, "innerRadius":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    move/from16 v24, v0

    mul-float v17, v21, v24

    .line 206
    .local v17, "outerRadius":F
    iget v0, v10, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v26

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    iget v0, v10, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    add-double v24, v24, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->abs(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v11, v0

    .line 208
    .local v11, "distance":F
    packed-switch p1, :pswitch_data_0

    .line 382
    :cond_0
    :goto_1
    return-void

    .line 203
    .end local v11    # "distance":F
    .end local v12    # "innerRadius":F
    .end local v17    # "outerRadius":F
    .end local v21    # "shorterSide":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v21, v0

    goto :goto_0

    .line 210
    .restart local v11    # "distance":F
    .restart local v12    # "innerRadius":F
    .restart local v17    # "outerRadius":F
    .restart local v21    # "shorterSide":F
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    .line 213
    sub-float v24, v17, v12

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    sget v25, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurInsetProximity:F

    cmpg-float v24, v24, v25

    if-gez v24, :cond_3

    const/4 v8, 0x1

    .line 214
    .local v8, "close":Z
    :goto_2
    if-eqz v8, :cond_4

    const/4 v13, 0x0

    .line 215
    .local v13, "innerRadiusOuterInset":F
    :goto_3
    if-eqz v8, :cond_5

    const/16 v18, 0x0

    .line 217
    .local v18, "outerRadiusInnerInset":F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    move/from16 v24, v0

    if-nez v24, :cond_a

    .line 218
    sget v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    cmpg-float v24, v19, v24

    if-gez v24, :cond_6

    .line 219
    sget-object v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlCenter:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 220
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    .line 246
    :cond_2
    :goto_5
    const/16 v24, 0x1

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setSelected(ZZ)V

    goto :goto_1

    .line 213
    .end local v8    # "close":Z
    .end local v13    # "innerRadiusOuterInset":F
    .end local v18    # "outerRadiusInnerInset":F
    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    .line 214
    .restart local v8    # "close":Z
    :cond_4
    sget v13, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    goto :goto_3

    .line 215
    .restart local v13    # "innerRadiusOuterInset":F
    :cond_5
    sget v18, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    goto :goto_4

    .line 221
    .restart local v18    # "outerRadiusInnerInset":F
    :cond_6
    sget v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v24, v12, v24

    cmpl-float v24, v11, v24

    if-lez v24, :cond_7

    add-float v24, v12, v13

    cmpg-float v24, v11, v24

    if-gez v24, :cond_7

    .line 222
    sget-object v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlInnerRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 223
    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    .line 224
    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    goto :goto_5

    .line 225
    :cond_7
    sub-float v24, v17, v18

    cmpl-float v24, v11, v24

    if-lez v24, :cond_8

    sget v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    add-float v24, v24, v17

    cmpg-float v24, v11, v24

    if-gez v24, :cond_8

    .line 226
    sget-object v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlOuterRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 227
    move-object/from16 v0, p0

    iput v11, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    .line 228
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    goto :goto_5

    .line 229
    :cond_8
    sget v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v24, v12, v24

    cmpg-float v24, v11, v24

    if-lez v24, :cond_9

    sget v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    add-float v24, v24, v17

    cmpl-float v24, v11, v24

    if-ltz v24, :cond_2

    .line 230
    :cond_9
    sget-object v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlRotation:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    goto :goto_5

    .line 232
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 233
    sget v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    cmpg-float v24, v19, v24

    if-gez v24, :cond_b

    .line 234
    sget-object v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlCenter:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 235
    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    goto/16 :goto_5

    .line 236
    :cond_b
    sget v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v24, v12, v24

    cmpl-float v24, v19, v24

    if-lez v24, :cond_c

    add-float v24, v12, v13

    cmpg-float v24, v19, v24

    if-gez v24, :cond_c

    .line 237
    sget-object v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlInnerRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 238
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    .line 239
    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    goto/16 :goto_5

    .line 240
    :cond_c
    sub-float v24, v17, v18

    cmpl-float v24, v19, v24

    if-lez v24, :cond_2

    sget v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    add-float v24, v24, v17

    cmpg-float v24, v19, v24

    if-gez v24, :cond_2

    .line 241
    sget-object v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlOuterRadius:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 242
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    .line 243
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    goto/16 :goto_5

    .line 251
    .end local v8    # "close":Z
    .end local v13    # "innerRadiusOuterInset":F
    .end local v18    # "outerRadiusInnerInset":F
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    move/from16 v24, v0

    if-nez v24, :cond_19

    .line 252
    sget-object v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl$1;->$SwitchMap$org$telegram$ui$Components$PhotoFilterBlurControl$BlurViewActiveControl:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->ordinal()I

    move-result v25

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_1

    .line 363
    :cond_d
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->invalidate()V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v28

    const v29, 0x3fc90fdb

    add-float v28, v28, v29

    invoke-interface/range {v24 .. v28}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;->valueChanged(Lorg/telegram/ui/Components/Point;FFF)V

    goto/16 :goto_1

    .line 254
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    move/from16 v24, v0

    sub-float v22, v14, v24

    .line 255
    .local v22, "translationX":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    move/from16 v24, v0

    sub-float v23, v15, v24

    .line 256
    .local v23, "translationY":F
    new-instance v4, Lorg/telegram/ui/Components/Rect;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    move/from16 v27, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    .line 257
    .local v4, "actualArea":Lorg/telegram/ui/Components/Rect;
    new-instance v16, Lorg/telegram/ui/Components/Point;

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->x:F

    move/from16 v24, v0

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->x:F

    move/from16 v25, v0

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->width:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v26, v0

    add-float v26, v26, v22

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(FF)F

    move-result v24

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->y:F

    move/from16 v25, v0

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->y:F

    move/from16 v26, v0

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->height:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v27, v0

    add-float v27, v27, v23

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(FF)F

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    .line 258
    .local v16, "newPoint":Lorg/telegram/ui/Components/Point;
    new-instance v24, Lorg/telegram/ui/Components/Point;

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v25, v0

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->x:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v26, v0

    div-float v25, v25, v26

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v26, v0

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->y:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    add-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v27, v0

    div-float v26, v26, v27

    invoke-direct/range {v24 .. v26}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    goto/16 :goto_6

    .line 263
    .end local v4    # "actualArea":Lorg/telegram/ui/Components/Rect;
    .end local v16    # "newPoint":Lorg/telegram/ui/Components/Point;
    .end local v22    # "translationX":F
    .end local v23    # "translationY":F
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    move/from16 v24, v0

    sub-float v9, v11, v24

    .line 264
    .local v9, "d":F
    const v24, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    move/from16 v25, v0

    add-float v25, v25, v9

    div-float v25, v25, v21

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(FF)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    move/from16 v25, v0

    const v26, 0x3ca3d70a    # 0.02f

    sub-float v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(FF)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    goto/16 :goto_6

    .line 269
    .end local v9    # "d":F
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    move/from16 v24, v0

    sub-float v9, v11, v24

    .line 270
    .restart local v9    # "d":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    move/from16 v24, v0

    const v25, 0x3ca3d70a    # 0.02f

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    move/from16 v25, v0

    add-float v25, v25, v9

    div-float v25, v25, v21

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(FF)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    goto/16 :goto_6

    .line 275
    .end local v9    # "d":F
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    move/from16 v24, v0

    sub-float v22, v14, v24

    .line 276
    .restart local v22    # "translationX":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    move/from16 v24, v0

    sub-float v23, v15, v24

    .line 278
    .restart local v23    # "translationY":F
    const/4 v7, 0x0

    .line 280
    .local v7, "clockwise":Z
    iget v0, v5, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v24, v0

    cmpl-float v24, v14, v24

    if-lez v24, :cond_f

    const/16 v20, 0x1

    .line 281
    .local v20, "right":Z
    :goto_7
    iget v0, v5, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v24, v0

    cmpl-float v24, v15, v24

    if-lez v24, :cond_10

    const/4 v6, 0x1

    .line 283
    .local v6, "bottom":Z
    :goto_8
    if-nez v20, :cond_12

    if-nez v6, :cond_12

    .line 284
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v24

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v25

    cmpl-float v24, v24, v25

    if-lez v24, :cond_11

    .line 285
    const/16 v24, 0x0

    cmpg-float v24, v23, v24

    if-gez v24, :cond_e

    .line 286
    const/4 v7, 0x1

    .line 325
    :cond_e
    :goto_9
    mul-float v24, v22, v22

    mul-float v25, v23, v23

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v9, v0

    .line 326
    .restart local v9    # "d":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    move/from16 v25, v0

    if-eqz v7, :cond_18

    const/16 v24, 0x1

    :goto_a
    mul-int/lit8 v24, v24, 0x2

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v9

    const v26, 0x40490fdb    # (float)Math.PI

    div-float v24, v24, v26

    const v26, 0x3f933333    # 1.15f

    div-float v24, v24, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    .line 328
    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    .line 329
    move-object/from16 v0, p0

    iput v15, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    goto/16 :goto_6

    .line 280
    .end local v6    # "bottom":Z
    .end local v9    # "d":F
    .end local v20    # "right":Z
    :cond_f
    const/16 v20, 0x0

    goto :goto_7

    .line 281
    .restart local v20    # "right":Z
    :cond_10
    const/4 v6, 0x0

    goto :goto_8

    .line 289
    .restart local v6    # "bottom":Z
    :cond_11
    const/16 v24, 0x0

    cmpl-float v24, v22, v24

    if-lez v24, :cond_e

    .line 290
    const/4 v7, 0x1

    goto :goto_9

    .line 293
    :cond_12
    if-eqz v20, :cond_14

    if-nez v6, :cond_14

    .line 294
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v24

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v25

    cmpl-float v24, v24, v25

    if-lez v24, :cond_13

    .line 295
    const/16 v24, 0x0

    cmpl-float v24, v23, v24

    if-lez v24, :cond_e

    .line 296
    const/4 v7, 0x1

    goto :goto_9

    .line 299
    :cond_13
    const/16 v24, 0x0

    cmpl-float v24, v22, v24

    if-lez v24, :cond_e

    .line 300
    const/4 v7, 0x1

    goto :goto_9

    .line 303
    :cond_14
    if-eqz v20, :cond_16

    if-eqz v6, :cond_16

    .line 304
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v24

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v25

    cmpl-float v24, v24, v25

    if-lez v24, :cond_15

    .line 305
    const/16 v24, 0x0

    cmpl-float v24, v23, v24

    if-lez v24, :cond_e

    .line 306
    const/4 v7, 0x1

    goto/16 :goto_9

    .line 309
    :cond_15
    const/16 v24, 0x0

    cmpg-float v24, v22, v24

    if-gez v24, :cond_e

    .line 310
    const/4 v7, 0x1

    goto/16 :goto_9

    .line 314
    :cond_16
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v24

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v25

    cmpl-float v24, v24, v25

    if-lez v24, :cond_17

    .line 315
    const/16 v24, 0x0

    cmpg-float v24, v23, v24

    if-gez v24, :cond_e

    .line 316
    const/4 v7, 0x1

    goto/16 :goto_9

    .line 319
    :cond_17
    const/16 v24, 0x0

    cmpg-float v24, v22, v24

    if-gez v24, :cond_e

    .line 320
    const/4 v7, 0x1

    goto/16 :goto_9

    .line 326
    .restart local v9    # "d":F
    :cond_18
    const/16 v24, 0x0

    goto/16 :goto_a

    .line 336
    .end local v6    # "bottom":Z
    .end local v7    # "clockwise":Z
    .end local v9    # "d":F
    .end local v20    # "right":Z
    .end local v22    # "translationX":F
    .end local v23    # "translationY":F
    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    .line 337
    sget-object v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl$1;->$SwitchMap$org$telegram$ui$Components$PhotoFilterBlurControl$BlurViewActiveControl:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->ordinal()I

    move-result v25

    aget v24, v24, v25

    packed-switch v24, :pswitch_data_2

    goto/16 :goto_6

    .line 339
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartX:F

    move/from16 v24, v0

    sub-float v22, v14, v24

    .line 340
    .restart local v22    # "translationX":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerStartY:F

    move/from16 v24, v0

    sub-float v23, v15, v24

    .line 341
    .restart local v23    # "translationY":F
    new-instance v4, Lorg/telegram/ui/Components/Rect;

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    move/from16 v27, v0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v4, v0, v1, v2, v3}, Lorg/telegram/ui/Components/Rect;-><init>(FFFF)V

    .line 342
    .restart local v4    # "actualArea":Lorg/telegram/ui/Components/Rect;
    new-instance v16, Lorg/telegram/ui/Components/Point;

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->x:F

    move/from16 v24, v0

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->x:F

    move/from16 v25, v0

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->width:F

    move/from16 v26, v0

    add-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v26, v0

    add-float v26, v26, v22

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(FF)F

    move-result v25

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(FF)F

    move-result v24

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->y:F

    move/from16 v25, v0

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->y:F

    move/from16 v26, v0

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->height:F

    move/from16 v27, v0

    add-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startCenterPoint:Lorg/telegram/ui/Components/Point;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v27, v0

    add-float v27, v27, v23

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(FF)F

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(FF)F

    move-result v25

    move-object/from16 v0, v16

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    .line 343
    .restart local v16    # "newPoint":Lorg/telegram/ui/Components/Point;
    new-instance v24, Lorg/telegram/ui/Components/Point;

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/Components/Point;->x:F

    move/from16 v25, v0

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->x:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v26, v0

    div-float v25, v25, v26

    move-object/from16 v0, v16

    iget v0, v0, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v26, v0

    iget v0, v4, Lorg/telegram/ui/Components/Rect;->y:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lorg/telegram/ui/Components/Size;->height:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    add-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lorg/telegram/ui/Components/Size;->width:F

    move/from16 v27, v0

    div-float v26, v26, v27

    invoke-direct/range {v24 .. v26}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    goto/16 :goto_6

    .line 348
    .end local v4    # "actualArea":Lorg/telegram/ui/Components/Rect;
    .end local v16    # "newPoint":Lorg/telegram/ui/Components/Point;
    .end local v22    # "translationX":F
    .end local v23    # "translationY":F
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    move/from16 v24, v0

    sub-float v9, v19, v24

    .line 349
    .restart local v9    # "d":F
    const v24, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    move/from16 v25, v0

    add-float v25, v25, v9

    div-float v25, v25, v21

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(FF)F

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    move/from16 v25, v0

    const v26, 0x3ca3d70a    # 0.02f

    sub-float v25, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(FF)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    goto/16 :goto_6

    .line 354
    .end local v9    # "d":F
    :pswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startDistance:F

    move/from16 v24, v0

    sub-float v9, v19, v24

    .line 355
    .restart local v9    # "d":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    move/from16 v24, v0

    const v25, 0x3ca3d70a    # 0.02f

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startRadius:F

    move/from16 v25, v0

    add-float v25, v25, v9

    div-float v25, v25, v21

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->max(FF)F

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    goto/16 :goto_6

    .line 374
    .end local v9    # "d":F
    :pswitch_9
    sget-object v24, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlNone:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 375
    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setSelected(ZZ)V

    goto/16 :goto_1

    .line 208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_9
        :pswitch_9
        :pswitch_9
    .end packed-switch

    .line 252
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 337
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private handlePinch(ILandroid/view/MotionEvent;)V
    .locals 7
    .param p1, "state"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 386
    packed-switch p1, :pswitch_data_0

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 388
    :pswitch_0
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getDistance(Landroid/view/MotionEvent;)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startPointerDistance:F

    .line 389
    iput v4, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    .line 390
    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlWholeArea:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 391
    invoke-direct {p0, v2, v2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setSelected(ZZ)V

    .line 394
    :pswitch_1
    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getDistance(Landroid/view/MotionEvent;)F

    move-result v0

    .line 395
    .local v0, "newDistance":F
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startPointerDistance:F

    sub-float v2, v0, v2

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->density:F

    div-float/2addr v2, v3

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    .line 397
    const v1, 0x3dcccccd    # 0.1f

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    .line 398
    iget v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    const v2, 0x3ca3d70a    # 0.02f

    add-float/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    mul-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    .line 400
    iput v4, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->pointerScale:F

    .line 401
    iput v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->startPointerDistance:F

    .line 403
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->invalidate()V

    .line 405
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    if-eqz v1, :cond_0

    .line 406
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    iget-object v2, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->centerPoint:Lorg/telegram/ui/Components/Point;

    iget v3, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->falloff:F

    iget v4, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->size:F

    iget v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-direct {p0, v5}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v5

    const v6, 0x3fc90fdb

    add-float/2addr v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;->valueChanged(Lorg/telegram/ui/Components/Point;FFF)V

    goto :goto_0

    .line 414
    .end local v0    # "newDistance":F
    :pswitch_2
    sget-object v1, Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;->BlurViewActiveControlNone:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    iput-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->activeControl:Lorg/telegram/ui/Components/PhotoFilterBlurControl$BlurViewActiveControl;

    .line 415
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->setSelected(ZZ)V

    goto :goto_0

    .line 386
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private setSelected(ZZ)V
    .locals 0
    .param p1, "selected"    # Z
    .param p2, "animated"    # Z

    .prologue
    .line 433
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 442
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 443
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualCenterPoint()Lorg/telegram/ui/Components/Point;

    move-result-object v6

    .line 444
    .local v6, "centerPoint":Lorg/telegram/ui/Components/Point;
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualInnerRadius()F

    move-result v8

    .line 445
    .local v8, "innerRadius":F
    invoke-direct {p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualOuterRadius()F

    move-result v10

    .line 446
    .local v10, "outerRadius":F
    iget v0, v6, Lorg/telegram/ui/Components/Point;->x:F

    iget v1, v6, Lorg/telegram/ui/Components/Point;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 448
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    if-nez v0, :cond_1

    .line 449
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 451
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v12, v0

    .line 452
    .local v12, "space":F
    const/high16 v0, 0x41400000    # 12.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v9, v0

    .line 453
    .local v9, "length":F
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v13, v0

    .line 454
    .local v13, "thickness":F
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v0, 0x1e

    if-ge v7, v0, :cond_0

    .line 455
    int-to-float v0, v7

    add-float v1, v9, v12

    mul-float/2addr v1, v0

    neg-float v2, v8

    int-to-float v0, v7

    add-float v4, v9, v12

    mul-float/2addr v0, v4

    add-float v3, v0, v9

    sub-float v4, v13, v8

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 456
    neg-int v0, v7

    int-to-float v0, v0

    add-float v1, v9, v12

    mul-float/2addr v0, v1

    sub-float/2addr v0, v12

    sub-float v1, v0, v9

    neg-float v2, v8

    neg-int v0, v7

    int-to-float v0, v0

    add-float v4, v9, v12

    mul-float/2addr v0, v4

    sub-float v3, v0, v12

    sub-float v4, v13, v8

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 458
    int-to-float v0, v7

    add-float v1, v9, v12

    mul-float/2addr v1, v0

    int-to-float v0, v7

    add-float v2, v9, v12

    mul-float/2addr v0, v2

    add-float v3, v9, v0

    add-float v4, v13, v8

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 459
    neg-int v0, v7

    int-to-float v0, v0

    add-float v1, v9, v12

    mul-float/2addr v0, v1

    sub-float/2addr v0, v12

    sub-float v1, v0, v9

    neg-int v0, v7

    int-to-float v0, v0

    add-float v2, v9, v12

    mul-float/2addr v0, v2

    sub-float v3, v0, v12

    add-float v4, v13, v8

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 454
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 462
    :cond_0
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    int-to-float v9, v0

    .line 463
    const/4 v7, 0x0

    :goto_1
    const/16 v0, 0x40

    if-ge v7, v0, :cond_3

    .line 464
    int-to-float v0, v7

    add-float v1, v9, v12

    mul-float/2addr v1, v0

    neg-float v2, v10

    int-to-float v0, v7

    add-float v4, v9, v12

    mul-float/2addr v0, v4

    add-float v3, v9, v0

    sub-float v4, v13, v10

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 465
    neg-int v0, v7

    int-to-float v0, v0

    add-float v1, v9, v12

    mul-float/2addr v0, v1

    sub-float/2addr v0, v12

    sub-float v1, v0, v9

    neg-float v2, v10

    neg-int v0, v7

    int-to-float v0, v0

    add-float v4, v9, v12

    mul-float/2addr v0, v4

    sub-float v3, v0, v12

    sub-float v4, v13, v10

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 467
    int-to-float v0, v7

    add-float v1, v9, v12

    mul-float/2addr v1, v0

    int-to-float v0, v7

    add-float v2, v9, v12

    mul-float/2addr v0, v2

    add-float v3, v9, v0

    add-float v4, v13, v10

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 468
    neg-int v0, v7

    int-to-float v0, v0

    add-float v1, v9, v12

    mul-float/2addr v0, v1

    sub-float/2addr v0, v12

    sub-float v1, v0, v9

    neg-int v0, v7

    int-to-float v0, v0

    add-float v2, v9, v12

    mul-float/2addr v0, v2

    sub-float v3, v0, v12

    add-float v4, v13, v10

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 463
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 470
    .end local v7    # "i":I
    .end local v9    # "length":F
    .end local v12    # "space":F
    .end local v13    # "thickness":F
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 471
    const v11, 0x40c4cccd    # 6.15f

    .line 472
    .local v11, "radSpace":F
    const v3, 0x41233333    # 10.2f

    .line 473
    .local v3, "radLen":F
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    neg-float v1, v8

    neg-float v2, v8

    invoke-virtual {v0, v1, v2, v8, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 474
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    const/16 v0, 0x16

    if-ge v7, v0, :cond_2

    .line 475
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    int-to-float v0, v7

    add-float v2, v11, v3

    mul-float/2addr v2, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 474
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 478
    :cond_2
    const v11, 0x400147ae    # 2.02f

    .line 479
    const v3, 0x40666666    # 3.6f

    .line 480
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    neg-float v1, v10

    neg-float v2, v10

    invoke-virtual {v0, v1, v2, v10, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 481
    const/4 v7, 0x0

    :goto_3
    const/16 v0, 0x40

    if-ge v7, v0, :cond_3

    .line 482
    iget-object v1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcRect:Landroid/graphics/RectF;

    int-to-float v0, v7

    add-float v2, v11, v3

    mul-float/2addr v2, v0

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->arcPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 481
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 485
    .end local v3    # "radLen":F
    .end local v7    # "i":I
    .end local v11    # "radSpace":F
    :cond_3
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 486
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 22
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 110
    .local v2, "action":I
    packed-switch v2, :pswitch_data_0

    .line 194
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v14, 0x1

    return v14

    .line 113
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_c

    .line 114
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-nez v14, :cond_0

    .line 115
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 116
    .local v9, "locationX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 117
    .local v10, "locationY":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualCenterPoint()Lorg/telegram/ui/Components/Point;

    move-result-object v3

    .line 118
    .local v3, "centerPoint":Lorg/telegram/ui/Components/Point;
    new-instance v5, Lorg/telegram/ui/Components/Point;

    iget v14, v3, Lorg/telegram/ui/Components/Point;->x:F

    sub-float v14, v9, v14

    iget v15, v3, Lorg/telegram/ui/Components/Point;->y:F

    sub-float v15, v10, v15

    invoke-direct {v5, v14, v15}, Lorg/telegram/ui/Components/Point;-><init>(FF)V

    .line 119
    .local v5, "delta":Lorg/telegram/ui/Components/Point;
    iget v14, v5, Lorg/telegram/ui/Components/Point;->x:F

    iget v15, v5, Lorg/telegram/ui/Components/Point;->x:F

    mul-float/2addr v14, v15

    iget v15, v5, Lorg/telegram/ui/Components/Point;->y:F

    iget v0, v5, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v13, v14

    .line 120
    .local v13, "radialDistance":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualInnerRadius()F

    move-result v7

    .line 121
    .local v7, "innerRadius":F
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->getActualOuterRadius()F

    move-result v11

    .line 122
    .local v11, "outerRadius":F
    sub-float v14, v11, v7

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    sget v15, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurInsetProximity:F

    cmpg-float v14, v14, v15

    if-gez v14, :cond_2

    const/4 v4, 0x1

    .line 123
    .local v4, "close":Z
    :goto_1
    if-eqz v4, :cond_3

    const/4 v8, 0x0

    .line 124
    .local v8, "innerRadiusOuterInset":F
    :goto_2
    if-eqz v4, :cond_4

    const/4 v12, 0x0

    .line 126
    .local v12, "outerRadiusInnerInset":F
    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    if-nez v14, :cond_9

    .line 127
    iget v14, v5, Lorg/telegram/ui/Components/Point;->x:F

    float-to-double v14, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    iget v0, v5, Lorg/telegram/ui/Components/Point;->y:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->angle:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->degreesToRadians(F)F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    double-to-float v6, v14

    .line 128
    .local v6, "distance":F
    sget v14, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    cmpg-float v14, v13, v14

    if-gez v14, :cond_5

    .line 129
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    .line 146
    .end local v6    # "distance":F
    :cond_1
    :goto_4
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    .line 147
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-eqz v14, :cond_0

    .line 148
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePan(ILandroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 122
    .end local v4    # "close":Z
    .end local v8    # "innerRadiusOuterInset":F
    .end local v12    # "outerRadiusInnerInset":F
    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .line 123
    .restart local v4    # "close":Z
    :cond_3
    sget v8, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    goto :goto_2

    .line 124
    .restart local v8    # "innerRadiusOuterInset":F
    :cond_4
    sget v12, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    goto :goto_3

    .line 130
    .restart local v6    # "distance":F
    .restart local v12    # "outerRadiusInnerInset":F
    :cond_5
    sget v14, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v14, v7, v14

    cmpl-float v14, v6, v14

    if-lez v14, :cond_6

    add-float v14, v7, v8

    cmpg-float v14, v6, v14

    if-gez v14, :cond_6

    .line 131
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    .line 132
    :cond_6
    sub-float v14, v11, v12

    cmpl-float v14, v6, v14

    if-lez v14, :cond_7

    sget v14, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    add-float/2addr v14, v11

    cmpg-float v14, v6, v14

    if-gez v14, :cond_7

    .line 133
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    .line 134
    :cond_7
    sget v14, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v14, v7, v14

    cmpg-float v14, v6, v14

    if-lez v14, :cond_8

    sget v14, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    add-float/2addr v14, v11

    cmpl-float v14, v6, v14

    if-ltz v14, :cond_1

    .line 135
    :cond_8
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    .line 137
    .end local v6    # "distance":F
    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 138
    sget v14, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewCenterInset:F

    cmpg-float v14, v13, v14

    if-gez v14, :cond_a

    .line 139
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    .line 140
    :cond_a
    sget v14, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    sub-float v14, v7, v14

    cmpl-float v14, v13, v14

    if-lez v14, :cond_b

    add-float v14, v7, v8

    cmpg-float v14, v13, v14

    if-gez v14, :cond_b

    .line 141
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto :goto_4

    .line 142
    :cond_b
    sub-float v14, v11, v12

    cmpl-float v14, v13, v14

    if-lez v14, :cond_1

    sget v14, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->BlurViewRadiusInset:F

    add-float/2addr v14, v11

    cmpg-float v14, v13, v14

    if-gez v14, :cond_1

    .line 143
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    goto/16 :goto_4

    .line 152
    .end local v3    # "centerPoint":Lorg/telegram/ui/Components/Point;
    .end local v4    # "close":Z
    .end local v5    # "delta":Lorg/telegram/ui/Components/Point;
    .end local v7    # "innerRadius":F
    .end local v8    # "innerRadiusOuterInset":F
    .end local v9    # "locationX":F
    .end local v10    # "locationY":F
    .end local v11    # "outerRadius":F
    .end local v12    # "outerRadiusInnerInset":F
    .end local v13    # "radialDistance":F
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-eqz v14, :cond_d

    .line 153
    const/4 v14, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePan(ILandroid/view/MotionEvent;)V

    .line 154
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    .line 155
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    .line 157
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_e

    .line 158
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForZooming:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    if-nez v14, :cond_0

    .line 159
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePinch(ILandroid/view/MotionEvent;)V

    .line 160
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    goto/16 :goto_0

    .line 163
    :cond_e
    const/4 v14, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePinch(ILandroid/view/MotionEvent;)V

    .line 164
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForZooming:Z

    .line 165
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    goto/16 :goto_0

    .line 174
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-eqz v14, :cond_10

    .line 175
    const/4 v14, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePan(ILandroid/view/MotionEvent;)V

    .line 176
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    .line 181
    :cond_f
    :goto_5
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForMoving:Z

    .line 182
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->checkForZooming:Z

    goto/16 :goto_0

    .line 177
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    if-eqz v14, :cond_f

    .line 178
    const/4 v14, 0x3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePinch(ILandroid/view/MotionEvent;)V

    .line 179
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    goto :goto_5

    .line 187
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isMoving:Z

    if-eqz v14, :cond_11

    .line 188
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePan(ILandroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 189
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->isZooming:Z

    if-eqz v14, :cond_0

    .line 190
    const/4 v14, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v14, v1}, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->handlePinch(ILandroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setActualAreaSize(FF)V
    .locals 1
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    .line 436
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iput p1, v0, Lorg/telegram/ui/Components/Size;->width:F

    .line 437
    iget-object v0, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->actualAreaSize:Lorg/telegram/ui/Components/Size;

    iput p2, v0, Lorg/telegram/ui/Components/Size;->height:F

    .line 438
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->delegate:Lorg/telegram/ui/Components/PhotoFilterBlurControl$PhotoFilterLinearBlurControlDelegate;

    .line 89
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "blurType"    # I

    .prologue
    .line 84
    iput p1, p0, Lorg/telegram/ui/Components/PhotoFilterBlurControl;->type:I

    .line 85
    return-void
.end method
