.class public final Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Recycler"
.end annotation


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x2


# instance fields
.field final mAttachedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field final mCachedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

.field private final mUnmodifiableAttachedScrap:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mViewCacheExtension:Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;

.field private mViewCacheMax:I

.field final synthetic this$0:Lorg/telegram/messenger/support/widget/RecyclerView;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 4447
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    .line 4449
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 4451
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    .line 4453
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    .line 4456
    const/4 v0, 0x2

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheMax:I

    return-void
.end method

.method static synthetic access$2900(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .prologue
    .line 4447
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method private attachAccessibilityDelegate(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 4775
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4776
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 4778
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 4781
    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4782
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4800(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;->getItemDelegate()Landroid/support/v4/view/AccessibilityDelegateCompat;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 4786
    :cond_1
    return-void
.end method

.method private invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V
    .locals 5
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "invalidateThis"    # Z

    .prologue
    const/4 v4, 0x4

    .line 4795
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4796
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4797
    .local v1, "view":Landroid/view/View;
    instance-of v3, v1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 4798
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "view":Landroid/view/View;
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 4795
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4801
    :cond_1
    if-nez p2, :cond_2

    .line 4813
    :goto_1
    return-void

    .line 4805
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 4806
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4807
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 4809
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    .line 4810
    .local v2, "visibility":I
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4811
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private invalidateDisplayListInt(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 4789
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4790
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Landroid/view/ViewGroup;Z)V

    .line 4792
    :cond_0
    return-void
.end method


# virtual methods
.method addViewHolderToRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x0

    .line 4944
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 4945
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->dispatchViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 4946
    iput-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 4947
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->putRecycledView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 4948
    return-void
.end method

.method public bindViewToPosition(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v4, 0x1

    .line 4546
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4547
    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_0

    .line 4548
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "The view does not have a ViewHolder. You cannot pass arbitrary views to this method, they should be created by the Adapter"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4552
    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v5, p2}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v2

    .line 4553
    .local v2, "offsetPosition":I
    if-ltz v2, :cond_1

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 4554
    :cond_1
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Inconsistency detected. Invalid item position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "(offset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "state:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v6, v6, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4558
    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iput-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 4559
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->bindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    .line 4560
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 4561
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4562
    iput p2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 4565
    :cond_3
    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4567
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v1, :cond_4

    .line 4568
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 4569
    .local v3, "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4577
    :goto_0
    iput-boolean v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4578
    iput-object v0, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 4579
    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-nez v5, :cond_6

    :goto_1
    iput-boolean v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 4580
    return-void

    .line 4570
    .end local v3    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    :cond_4
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 4571
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v5, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 4572
    .restart local v3    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v5, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .end local v3    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    :cond_5
    move-object v3, v1

    .line 4574
    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .restart local v3    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    goto :goto_0

    .line 4579
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 4469
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4470
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 4471
    return-void
.end method

.method clearOldPositions()V
    .locals 6

    .prologue
    .line 5332
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5333
    .local v0, "cachedCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 5334
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5335
    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 5333
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5337
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_0
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5338
    .local v4, "scrapCount":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    .line 5339
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 5338
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5341
    :cond_1
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 5342
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5343
    .local v1, "changedScrapCount":I
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_2

    .line 5344
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 5343
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5347
    .end local v1    # "changedScrapCount":I
    :cond_2
    return-void
.end method

.method clearScrap()V
    .locals 1

    .prologue
    .line 5018
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5019
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5020
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5022
    :cond_0
    return-void
.end method

.method public convertPreLayoutPositionToPostLayout(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 4601
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 4602
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4605
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4608
    .end local p1    # "position":I
    :goto_0
    return p1

    .restart local p1    # "position":I
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(I)I

    move-result p1

    goto :goto_0
.end method

.method dispatchViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 5176
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mRecyclerListener:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$5300(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5177
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mRecyclerListener:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$5300(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;->onViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 5179
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5180
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onViewRecycled(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 5182
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    if-eqz v0, :cond_2

    .line 5183
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->removeViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 5186
    :cond_2
    return-void
.end method

.method getChangedScrapViewForPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 11
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v10, 0x20

    .line 5027
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "changedScrapSize":I
    if-nez v0, :cond_1

    .end local v0    # "changedScrapSize":I
    :cond_0
    move-object v1, v6

    .line 5052
    :goto_0
    return-object v1

    .line 5031
    .restart local v0    # "changedScrapSize":I
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 5032
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5033
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_2

    .line 5034
    invoke-virtual {v1, v10}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 5031
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5039
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_3
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 5040
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v7, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v3

    .line 5041
    .local v3, "offsetPosition":I
    if-lez v3, :cond_5

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v7

    if-ge v3, v7, :cond_5

    .line 5042
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v4

    .line 5043
    .local v4, "id":J
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_5

    .line 5044
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5045
    .restart local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v8

    cmp-long v7, v8, v4

    if-nez v7, :cond_4

    .line 5046
    invoke-virtual {v1, v10}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    goto :goto_0

    .line 5043
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v3    # "offsetPosition":I
    .end local v4    # "id":J
    :cond_5
    move-object v1, v6

    .line 5052
    goto :goto_0
.end method

.method getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .prologue
    .line 5280
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    if-nez v0, :cond_0

    .line 5281
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    .line 5283
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    return-object v0
.end method

.method getScrapCount()I
    .locals 1

    .prologue
    .line 5010
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getScrapList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4492
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mUnmodifiableAttachedScrap:Ljava/util/List;

    return-object v0
.end method

.method getScrapViewAt(I)Landroid/view/View;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 5014
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v0
.end method

.method getScrapViewForId(JIZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p1, "id"    # J
    .param p3, "type"    # I
    .param p4, "dryRun"    # Z

    .prologue
    .line 5125
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 5126
    .local v1, "count":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 5127
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5128
    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v4

    if-nez v4, :cond_2

    .line 5129
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne p3, v4, :cond_1

    .line 5130
    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5131
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5140
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v4, v4, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5141
    const/4 v4, 0x2

    const/16 v5, 0xe

    invoke-virtual {v2, v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 5172
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_0
    :goto_1
    return-object v2

    .line 5146
    .restart local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1
    if-nez p4, :cond_2

    .line 5150
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5151
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v5, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5152
    iget-object v4, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->quickRecycleScrapView(Landroid/view/View;)V

    .line 5126
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 5158
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5159
    .local v0, "cacheSize":I
    add-int/lit8 v3, v0, -0x1

    :goto_2
    if-ltz v3, :cond_6

    .line 5160
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5161
    .restart local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_5

    .line 5162
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne p3, v4, :cond_4

    .line 5163
    if-nez p4, :cond_0

    .line 5164
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 5167
    :cond_4
    if-nez p4, :cond_5

    .line 5168
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 5159
    :cond_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 5172
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method getScrapViewForPosition(IIZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 11
    .param p1, "position"    # I
    .param p2, "type"    # I
    .param p3, "dryRun"    # Z

    .prologue
    const/4 v10, -0x1

    .line 5065
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5068
    .local v4, "scrapCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 5069
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5070
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_4

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2400(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_4

    .line 5072
    :cond_0
    if-eq p2, v10, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v7

    if-eq v7, p2, :cond_2

    .line 5073
    const-string/jumbo v7, "RecyclerView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Scrap view for position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isn\'t dirty but has"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " wrong view type! (found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " but expected "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5083
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1
    if-nez p3, :cond_6

    .line 5084
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7, p1, p2}, Lorg/telegram/messenger/support/widget/ChildHelper;->findHiddenNonRemovedView(II)Landroid/view/View;

    move-result-object v6

    .line 5085
    .local v6, "view":Landroid/view/View;
    if-eqz v6, :cond_6

    .line 5088
    invoke-static {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 5089
    .local v5, "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7, v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->unhide(Landroid/view/View;)V

    .line 5090
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7, v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 5091
    .local v3, "layoutIndex":I
    if-ne v3, v10, :cond_5

    .line 5092
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "layout index should not be -1 after unhiding a view:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 5078
    .end local v3    # "layoutIndex":I
    .end local v5    # "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v6    # "view":Landroid/view/View;
    .restart local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_2
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5120
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_3
    :goto_1
    return-object v1

    .line 5068
    .restart local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 5095
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .restart local v3    # "layoutIndex":I
    .restart local v5    # "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .restart local v6    # "view":Landroid/view/View;
    :cond_5
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v7, v7, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7, v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->detachViewFromParent(I)V

    .line 5096
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->scrapView(Landroid/view/View;)V

    .line 5097
    const/16 v7, 0x2020

    invoke-virtual {v5, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    move-object v1, v5

    .line 5099
    goto :goto_1

    .line 5104
    .end local v3    # "layoutIndex":I
    .end local v5    # "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v6    # "view":Landroid/view/View;
    :cond_6
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5105
    .local v0, "cacheSize":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_8

    .line 5106
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5109
    .restart local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ne v7, p1, :cond_7

    .line 5110
    if-nez p3, :cond_3

    .line 5111
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 5105
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5120
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_8
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getViewForPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 4626
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getViewForPosition(IZ)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getViewForPosition(IZ)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "dryRun"    # Z

    .prologue
    .line 4630
    if-ltz p1, :cond_0

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v10

    if-lt p1, v10, :cond_1

    .line 4631
    :cond_0
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Invalid item position "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "). Item count:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v12, v12, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 4634
    :cond_1
    const/4 v2, 0x0

    .line 4635
    .local v2, "fromScrap":Z
    const/4 v3, 0x0

    .line 4637
    .local v3, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4638
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getChangedScrapViewForPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4639
    if-eqz v3, :cond_7

    const/4 v2, 0x1

    .line 4642
    :cond_2
    :goto_0
    if-nez v3, :cond_5

    .line 4643
    const/4 v10, -0x1

    invoke-virtual {p0, p1, v10, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getScrapViewForPosition(IIZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4644
    if-eqz v3, :cond_5

    .line 4645
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->validateViewHolderForOffsetPosition(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v10

    if-nez v10, :cond_9

    .line 4647
    if-nez p2, :cond_4

    .line 4650
    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4651
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 4652
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v11, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4653
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 4657
    :cond_3
    :goto_1
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 4659
    :cond_4
    const/4 v3, 0x0

    .line 4665
    :cond_5
    :goto_2
    if-nez v3, :cond_f

    .line 4666
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v10, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v6

    .line 4667
    .local v6, "offsetPosition":I
    if-ltz v6, :cond_6

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v10

    if-lt v6, v10, :cond_a

    .line 4668
    :cond_6
    new-instance v10, Ljava/lang/IndexOutOfBoundsException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Inconsistency detected. Invalid item position "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "(offset:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "state:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v12, v12, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->getItemCount()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " tag "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->getTag()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " adapter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 4639
    .end local v6    # "offsetPosition":I
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 4654
    :cond_8
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 4655
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto/16 :goto_1

    .line 4661
    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_2

    .line 4673
    .restart local v6    # "offsetPosition":I
    :cond_a
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v8

    .line 4675
    .local v8, "type":I
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 4676
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {p0, v10, v11, v8, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getScrapViewForId(JIZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4677
    if-eqz v3, :cond_b

    .line 4679
    iput v6, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    .line 4680
    const/4 v2, 0x1

    .line 4683
    :cond_b
    if-nez v3, :cond_d

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheExtension:Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;

    if-eqz v10, :cond_d

    .line 4686
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheExtension:Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;

    invoke-virtual {v10, p0, p1, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;->getViewForPositionAndType(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;II)Landroid/view/View;

    move-result-object v9

    .line 4688
    .local v9, "view":Landroid/view/View;
    if-eqz v9, :cond_d

    .line 4689
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v10, v9}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4690
    if-nez v3, :cond_c

    .line 4691
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 4693
    :cond_c
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 4694
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 4700
    .end local v9    # "view":Landroid/view/View;
    :cond_d
    if-nez v3, :cond_e

    .line 4707
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    move-result-object v10

    invoke-virtual {v10, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->getRecycledView(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4708
    if-eqz v3, :cond_e

    .line 4709
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 4710
    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z
    invoke-static {}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4600()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 4711
    invoke-direct {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->invalidateDisplayListInt(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 4715
    :cond_e
    if-nez v3, :cond_f

    .line 4716
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v10

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v10, v11, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4726
    .end local v6    # "offsetPosition":I
    .end local v8    # "type":I
    :cond_f
    if-eqz v2, :cond_10

    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-nez v10, :cond_10

    const/16 v10, 0x2000

    invoke-virtual {v3, v10}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 4728
    const/4 v10, 0x0

    const/16 v11, 0x2000

    invoke-virtual {v3, v10, v11}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 4729
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2500(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 4730
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v1

    .line 4732
    .local v1, "changeFlags":I
    or-int/lit16 v1, v1, 0x1000

    .line 4733
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v11, v11, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v12

    invoke-virtual {v10, v11, v3, v1, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 4735
    .local v4, "info":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # invokes: Lorg/telegram/messenger/support/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    invoke-static {v10, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4700(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 4739
    .end local v1    # "changeFlags":I
    .end local v4    # "info":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_10
    const/4 v0, 0x0

    .line 4740
    .local v0, "bound":Z
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v10

    if-eqz v10, :cond_12

    .line 4742
    iput p1, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    .line 4758
    :cond_11
    :goto_3
    iget-object v10, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 4760
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v5, :cond_14

    .line 4761
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 4762
    .local v7, "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v10, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4769
    :goto_4
    iput-object v3, v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 4770
    if-eqz v2, :cond_16

    if-eqz v0, :cond_16

    const/4 v10, 0x1

    :goto_5
    iput-boolean v10, v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mPendingInvalidate:Z

    .line 4771
    iget-object v10, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v10

    .line 4743
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v7    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    :cond_12
    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v10

    if-nez v10, :cond_13

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 4748
    :cond_13
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v10, p1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->findPositionOffset(I)I

    move-result v6

    .line 4749
    .restart local v6    # "offsetPosition":I
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iput-object v10, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 4750
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v10}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v10

    invoke-virtual {v10, v3, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->bindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V

    .line 4751
    iget-object v10, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v10}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->attachAccessibilityDelegate(Landroid/view/View;)V

    .line 4752
    const/4 v0, 0x1

    .line 4753
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v10, v10, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v10}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v10

    if-eqz v10, :cond_11

    .line 4754
    iput p1, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPreLayoutPosition:I

    goto :goto_3

    .line 4763
    .end local v6    # "offsetPosition":I
    .restart local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_14
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v10, v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v10

    if-nez v10, :cond_15

    .line 4764
    iget-object v10, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v10, v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 4765
    .restart local v7    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-object v10, v3, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .end local v7    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    :cond_15
    move-object v7, v5

    .line 4767
    check-cast v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .restart local v7    # "rvLayoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    goto :goto_4

    .line 4770
    :cond_16
    const/4 v10, 0x0

    goto :goto_5
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .prologue
    .line 5350
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5351
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5352
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5353
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    iget-object v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 5354
    .local v3, "layoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    if-eqz v3, :cond_0

    .line 5355
    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 5351
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5358
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v3    # "layoutParams":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    :cond_1
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .prologue
    .line 5316
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5317
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5318
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 5319
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5320
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 5321
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5322
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 5318
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5327
    .end local v0    # "cachedCount":I
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleAndClearCachedViews()V

    .line 5329
    :cond_2
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 4
    .param p1, "insertedAt"    # I
    .param p2, "count"    # I

    .prologue
    .line 5224
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5225
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5226
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5227
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    iget v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 5232
    const/4 v3, 0x1

    invoke-virtual {v1, p2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 5225
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5235
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v7, 0x0

    .line 5196
    if-ge p1, p2, :cond_1

    .line 5197
    move v5, p1

    .line 5198
    .local v5, "start":I
    move v1, p2

    .line 5199
    .local v1, "end":I
    const/4 v4, -0x1

    .line 5205
    .local v4, "inBetweenOffset":I
    :goto_0
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5206
    .local v0, "cachedCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 5207
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5208
    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    iget v6, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v5, :cond_0

    iget v6, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_2

    .line 5206
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 5201
    .end local v0    # "cachedCount":I
    .end local v1    # "end":I
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v3    # "i":I
    .end local v4    # "inBetweenOffset":I
    .end local v5    # "start":I
    :cond_1
    move v5, p2

    .line 5202
    .restart local v5    # "start":I
    move v1, p1

    .line 5203
    .restart local v1    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "inBetweenOffset":I
    goto :goto_0

    .line 5211
    .restart local v0    # "cachedCount":I
    .restart local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .restart local v3    # "i":I
    :cond_2
    iget v6, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_3

    .line 5212
    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 5214
    :cond_3
    invoke-virtual {v2, v4, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    .line 5221
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_4
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 5
    .param p1, "removedFrom"    # I
    .param p2, "count"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    .line 5244
    add-int v3, p1, p2

    .line 5245
    .local v3, "removedEnd":I
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5246
    .local v0, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 5247
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5248
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 5249
    iget v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_1

    .line 5255
    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 5246
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5256
    :cond_1
    iget v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 5258
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5259
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    .line 5263
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_2
    return-void
.end method

.method onAdapterChanged(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .prologue
    .line 5190
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clear()V

    .line 5191
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->onAdapterChanged(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Z)V

    .line 5192
    return-void
.end method

.method quickRecycleScrapView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4956
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4957
    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$5002(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .line 4958
    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$5102(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)Z

    .line 4959
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 4960
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 4961
    return-void
.end method

.method recycleAndClearCachedViews()V
    .locals 3

    .prologue
    .line 4850
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4851
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 4852
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4851
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4854
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4855
    return-void
.end method

.method recycleCachedViewAt(I)V
    .locals 2
    .param p1, "cachedViewIndex"    # I

    .prologue
    .line 4872
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 4876
    .local v0, "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 4877
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4878
    return-void
.end method

.method public recycleView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4828
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4829
    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4830
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 4832
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4833
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->unScrap()V

    .line 4837
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 4838
    return-void

    .line 4834
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->wasReturnedFromScrap()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4835
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    goto :goto_0
.end method

.method recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 10
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 4886
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 4887
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isScrap()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isAttached:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_1

    :goto_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    move v5, v6

    goto :goto_0

    .line 4893
    :cond_2
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4894
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4898
    :cond_3
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4899
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 4903
    :cond_4
    # invokes: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->doesTransientStatePreventRecycling()Z
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$4900(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v4

    .line 4905
    .local v4, "transientStatePreventsRecycling":Z
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v7

    if-eqz v7, :cond_a

    if-eqz v4, :cond_a

    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v7

    invoke-virtual {v7, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onFailedToRecycleView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v7

    if-eqz v7, :cond_a

    move v2, v5

    .line 4908
    .local v2, "forceRecycle":Z
    :goto_1
    const/4 v0, 0x0

    .line 4909
    .local v0, "cached":Z
    const/4 v3, 0x0

    .line 4914
    .local v3, "recycled":Z
    if-nez v2, :cond_5

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRecyclable()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4915
    :cond_5
    const/16 v5, 0xe

    invoke-virtual {p1, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v5

    if-nez v5, :cond_7

    .line 4918
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4919
    .local v1, "cachedViewSize":I
    iget v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-ne v1, v5, :cond_6

    if-lez v1, :cond_6

    .line 4920
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4922
    :cond_6
    iget v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheMax:I

    if-ge v1, v5, :cond_7

    .line 4923
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4924
    const/4 v0, 0x1

    .line 4927
    .end local v1    # "cachedViewSize":I
    :cond_7
    if-nez v0, :cond_8

    .line 4928
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 4929
    const/4 v3, 0x1

    .line 4937
    :cond_8
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v5, v5, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v5, p1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->removeViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 4938
    if-nez v0, :cond_9

    if-nez v3, :cond_9

    if-eqz v4, :cond_9

    .line 4939
    const/4 v5, 0x0

    iput-object v5, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mOwnerRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    .line 4941
    :cond_9
    return-void

    .end local v0    # "cached":Z
    .end local v2    # "forceRecycle":Z
    .end local v3    # "recycled":Z
    :cond_a
    move v2, v6

    .line 4905
    goto :goto_1
.end method

.method recycleViewInternal(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4846
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 4847
    return-void
.end method

.method scrapView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 4973
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4974
    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # invokes: Lorg/telegram/messenger/support/widget/RecyclerView;->canReuseUpdatedViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    invoke-static {v1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$5200(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4976
    :cond_0
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4977
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4981
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setScrapContainer(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Z)V

    .line 4982
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4990
    :goto_0
    return-void

    .line 4984
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 4985
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    .line 4987
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setScrapContainer(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Z)V

    .line 4988
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method setAdapterPositionsAsUnknown()V
    .locals 4

    .prologue
    .line 5306
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5307
    .local v0, "cachedCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5308
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5309
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    .line 5310
    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5307
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5313
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method setRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;)V
    .locals 2
    .param p1, "pool"    # Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    .prologue
    .line 5270
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    if-eqz v0, :cond_0

    .line 5271
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 5273
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    .line 5274
    if-eqz p1, :cond_1

    .line 5275
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mRecyclerPool:Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->attach(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 5277
    :cond_1
    return-void
.end method

.method setViewCacheExtension(Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;)V
    .locals 0
    .param p1, "extension"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;

    .prologue
    .line 5266
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheExtension:Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;

    .line 5267
    return-void
.end method

.method public setViewCacheSize(I)V
    .locals 2
    .param p1, "viewCount"    # I

    .prologue
    .line 4479
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mViewCacheMax:I

    .line 4481
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 4482
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    .line 4481
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4484
    :cond_0
    return-void
.end method

.method unscrapView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 4999
    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$5100(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5000
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5004
    :goto_0
    const/4 v0, 0x0

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mScrapContainer:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;
    invoke-static {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$5002(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .line 5005
    const/4 v0, 0x0

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mInChangeScrap:Z
    invoke-static {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->access$5102(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)Z

    .line 5006
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearReturnedFromScrapFlag()V

    .line 5007
    return-void

    .line 5002
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mAttachedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method validateViewHolderForOffsetPosition(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 8
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4506
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4511
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    .line 4527
    :cond_0
    :goto_0
    return v1

    .line 4513
    :cond_1
    iget v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ltz v3, :cond_2

    iget v3, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    if-lt v3, v4, :cond_3

    .line 4514
    :cond_2
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4517
    :cond_3
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v3, v3, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4519
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v3

    iget v4, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v0

    .line 4520
    .local v0, "type":I
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v3

    if-eq v0, v3, :cond_4

    move v1, v2

    .line 4521
    goto :goto_0

    .line 4524
    .end local v0    # "type":I
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4525
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v3

    iget v6, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method viewRangeUpdate(II)V
    .locals 6
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 5287
    add-int v4, p1, p2

    .line 5288
    .local v4, "positionEnd":I
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5289
    .local v0, "cachedCount":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 5290
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mCachedViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 5291
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-nez v1, :cond_1

    .line 5289
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 5295
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    .line 5296
    .local v3, "pos":I
    if-lt v3, p1, :cond_0

    if-ge v3, v4, :cond_0

    .line 5297
    const/4 v5, 0x2

    invoke-virtual {v1, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 5298
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleCachedViewAt(I)V

    goto :goto_1

    .line 5303
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v3    # "pos":I
    :cond_2
    return-void
.end method
