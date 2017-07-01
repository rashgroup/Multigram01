.class Lorg/telegram/messenger/support/widget/ViewInfoStore;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;,
        Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field final mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            "Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    .line 50
    new-instance v0, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    .line 293
    return-void
.end method

.method private popFromLayoutStep(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 5
    .param p1, "vh"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "flag"    # I

    .prologue
    const/4 v1, 0x0

    .line 104
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/support/v4/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 105
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-object v1

    .line 108
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    .line 109
    .local v2, "record":Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;
    if-eqz v2, :cond_0

    iget v3, v2, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_0

    .line 110
    iget v3, v2, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    xor-int/lit8 v4, p2, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 112
    const/4 v3, 0x4

    if-ne p2, v3, :cond_2

    .line 113
    iget-object v1, v2, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->preInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 120
    .local v1, "info":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :goto_1
    iget v3, v2, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_0

    .line 121
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 122
    invoke-static {v2}, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->recycle(Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;)V

    goto :goto_0

    .line 114
    .end local v1    # "info":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_2
    const/16 v3, 0x8

    if-ne p2, v3, :cond_3

    .line 115
    iget-object v1, v2, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->postInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .restart local v1    # "info":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    goto :goto_1

    .line 117
    .end local v1    # "info":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Must provide flag PRE or POST"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method addToAppearedInPreLayoutHolders(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 148
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    .line 149
    .local v0, "record":Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 150
    invoke-static {}, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->obtain()Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_0
    iget v1, v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 154
    iput-object p2, v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->preInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 155
    return-void
.end method

.method addToDisappearedInLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 201
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    .line 202
    .local v0, "record":Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->obtain()Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    :cond_0
    iget v1, v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 207
    return-void
.end method

.method addToOldChangeHolders(JLorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "key"    # J
    .param p3, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 136
    return-void
.end method

.method addToPostLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 185
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    .line 186
    .local v0, "record":Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 187
    invoke-static {}, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->obtain()Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_0
    iput-object p2, v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->postInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 191
    iget v1, v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 192
    return-void
.end method

.method addToPreLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "info"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 67
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    .line 68
    .local v0, "record":Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->obtain()Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    iput-object p2, v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->preInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 73
    iget v1, v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    .line 74
    return-void
.end method

.method clear()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->clear()V

    .line 58
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/support/v4/util/LongSparseArray;->clear()V

    .line 59
    return-void
.end method

.method getFromOldChangeHolders(J)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "key"    # J

    .prologue
    .line 176
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method isDisappearing(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 77
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    .line 78
    .local v0, "record":Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isInPreLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 164
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    .line 165
    .local v0, "record":Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onDetach()V
    .locals 0

    .prologue
    .line 276
    invoke-static {}, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->drainCache()V

    .line 277
    return-void
.end method

.method public onViewDetached(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 281
    return-void
.end method

.method popFromPostLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "vh"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 100
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->popFromLayoutStep(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method popFromPreLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1
    .param p1, "vh"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->popFromLayoutStep(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method process(Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;)V
    .locals 5
    .param p1, "callback"    # Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;

    .prologue
    .line 222
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_8

    .line 223
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 224
    .local v2, "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    .line 225
    .local v1, "record":Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;
    iget v3, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 227
    invoke-interface {p1, v2}, Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;->unused(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 254
    :cond_0
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->recycle(Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;)V

    .line 222
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 228
    :cond_1
    iget v3, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    .line 230
    iget-object v3, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->preInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v3, :cond_2

    .line 233
    invoke-interface {p1, v2}, Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;->unused(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    .line 235
    :cond_2
    iget-object v3, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->preInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->postInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 237
    :cond_3
    iget v3, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xe

    const/16 v4, 0xe

    if-ne v3, v4, :cond_4

    .line 239
    iget-object v3, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->preInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->postInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;->processAppeared(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 240
    :cond_4
    iget v3, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xc

    const/16 v4, 0xc

    if-ne v3, v4, :cond_5

    .line 242
    iget-object v3, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->preInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->postInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;->processPersistent(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 243
    :cond_5
    iget v3, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_6

    .line 245
    iget-object v3, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->preInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 246
    :cond_6
    iget v3, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7

    .line 248
    iget-object v3, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->preInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->postInfo:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;->processAppeared(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 249
    :cond_7
    iget v3, v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    goto :goto_1

    .line 256
    .end local v1    # "record":Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;
    .end local v2    # "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_8
    return-void
.end method

.method removeFromDisappearedInLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 214
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    .line 215
    .local v0, "record":Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;
    if-nez v0, :cond_0

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    iget v1, v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->flags:I

    goto :goto_0
.end method

.method removeViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 263
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/support/v4/util/LongSparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 264
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p1, v2, :cond_2

    .line 265
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mOldChangedHolders:Landroid/support/v4/util/LongSparseArray;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V

    .line 269
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;

    .line 270
    .local v1, "info":Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;
    if-eqz v1, :cond_1

    .line 271
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;->recycle(Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;)V

    .line 273
    :cond_1
    return-void

    .line 263
    .end local v1    # "info":Lorg/telegram/messenger/support/widget/ViewInfoStore$InfoRecord;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
