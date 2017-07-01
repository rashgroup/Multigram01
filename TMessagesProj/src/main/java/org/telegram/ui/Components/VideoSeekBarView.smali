.class public Lorg/telegram/ui/Components/VideoSeekBarView;
.super Landroid/view/View;
.source "VideoSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;
    }
.end annotation


# static fields
.field private static innerPaint1:Landroid/graphics/Paint;

.field private static thumbDrawable1:Landroid/graphics/drawable/Drawable;

.field private static thumbHeight:I

.field private static thumbWidth:I


# instance fields
.field public delegate:Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;

.field private pressed:Z

.field private progress:F

.field private thumbDX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/Components/VideoSeekBarView;->innerPaint1:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    iput v1, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbDX:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->progress:F

    .line 30
    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->pressed:Z

    .line 48
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoSeekBarView;->init(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v1, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbDX:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->progress:F

    .line 30
    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->pressed:Z

    .line 53
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoSeekBarView;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput v1, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbDX:I

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->progress:F

    .line 30
    iput-boolean v1, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->pressed:Z

    .line 58
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/VideoSeekBarView;->init(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbDrawable1:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0202b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbDrawable1:Landroid/graphics/drawable/Drawable;

    .line 40
    sget-object v0, Lorg/telegram/ui/Components/VideoSeekBarView;->innerPaint1:Landroid/graphics/Paint;

    const v1, -0x66666667

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    sget-object v0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbDrawable1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    .line 42
    sget-object v0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbDrawable1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sput v0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbHeight:I

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->progress:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 119
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredHeight()I

    move-result v0

    sget v1, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v7, v0, 0x2

    .line 120
    .local v7, "y":I
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredWidth()I

    move-result v0

    sget v1, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->progress:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 121
    .local v6, "thumbX":I
    sget v0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v1, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredWidth()I

    move-result v0

    sget v3, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    add-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Components/VideoSeekBarView;->innerPaint1:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 122
    sget-object v0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbDrawable1:Landroid/graphics/drawable/Drawable;

    sget v1, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    add-int/2addr v1, v6

    sget v2, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbHeight:I

    add-int/2addr v2, v7

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    sget-object v0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbDrawable1:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 124
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 63
    if-nez p1, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v4

    .line 66
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 67
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 68
    .local v3, "y":F
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredWidth()I

    move-result v6

    sget v7, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->progress:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v1, v6

    .line 69
    .local v1, "thumbX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_2

    .line 70
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredHeight()I

    move-result v6

    sget v7, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    sub-int/2addr v6, v7

    div-int/lit8 v0, v6, 0x2

    .line 71
    .local v0, "additionWidth":I
    int-to-float v6, v0

    sub-float v6, v1, v6

    cmpg-float v6, v6, v2

    if-gtz v6, :cond_0

    sget v6, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    int-to-float v6, v6

    add-float/2addr v6, v1

    int-to-float v7, v0

    add-float/2addr v6, v7

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_0

    cmpl-float v6, v3, v8

    if-ltz v6, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_0

    .line 72
    iput-boolean v5, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->pressed:Z

    .line 73
    sub-float v4, v2, v1

    float-to-int v4, v4

    iput v4, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbDX:I

    .line 74
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 75
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->invalidate()V

    move v4, v5

    .line 76
    goto :goto_0

    .line 78
    .end local v0    # "additionWidth":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v6, v5, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    .line 79
    :cond_3
    iget-boolean v6, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->pressed:Z

    if-eqz v6, :cond_0

    .line 80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v5, :cond_4

    iget-object v6, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->delegate:Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;

    if-eqz v6, :cond_4

    .line 81
    iget-object v6, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->delegate:Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredWidth()I

    move-result v7

    sget v8, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    div-float v7, v1, v7

    invoke-interface {v6, v7}, Lorg/telegram/ui/Components/VideoSeekBarView$SeekBarDelegate;->onSeekBarDrag(F)V

    .line 83
    :cond_4
    iput-boolean v4, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->pressed:Z

    .line 84
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->invalidate()V

    move v4, v5

    .line 85
    goto/16 :goto_0

    .line 87
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 88
    iget-boolean v6, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->pressed:Z

    if-eqz v6, :cond_0

    .line 89
    iget v4, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbDX:I

    int-to-float v4, v4

    sub-float v4, v2, v4

    float-to-int v4, v4

    int-to-float v1, v4

    .line 90
    cmpg-float v4, v1, v8

    if-gez v4, :cond_7

    .line 91
    const/4 v1, 0x0

    .line 95
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredWidth()I

    move-result v4

    sget v6, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    div-float v4, v1, v4

    iput v4, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->progress:F

    .line 96
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->invalidate()V

    move v4, v5

    .line 97
    goto/16 :goto_0

    .line 92
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredWidth()I

    move-result v4

    sget v6, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    sub-int/2addr v4, v6

    int-to-float v4, v4

    cmpl-float v4, v1, v4

    if-lez v4, :cond_6

    .line 93
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->getMeasuredWidth()I

    move-result v4

    sget v6, Lorg/telegram/ui/Components/VideoSeekBarView;->thumbWidth:I

    sub-int/2addr v4, v6

    int-to-float v1, v4

    goto :goto_1
.end method

.method public setProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .prologue
    .line 104
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 105
    const/4 p1, 0x0

    .line 109
    :cond_0
    :goto_0
    iput p1, p0, Lorg/telegram/ui/Components/VideoSeekBarView;->progress:F

    .line 110
    invoke-virtual {p0}, Lorg/telegram/ui/Components/VideoSeekBarView;->invalidate()V

    .line 111
    return-void

    .line 106
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 107
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0
.end method
