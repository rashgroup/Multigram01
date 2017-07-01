.class public Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation


# static fields
.field private static final DEFAULT_MAX_SCRAP:I = 0x5


# instance fields
.field private mAttachCount:I

.field private mMaxScrap:Landroid/util/SparseIntArray;

.field private mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 4331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4332
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    .line 4334
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    .line 4335
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapHeapForType(I)Ljava/util/ArrayList;
    .locals 3
    .param p1, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4422
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4423
    .local v0, "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;>;"
    if-nez v0, :cond_0

    .line 4424
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4425
    .restart local v0    # "scrap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;>;"
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4426
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 4427
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4430
    :cond_0
    return-object v0
.end method


# virtual methods
.method attach(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
    .locals 1
    .param p1, "adapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .prologue
    .line 4389
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 4390
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 4340
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 4341
    return-void
.end method

.method detach()V
    .locals 1

    .prologue
    .line 4393
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    .line 4394
    return-void
.end method

.method public getRecycledView(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "viewType"    # I

    .prologue
    .line 4354
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4355
    .local v2, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 4356
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 4357
    .local v0, "index":I
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 4358
    .local v1, "scrap":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4361
    .end local v0    # "index":I
    .end local v1    # "scrap":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onAdapterChanged(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "oldAdapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .param p2, "newAdapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .param p3, "compatibleWithPrevious"    # Z

    .prologue
    .line 4410
    if-eqz p1, :cond_0

    .line 4411
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->detach()V

    .line 4413
    :cond_0
    if-nez p3, :cond_1

    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mAttachCount:I

    if-nez v0, :cond_1

    .line 4414
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 4416
    :cond_1
    if-eqz p2, :cond_2

    .line 4417
    invoke-virtual {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->attach(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 4419
    :cond_2
    return-void
.end method

.method public putRecycledView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 4
    .param p1, "scrap"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 4376
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v1

    .line 4377
    .local v1, "viewType":I
    invoke-direct {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->getScrapHeapForType(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 4378
    .local v0, "scrapHeap":Ljava/util/ArrayList;
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 4386
    :goto_0
    return-void

    .line 4384
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->resetInternal()V

    .line 4385
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public setMaxRecycledViews(II)V
    .locals 2
    .param p1, "viewType"    # I
    .param p2, "max"    # I

    .prologue
    .line 4344
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 4345
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 4346
    .local v0, "scrapHeap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;>;"
    if-eqz v0, :cond_0

    .line 4347
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 4348
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 4351
    :cond_0
    return-void
.end method

.method size()I
    .locals 4

    .prologue
    .line 4365
    const/4 v0, 0x0

    .line 4366
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 4367
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 4368
    .local v2, "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;>;"
    if-eqz v2, :cond_0

    .line 4369
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 4366
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4372
    .end local v2    # "viewHolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;>;"
    :cond_1
    return v0
.end method
