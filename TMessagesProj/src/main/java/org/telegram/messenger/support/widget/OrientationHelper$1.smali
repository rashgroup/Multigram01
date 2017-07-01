.class final Lorg/telegram/messenger/support/widget/OrientationHelper$1;
.super Lorg/telegram/messenger/support/widget/OrientationHelper;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/OrientationHelper;->createHorizontalHelper(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Lorg/telegram/messenger/support/widget/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/OrientationHelper;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/OrientationHelper$1;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 257
    .local v0, "params":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$1;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 241
    .local v0, "params":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$1;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 249
    .local v0, "params":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$1;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 264
    .local v0, "params":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$1;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public getEnd()I
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$1;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    return v0
.end method

.method public getEndAfterPadding()I
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$1;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$1;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndPadding()I
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$1;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$1;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v0

    return v0
.end method

.method public getModeInOther()I
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$1;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public getStartAfterPadding()I
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$1;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$1;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$1;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$1;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public offsetChild(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offset"    # I

    .prologue
    .line 275
    invoke-virtual {p1, p2}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 276
    return-void
.end method

.method public offsetChildren(I)V
    .locals 1
    .param p1, "amount"    # I

    .prologue
    .line 229
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/OrientationHelper$1;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->offsetChildrenHorizontal(I)V

    .line 230
    return-void
.end method
