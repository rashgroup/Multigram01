.class public Lorg/telegram/ui/Cells/HashtagSearchCell;
.super Landroid/widget/TextView;
.source "HashtagSearchCell.java"


# static fields
.field private static paint:Landroid/graphics/Paint;


# instance fields
.field private needDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x41800000    # 16.0f

    .line 29
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 30
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setGravity(I)V

    .line 31
    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v2, v1, v2}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setPadding(IIII)V

    .line 32
    const/4 v0, 0x1

    const/high16 v1, 0x41880000    # 17.0f

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setTextSize(IF)V

    .line 33
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setTextColor(I)V

    .line 34
    sget-object v0, Lorg/telegram/ui/Cells/HashtagSearchCell;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lorg/telegram/ui/Cells/HashtagSearchCell;->paint:Landroid/graphics/Paint;

    .line 36
    sget-object v0, Lorg/telegram/ui/Cells/HashtagSearchCell;->paint:Landroid/graphics/Paint;

    const v1, -0x232324

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 39
    :cond_0
    const v0, 0x7f0201ab

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setBackgroundResource(I)V

    .line 40
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 64
    iget-boolean v0, p0, Lorg/telegram/ui/Cells/HashtagSearchCell;->needDivider:Z

    if-eqz v0, :cond_0

    .line 65
    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/HashtagSearchCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/HashtagSearchCell;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/HashtagSearchCell;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    sget-object v5, Lorg/telegram/ui/Cells/HashtagSearchCell;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 67
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 58
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x42400000    # 48.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Cells/HashtagSearchCell;->setMeasuredDimension(II)V

    .line 59
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Cells/HashtagSearchCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 46
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Cells/HashtagSearchCell;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 49
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setNeedDivider(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lorg/telegram/ui/Cells/HashtagSearchCell;->needDivider:Z

    .line 54
    return-void
.end method
