.class public Lorg/telegram/ui/Components/SectionsListView;
.super Landroid/widget/ListView;
.source "SectionsListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private currentStartSection:I

.field private mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private pinnedHeader:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/SectionsListView;->currentStartSection:I

    .line 33
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/SectionsListView;->currentStartSection:I

    .line 38
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lorg/telegram/ui/Components/SectionsListView;->currentStartSection:I

    .line 43
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 44
    return-void
.end method

.method private ensurePinnedHeaderLayout(Landroid/view/View;Z)V
    .locals 6
    .param p1, "header"    # Landroid/view/View;
    .param p2, "forceLayout"    # Z

    .prologue
    const/4 v5, 0x0

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p2, :cond_1

    .line 133
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SectionsListView;->getMeasuredWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 134
    .local v2, "widthSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 136
    .local v1, "heightSpec":I
    :try_start_0
    invoke-virtual {p1, v2, v1}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {p1, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 142
    .end local v1    # "heightSpec":I
    .end local v2    # "widthSpec":I
    :cond_1
    return-void

    .line 137
    .restart local v1    # "heightSpec":I
    .restart local v2    # "widthSpec":I
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "section"    # I
    .param p2, "oldView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 114
    if-nez p2, :cond_1

    const/4 v0, 0x1

    .line 115
    .local v0, "shouldLayout":Z
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/SectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v3, p1, p2, p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Components/SectionsListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    .line 119
    :cond_0
    return-object v1

    .end local v0    # "shouldLayout":Z
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    move v0, v2

    .line 114
    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 146
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 147
    iget-object v2, p0, Lorg/telegram/ui/Components/SectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/SectionsListView;->pinnedHeader:Landroid/view/View;

    if-nez v2, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 151
    .local v0, "saveCount":I
    iget-object v2, p0, Lorg/telegram/ui/Components/SectionsListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 152
    .local v1, "top":I
    sget-boolean v2, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/SectionsListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SectionsListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    :goto_1
    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SectionsListView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/SectionsListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 154
    iget-object v2, p0, Lorg/telegram/ui/Components/SectionsListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 155
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 152
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 10
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    const/4 v9, 0x0

    .line 62
    iget-object v7, p0, Lorg/telegram/ui/Components/SectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_0

    .line 63
    iget-object v7, p0, Lorg/telegram/ui/Components/SectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v7, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 65
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/Components/SectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-nez v7, :cond_2

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/Components/SectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getCount()I

    move-result v7

    if-eqz v7, :cond_1

    .line 73
    iget-object v7, p0, Lorg/telegram/ui/Components/SectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v7, p2}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionForPosition(I)I

    move-result v6

    .line 74
    .local v6, "startSection":I
    iget v7, p0, Lorg/telegram/ui/Components/SectionsListView;->currentStartSection:I

    if-ne v7, v6, :cond_3

    iget-object v7, p0, Lorg/telegram/ui/Components/SectionsListView;->pinnedHeader:Landroid/view/View;

    if-nez v7, :cond_4

    .line 75
    :cond_3
    iget-object v7, p0, Lorg/telegram/ui/Components/SectionsListView;->pinnedHeader:Landroid/view/View;

    invoke-direct {p0, v6, v7}, Lorg/telegram/ui/Components/SectionsListView;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lorg/telegram/ui/Components/SectionsListView;->pinnedHeader:Landroid/view/View;

    .line 76
    iput v6, p0, Lorg/telegram/ui/Components/SectionsListView;->currentStartSection:I

    .line 79
    :cond_4
    iget-object v7, p0, Lorg/telegram/ui/Components/SectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v7, v6}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getCountForSection(I)I

    move-result v2

    .line 81
    .local v2, "count":I
    iget-object v7, p0, Lorg/telegram/ui/Components/SectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v7, p2}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v5

    .line 82
    .local v5, "pos":I
    add-int/lit8 v7, v2, -0x1

    if-ne v5, v7, :cond_8

    .line 83
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Components/SectionsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 84
    .local v1, "child":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/Components/SectionsListView;->pinnedHeader:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 85
    .local v3, "headerHeight":I
    const/4 v4, 0x0

    .line 86
    .local v4, "headerTop":I
    if-eqz v1, :cond_6

    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int v0, v7, v8

    .line 88
    .local v0, "available":I
    if-ge v0, v3, :cond_5

    .line 89
    sub-int v4, v0, v3

    .line 94
    .end local v0    # "available":I
    :cond_5
    :goto_1
    if-gez v4, :cond_7

    .line 95
    iget-object v7, p0, Lorg/telegram/ui/Components/SectionsListView;->pinnedHeader:Landroid/view/View;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 103
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "headerHeight":I
    .end local v4    # "headerTop":I
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SectionsListView;->invalidate()V

    goto :goto_0

    .line 92
    .restart local v1    # "child":Landroid/view/View;
    .restart local v3    # "headerHeight":I
    .restart local v4    # "headerTop":I
    :cond_6
    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v4, v7

    goto :goto_1

    .line 97
    :cond_7
    iget-object v7, p0, Lorg/telegram/ui/Components/SectionsListView;->pinnedHeader:Landroid/view/View;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 100
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "headerHeight":I
    .end local v4    # "headerTop":I
    :cond_8
    iget-object v7, p0, Lorg/telegram/ui/Components/SectionsListView;->pinnedHeader:Landroid/view/View;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lorg/telegram/ui/Components/SectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lorg/telegram/ui/Components/SectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 111
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 125
    iget-object v0, p0, Lorg/telegram/ui/Components/SectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/SectionsListView;->pinnedHeader:Landroid/view/View;

    if-nez v0, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/SectionsListView;->pinnedHeader:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/telegram/ui/Components/SectionsListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 24
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/SectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v0, p0, Lorg/telegram/ui/Components/SectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-ne v0, p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 51
    :cond_0
    iput-object v1, p0, Lorg/telegram/ui/Components/SectionsListView;->pinnedHeader:Landroid/view/View;

    .line 52
    instance-of v0, p1, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 53
    check-cast v0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    iput-object v0, p0, Lorg/telegram/ui/Components/SectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    .line 57
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 55
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/Components/SectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    goto :goto_1
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 165
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 160
    iput-object p1, p0, Lorg/telegram/ui/Components/SectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 161
    return-void
.end method
