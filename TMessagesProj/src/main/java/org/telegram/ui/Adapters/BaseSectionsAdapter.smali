.class public abstract Lorg/telegram/ui/Adapters/BaseSectionsAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "BaseSectionsAdapter.java"


# instance fields
.field private count:I

.field private sectionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sectionCount:I

.field private sectionCountCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sectionPositionCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 33
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->cleanupCache()V

    .line 34
    return-void
.end method

.method private cleanupCache()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 24
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCache:Landroid/util/SparseArray;

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionPositionCache:Landroid/util/SparseArray;

    .line 26
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCountCache:Landroid/util/SparseArray;

    .line 27
    iput v1, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->count:I

    .line 28
    iput v1, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCount:I

    .line 29
    return-void
.end method

.method private internalGetCountForSection(I)I
    .locals 4
    .param p1, "section"    # I

    .prologue
    .line 91
    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCountCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 92
    .local v0, "cachedSectionCount":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 97
    :goto_0
    return v1

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getCountForSection(I)I

    move-result v1

    .line 96
    .local v1, "sectionCount":I
    iget-object v2, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCountCache:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private internalGetSectionCount()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCount:I

    if-ltz v0, :cond_0

    .line 102
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCount:I

    .line 105
    :goto_0
    return v0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionCount()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCount:I

    .line 105
    iget v0, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCount:I

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public final getCount()I
    .locals 3

    .prologue
    .line 65
    iget v1, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->count:I

    if-ltz v1, :cond_0

    .line 66
    iget v1, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->count:I

    .line 72
    :goto_0
    return v1

    .line 68
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->count:I

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->internalGetSectionCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 70
    iget v1, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->count:I

    invoke-direct {p0, v0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->internalGetCountForSection(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->count:I

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :cond_1
    iget v1, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->count:I

    goto :goto_0
.end method

.method public abstract getCountForSection(I)I
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 77
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getItem(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract getItem(II)Ljava/lang/Object;
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public abstract getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getItemViewType(II)I

    move-result v0

    return v0
.end method

.method public abstract getItemViewType(II)I
.end method

.method public getPositionInSectionForPosition(I)I
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 127
    iget-object v6, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionPositionCache:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 128
    .local v0, "cachedPosition":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 142
    :goto_0
    return v2

    .line 131
    :cond_0
    const/4 v5, 0x0

    .line 132
    .local v5, "sectionStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->internalGetSectionCount()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 133
    invoke-direct {p0, v1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->internalGetCountForSection(I)I

    move-result v3

    .line 134
    .local v3, "sectionCount":I
    add-int v4, v5, v3

    .line 135
    .local v4, "sectionEnd":I
    if-lt p1, v5, :cond_1

    if-ge p1, v4, :cond_1

    .line 136
    sub-int v2, p1, v5

    .line 137
    .local v2, "positionInSection":I
    iget-object v6, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionPositionCache:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 140
    .end local v2    # "positionInSection":I
    :cond_1
    move v5, v4

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 142
    .end local v3    # "sectionCount":I
    .end local v4    # "sectionEnd":I
    :cond_2
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public abstract getSectionCount()I
.end method

.method public final getSectionForPosition(I)I
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 109
    iget-object v5, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCache:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 110
    .local v0, "cachedSection":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 123
    :goto_0
    return v1

    .line 113
    :cond_0
    const/4 v4, 0x0

    .line 114
    .local v4, "sectionStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->internalGetSectionCount()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 115
    invoke-direct {p0, v1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->internalGetCountForSection(I)I

    move-result v2

    .line 116
    .local v2, "sectionCount":I
    add-int v3, v4, v2

    .line 117
    .local v3, "sectionEnd":I
    if-lt p1, v4, :cond_1

    if-ge p1, v3, :cond_1

    .line 118
    iget-object v5, p0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->sectionCache:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 121
    :cond_1
    move v4, v3

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    .end local v2    # "sectionCount":I
    .end local v3    # "sectionEnd":I
    :cond_2
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public abstract getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 87
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getItemView(IILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionForPosition(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->isRowEnabled(II)Z

    move-result v0

    return v0
.end method

.method public abstract isRowEnabled(II)Z
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->cleanupCache()V

    .line 39
    invoke-super {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;->notifyDataSetChanged()V

    .line 40
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->cleanupCache()V

    .line 45
    invoke-super {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;->notifyDataSetInvalidated()V

    .line 46
    return-void
.end method
