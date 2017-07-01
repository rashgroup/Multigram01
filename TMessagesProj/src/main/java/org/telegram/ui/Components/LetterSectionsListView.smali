.class public Lorg/telegram/ui/Components/LetterSectionsListView;
.super Landroid/widget/ListView;
.source "LetterSectionsListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private currentFirst:I

.field private currentVisible:I

.field private headers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private headersCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private sectionsCount:I

.field private startSection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    .line 33
    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentFirst:I

    .line 34
    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentVisible:I

    .line 40
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    .line 33
    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentFirst:I

    .line 34
    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentVisible:I

    .line 45
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, -0x1

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    .line 33
    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentFirst:I

    .line 34
    iput v1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentVisible:I

    .line 50
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 51
    return-void
.end method

.method private ensurePinnedHeaderLayout(Landroid/view/View;Z)V
    .locals 7
    .param p1, "header"    # Landroid/view/View;
    .param p2, "forceLayout"    # Z

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_1

    .line 172
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 173
    .local v2, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 174
    .local v1, "heightSpec":I
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 176
    .local v3, "widthSpec":I
    :try_start_0
    invoke-virtual {p1, v3, v1}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p1, v6, v6, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 182
    .end local v1    # "heightSpec":I
    .end local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v3    # "widthSpec":I
    :cond_1
    return-void

    .line 177
    .restart local v1    # "heightSpec":I
    .restart local v2    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .restart local v3    # "widthSpec":I
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;
    .locals 4
    .param p1, "section"    # I
    .param p2, "oldView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 151
    if-nez p2, :cond_1

    const/4 v0, 0x1

    .line 152
    .local v0, "shouldLayout":Z
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v3, p1, p2, p0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 153
    .local v1, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0, v1, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    .line 156
    :cond_0
    return-object v1

    .end local v0    # "shouldLayout":Z
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    move v0, v2

    .line 151
    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x0

    .line 186
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 191
    .local v7, "header":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 192
    .local v9, "saveCount":I
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 193
    .local v10, "top":I
    sget-boolean v0, Lorg/telegram/messenger/LocaleController;->isRTL:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lorg/telegram/ui/Components/LetterSectionsListView;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    :goto_1
    int-to-float v2, v10

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 194
    invoke-virtual {p0}, Lorg/telegram/ui/Components/LetterSectionsListView;->getWidth()I

    move-result v0

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p1, v12, v12, v0, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 195
    if-gez v10, :cond_2

    .line 196
    int-to-float v2, v10

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    add-int/2addr v0, v10

    int-to-float v4, v0

    const/high16 v0, 0x437f0000    # 255.0f

    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v6, v10

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v6, v11

    add-float/2addr v5, v6

    mul-float/2addr v0, v5

    float-to-int v5, v0

    const/4 v6, 0x4

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 198
    :cond_2
    invoke-virtual {v7, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 199
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 193
    goto :goto_1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 10
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 70
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v7, :cond_0

    .line 71
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v7, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 73
    :cond_0
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-nez v7, :cond_2

    .line 141
    :cond_1
    return-void

    .line 77
    :cond_2
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    iget-object v8, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 78
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 80
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v7}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getCount()I

    move-result v7

    if-eqz v7, :cond_1

    .line 84
    iget v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentFirst:I

    if-ne v7, p2, :cond_3

    iget v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentVisible:I

    if-eq v7, p3, :cond_4

    .line 85
    :cond_3
    iput p2, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentFirst:I

    .line 86
    iput p3, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->currentVisible:I

    .line 88
    const/4 v7, 0x1

    iput v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->sectionsCount:I

    .line 89
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v7, p2}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getSectionForPosition(I)I

    move-result v7

    iput v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    .line 90
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    iget v8, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getCountForSection(I)I

    move-result v7

    add-int/2addr v7, p2

    iget-object v8, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v8

    sub-int v5, v7, v8

    .line 92
    .local v5, "itemNum":I
    :goto_0
    add-int v7, p2, p3

    if-lt v5, v7, :cond_6

    .line 100
    .end local v5    # "itemNum":I
    :cond_4
    move v5, p2

    .line 101
    .restart local v5    # "itemNum":I
    iget v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    .local v0, "a":I
    :goto_1
    iget v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    iget v8, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->sectionsCount:I

    add-int/2addr v7, v8

    if-ge v0, v7, :cond_1

    .line 102
    const/4 v3, 0x0

    .line 103
    .local v3, "header":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 104
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "header":Landroid/view/View;
    check-cast v3, Landroid/view/View;

    .line 105
    .restart local v3    # "header":Landroid/view/View;
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 107
    :cond_5
    invoke-direct {p0, v0, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->getSectionHeaderView(ILandroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 108
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v7, v0}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getCountForSection(I)I

    move-result v2

    .line 110
    .local v2, "count":I
    iget v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    if-ne v0, v7, :cond_b

    .line 111
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v7, v5}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v6

    .line 112
    .local v6, "pos":I
    add-int/lit8 v7, v2, -0x1

    if-ne v6, v7, :cond_7

    .line 113
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v7

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    :goto_2
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    invoke-virtual {v7, p2}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getPositionInSectionForPosition(I)I

    move-result v7

    sub-int v7, v2, v7

    add-int/2addr v5, v7

    .line 101
    .end local v6    # "pos":I
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    .end local v0    # "a":I
    .end local v2    # "count":I
    .end local v3    # "header":Landroid/view/View;
    :cond_6
    iget-object v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    iget v8, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->startSection:I

    iget v9, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->sectionsCount:I

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;->getCountForSection(I)I

    move-result v7

    add-int/2addr v5, v7

    .line 96
    iget v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->sectionsCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->sectionsCount:I

    goto :goto_0

    .line 114
    .restart local v0    # "a":I
    .restart local v2    # "count":I
    .restart local v3    # "header":Landroid/view/View;
    .restart local v6    # "pos":I
    :cond_7
    add-int/lit8 v7, v2, -0x2

    if-ne v6, v7, :cond_a

    .line 115
    sub-int v7, v5, p2

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 117
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_8

    .line 118
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 122
    .local v4, "headerTop":I
    :goto_4
    if-gez v4, :cond_9

    .line 123
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 120
    .end local v4    # "headerTop":I
    :cond_8
    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v4, v7

    .restart local v4    # "headerTop":I
    goto :goto_4

    .line 125
    :cond_9
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 128
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "headerTop":I
    :cond_a
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_2

    .line 132
    .end local v6    # "pos":I
    :cond_b
    sub-int v7, v5, p2

    invoke-virtual {p0, v7}, Lorg/telegram/ui/Components/LetterSectionsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 133
    .restart local v1    # "child":Landroid/view/View;
    if-eqz v1, :cond_c

    .line 134
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 138
    :goto_5
    add-int/2addr v5, v2

    goto :goto_3

    .line 136
    :cond_c
    const/high16 v7, 0x42c80000    # 100.0f

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    neg-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 148
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 161
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->onSizeChanged(IIII)V

    .line 162
    iget-object v2, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    :cond_0
    return-void

    .line 165
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 166
    .local v0, "header":Landroid/view/View;
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->ensurePinnedHeaderLayout(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 27
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-ne v0, p1, :cond_0

    .line 66
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->headersCache:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 60
    instance-of v0, p1, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 61
    check-cast v0, Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    .line 65
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 63
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mAdapter:Lorg/telegram/ui/Adapters/BaseSectionsAdapter;

    goto :goto_1
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 210
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 205
    iput-object p1, p0, Lorg/telegram/ui/Components/LetterSectionsListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 206
    return-void
.end method
