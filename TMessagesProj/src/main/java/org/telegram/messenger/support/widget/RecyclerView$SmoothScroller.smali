.class public abstract Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

.field private final mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9548
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9534
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 9549
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    invoke-direct {v0, v1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    .line 9550
    return-void
.end method

.method static synthetic access$3500(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 9532
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 9644
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 9645
    .local v1, "recyclerView":Lorg/telegram/messenger/support/widget/RecyclerView;
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-nez v1, :cond_1

    .line 9646
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->stop()V

    .line 9648
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 9649
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 9651
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v2, v3, :cond_4

    .line 9652
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v2, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V

    .line 9653
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    # invokes: Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    invoke-static {v2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->access$6100(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 9654
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->stop()V

    .line 9660
    :cond_2
    :goto_0
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_3

    .line 9661
    iget-object v2, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onSeekTargetStep(IILorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V

    .line 9662
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v0

    .line 9663
    .local v0, "hadJumpTarget":Z
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;

    # invokes: Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    invoke-static {v2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;->access$6100(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 9664
    if-eqz v0, :cond_3

    .line 9666
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_5

    .line 9667
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 9668
    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$5900(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 9674
    .end local v0    # "hadJumpTarget":Z
    :cond_3
    :goto_1
    return-void

    .line 9656
    :cond_4
    const-string/jumbo v2, "RecyclerView"

    const-string/jumbo v3, "Passed over target position while smooth scrolling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9657
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    goto :goto_0

    .line 9670
    .restart local v0    # "hadJumpTarget":Z
    :cond_5
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_1
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 9694
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 9687
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 9680
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 9588
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    .prologue
    .line 9640
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9703
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollToPosition(I)V

    .line 9704
    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 1

    .prologue
    .line 9622
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 9630
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 5
    .param p1, "scrollVector"    # Landroid/graphics/PointF;

    .prologue
    .line 9720
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/PointF;->y:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 9722
    .local v0, "magnitute":D
    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    .line 9723
    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->y:F

    .line 9724
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 9707
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 9708
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 9713
    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .prologue
    .line 9579
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 9580
    return-void
.end method

.method start(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "layoutManager"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .prologue
    const/4 v2, 0x1

    .line 9565
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 9566
    iput-object p2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .line 9567
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 9568
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9570
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTargetPosition:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$5802(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    .line 9571
    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 9572
    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 9573
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 9574
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onStart()V

    .line 9575
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$5900(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 9576
    return-void
.end method

.method protected final stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 9598
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_0

    .line 9612
    :goto_0
    return-void

    .line 9601
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->onStop()V

    .line 9602
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTargetPosition:I
    invoke-static {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$5802(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    .line 9603
    iput-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 9604
    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 9605
    iput-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 9606
    iput-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 9608
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    # invokes: Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V
    invoke-static {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->access$6000(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;)V

    .line 9610
    iput-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mLayoutManager:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .line 9611
    iput-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    goto :goto_0
.end method
