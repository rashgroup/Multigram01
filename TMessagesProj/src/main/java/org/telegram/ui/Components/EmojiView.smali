.class public Lorg/telegram/ui/Components/EmojiView;
.super Landroid/widget/FrameLayout;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/EmojiView$GifsAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;,
        Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;,
        Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;,
        Lorg/telegram/ui/Components/EmojiView$ImageViewEmoji;,
        Lorg/telegram/ui/Components/EmojiView$Listener;
    }
.end annotation


# static fields
.field private static final NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private static emojiColor:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final superListenerField:Ljava/lang/reflect/Field;


# instance fields
.field private adapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private backspaceButton:Landroid/widget/ImageView;

.field private backspaceOnce:Z

.field private backspacePressed:Z

.field private emojiSize:I

.field private emojiUseHistory:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private flowLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

.field private gifTabBum:I

.field private gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

.field private gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

.field private icons:[I

.field private lastGifLoadTime:J

.field private lastNotifyWidth:I

.field private listener:Lorg/telegram/ui/Components/EmojiView$Listener;

.field private loadingRecent:Z

.field private loadingRecentGifs:Z

.field private location:[I

.field private newRecentStickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private oldWidth:I

.field private pager:Landroid/support/v4/view/ViewPager;

.field private pagerSlidingTabStripContainer:Landroid/widget/LinearLayout;

.field private pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

.field private pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

.field private popupHeight:I

.field private popupWidth:I

.field private recentEmoji:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recentImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;"
        }
    .end annotation
.end field

.field private recentStickers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Document;",
            ">;"
        }
    .end annotation
.end field

.field private recentTabBum:I

.field private recentsWrap:Landroid/widget/FrameLayout;

.field private scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

.field private showGifs:Z

.field private showStickers:Z

.field private stickerSets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;",
            ">;"
        }
    .end annotation
.end field

.field private stickersEmptyView:Landroid/widget/TextView;

.field private stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

.field private stickersGridView:Landroid/widget/GridView;

.field private stickersOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private stickersTabOffset:I

.field private stickersWrap:Landroid/widget/FrameLayout;

.field private switchToGifTab:Z

.field private views:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 92
    .local v0, "f":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    const-string/jumbo v2, "mOnScrollChangedListener"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_0
    sput-object v0, Lorg/telegram/ui/Components/EmojiView;->superListenerField:Ljava/lang/reflect/Field;

    .line 99
    new-instance v1, Lorg/telegram/ui/Components/EmojiView$1;

    invoke-direct {v1}, Lorg/telegram/ui/Components/EmojiView$1;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/EmojiView;->NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 497
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;

    return-void

    .line 94
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(ZZLandroid/content/Context;)V
    .locals 21
    .param p1, "needStickers"    # Z
    .param p2, "needGif"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 553
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 495
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    .line 496
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    .line 498
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    .line 499
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    .line 500
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    .line 501
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    .line 505
    const/4 v2, 0x7

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->icons:[I

    .line 518
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    .line 535
    const/4 v2, 0x2

    new-array v2, v2, [I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->location:[I

    .line 537
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    .line 538
    const/4 v2, -0x2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifTabBum:I

    .line 555
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/EmojiView;->showStickers:Z

    .line 556
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/EmojiView;->showGifs:Z

    .line 558
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    sget-object v2, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    if-ge v12, v2, :cond_1

    .line 559
    new-instance v11, Landroid/widget/GridView;

    move-object/from16 v0, p3

    invoke-direct {v11, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 560
    .local v11, "gridView":Landroid/widget/GridView;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 561
    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 565
    :goto_1
    const/4 v2, -0x1

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    new-instance v9, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    add-int/lit8 v2, v12, -0x1

    move-object/from16 v0, p0

    invoke-direct {v9, v0, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    .line 569
    .local v9, "emojiGridAdapter":Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;
    invoke-virtual {v11, v9}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 570
    const v2, -0xa0909

    invoke-static {v11, v2}, Lorg/telegram/messenger/AndroidUtilities;->setListViewEdgeEffectColor(Landroid/widget/AbsListView;I)V

    .line 571
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 558
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 563
    .end local v9    # "emojiGridAdapter":Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;
    :cond_0
    const/high16 v2, 0x42340000    # 45.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    goto :goto_1

    .line 574
    .end local v11    # "gridView":Landroid/widget/GridView;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/telegram/ui/Components/EmojiView;->showStickers:Z

    if-eqz v2, :cond_3

    .line 575
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->checkStickers()V

    .line 576
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$2;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    .line 592
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    const v3, 0x7f0202b2

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setSelector(I)V

    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    const/high16 v3, 0x42900000    # 72.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    const/4 v3, 0x0

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setClipToPadding(Z)V

    .line 597
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$3;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 606
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmojiView$4;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 626
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    const v3, -0xa0909

    invoke-static {v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->setListViewEdgeEffectColor(Landroid/widget/AbsListView;I)V

    .line 628
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    .line 629
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 631
    if-eqz p2, :cond_2

    .line 632
    new-instance v2, Lorg/telegram/ui/Components/RecyclerListView;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$5;

    const/16 v4, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1, v4}, Lorg/telegram/ui/Components/EmojiView$5;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->flowLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 654
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->flowLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$6;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ExtendedGridLayoutManager;->setSpanSizeLookup(Lorg/telegram/messenger/support/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 660
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$7;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$7;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 674
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v3, v0, v1}, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 675
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$8;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$9;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 725
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 728
    :cond_2
    new-instance v2, Landroid/widget/TextView;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    .line 729
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    const-string/jumbo v3, "NoStickers"

    const v4, 0x7f07034c

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    const/4 v3, 0x1

    const/high16 v4, 0x41900000    # 18.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 731
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 732
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    const/4 v4, -0x2

    const/4 v5, -0x2

    const/16 v6, 0x11

    invoke-static {v4, v5, v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 735
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$10;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$10;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineHeight(I)V

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const v3, -0x1d1a19

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setIndicatorColor(I)V

    .line 802
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const v3, -0x1d1a19

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setUnderlineColor(I)V

    .line 803
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setVisibility(I)V

    .line 804
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const/4 v3, -0x1

    const/16 v4, 0x30

    const/16 v5, 0x33

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 805
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setTranslationX(F)V

    .line 806
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$11;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$11;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setDelegate(Lorg/telegram/ui/Components/ScrollSlidingTabStrip$ScrollSlidingTabStripDelegate;)V

    .line 852
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$12;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$12;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 865
    :cond_3
    const v2, -0xa0909

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/EmojiView;->setBackgroundColor(I)V

    .line 867
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$13;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$13;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    .line 876
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lorg/telegram/ui/Components/EmojiView$EmojiPagesAdapter;-><init>(Lorg/telegram/ui/Components/EmojiView;Lorg/telegram/ui/Components/EmojiView$1;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 878
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$14;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$14;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStripContainer:Landroid/widget/LinearLayout;

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStripContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 888
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStripContainer:Landroid/widget/LinearLayout;

    const v3, -0xa0909

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 890
    sget-object v2, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v3, "ApoTheme"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 891
    .local v18, "themePreferences":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "theme_emoji_tab_icolor"

    const v3, -0x575758

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 892
    .local v13, "iColor":I
    const-string/jumbo v2, "theme_emoji_tab_scolor"

    const v3, -0xd4691e

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v15

    .line 893
    .local v15, "stColor":I
    const-string/jumbo v2, "theme_emoji_tab_ucolor"

    const v3, -0x1d1a19

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 895
    .local v19, "tuColor":I
    new-instance v16, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 896
    .local v16, "states":Landroid/graphics/drawable/StateListDrawable;
    const/4 v2, 0x0

    new-array v2, v2, [I

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    move/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 897
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    const v4, 0x10100a7

    aput v4, v2, v3

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v15}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 898
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStripContainer:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView;->updateColors(Landroid/content/SharedPreferences;Landroid/widget/LinearLayout;)V

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStripContainer:Landroid/widget/LinearLayout;

    const/4 v3, -0x1

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Components/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 902
    new-instance v14, Lorg/telegram/ui/Components/PagerSlidingTabStrip;

    move-object/from16 v0, p3

    invoke-direct {v14, v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;-><init>(Landroid/content/Context;)V

    .line 903
    .local v14, "pagerSlidingTabStrip":Lorg/telegram/ui/Components/PagerSlidingTabStrip;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v14, v2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 904
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setShouldExpand(Z)V

    .line 905
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v14, v2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setIndicatorHeight(I)V

    .line 906
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v14, v2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setUnderlineHeight(I)V

    .line 907
    invoke-virtual {v14, v15}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setIndicatorColor(I)V

    .line 908
    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setUnderlineColor(I)V

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStripContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/16 v4, 0x30

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(IIF)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 910
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$15;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/telegram/ui/Components/EmojiView$15;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v14, v2}, Lorg/telegram/ui/Components/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 927
    new-instance v10, Landroid/widget/FrameLayout;

    move-object/from16 v0, p3

    invoke-direct {v10, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 928
    .local v10, "frameLayout":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStripContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x34

    const/16 v4, 0x30

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v10, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 930
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$16;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$16;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    .line 949
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const v3, 0x7f020170

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    invoke-static {v2, v13}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setColorFilter(Landroid/widget/ImageView;I)V

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const v3, 0x7f020155

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 954
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 955
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    const/16 v3, 0x34

    const/high16 v4, 0x42400000    # 48.0f

    invoke-static {v3, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 961
    new-instance v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p3

    invoke-direct {v2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentsWrap:Landroid/widget/FrameLayout;

    .line 962
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->recentsWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 964
    new-instance v17, Landroid/widget/TextView;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 965
    .local v17, "textView":Landroid/widget/TextView;
    const-string/jumbo v2, "NoRecent"

    const v3, 0x7f070341

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    const/high16 v2, 0x41900000    # 18.0f

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 967
    const v2, -0x777778

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 968
    const/16 v2, 0x11

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 969
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->recentsWrap:Landroid/widget/FrameLayout;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 970
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/GridView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    move-object/from16 v20, v0

    const/4 v2, -0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/16 v4, 0x33

    const/4 v5, 0x0

    const/high16 v6, 0x42400000    # 48.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 974
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_4

    const/high16 v2, 0x42200000    # 40.0f

    :goto_2
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->emojiSize:I

    .line 975
    new-instance v2, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v2, v0, v1}, Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    .line 976
    new-instance v3, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x28

    :goto_3
    mul-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lorg/telegram/ui/Components/EmojiView;->popupWidth:I

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_6

    const/high16 v2, 0x42800000    # 64.0f

    :goto_4
    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lorg/telegram/ui/Components/EmojiView;->popupHeight:I

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5, v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;-><init>(Lorg/telegram/ui/Components/EmojiView;Landroid/view/View;II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    .line 977
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setOutsideTouchable(Z)V

    .line 978
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setClippingEnabled(Z)V

    .line 979
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setInputMethodMode(I)V

    .line 980
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->setSoftInputMode(I)V

    .line 981
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 982
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->getContentView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$17;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/telegram/ui/Components/EmojiView$17;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 993
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->loadRecents()V

    .line 994
    return-void

    .line 974
    :cond_4
    const/high16 v2, 0x42000000    # 32.0f

    goto/16 :goto_2

    .line 976
    :cond_5
    const/16 v2, 0x20

    goto :goto_3

    :cond_6
    const/high16 v2, 0x42600000    # 56.0f

    goto :goto_4

    .line 505
    :array_0
    .array-data 4
        0x7f020159
        0x7f02015a
        0x7f020158
        0x7f020156
        0x7f020157
        0x7f02015c
        0x7f02015b
    .end array-data
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->popupWidth:I

    return v0
.end method

.method static synthetic access$1100(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    return-object v0
.end method

.method static synthetic access$1200(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->popupHeight:I

    return v0
.end method

.method static synthetic access$1300(Lorg/telegram/ui/Components/EmojiView;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    return-object v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->sortEmoji()V

    return-void
.end method

.method static synthetic access$1800(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveRecentEmoji()V

    return-void
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveEmojiColors()V

    return-void
.end method

.method static synthetic access$2100()Ljava/lang/reflect/Field;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/telegram/ui/Components/EmojiView;->superListenerField:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method static synthetic access$2200()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/telegram/ui/Components/EmojiView;->NOP:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-object v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$2400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$2500(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2602(Lorg/telegram/ui/Components/EmojiView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ExtendedGridLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->flowLayoutManager:Lorg/telegram/ui/Components/ExtendedGridLayoutManager;

    return-object v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifsAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    return-void
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/ScrollSlidingTabStrip;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    return-object v0
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabBum:I

    return v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->showGifTab()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    return v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    return v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3900(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->checkStickersScroll(I)V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/EmojiView;III)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/ui/Components/EmojiView;->onPageScrolled(III)V

    return-void
.end method

.method static synthetic access$4200(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspacePressed:Z

    return v0
.end method

.method static synthetic access$4202(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspacePressed:Z

    return p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/EmojiView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    return v0
.end method

.method static synthetic access$4302(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceOnce:Z

    return p1
.end method

.method static synthetic access$4400(Lorg/telegram/ui/Components/EmojiView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/EmojiView;->postBackspaceRunnable(I)V

    return-void
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->backspaceButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4600(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    return-void
.end method

.method static synthetic access$4700(Lorg/telegram/ui/Components/EmojiView;)J
    .locals 2
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-wide v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastGifLoadTime:J

    return-wide v0
.end method

.method static synthetic access$4702(Lorg/telegram/ui/Components/EmojiView;J)J
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Lorg/telegram/ui/Components/EmojiView;->lastGifLoadTime:J

    return-wide p1
.end method

.method static synthetic access$4802(Lorg/telegram/ui/Components/EmojiView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;
    .param p1, "x1"    # Z

    .prologue
    .line 75
    iput-boolean p1, p0, Lorg/telegram/ui/Components/EmojiView;->loadingRecentGifs:Z

    return p1
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5000(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentsWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/EmojiView;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersWrap:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/EmojiView;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->icons:[I

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerView:Lorg/telegram/ui/Components/EmojiView$EmojiColorPickerView;

    return-object v0
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/EmojiView;)[I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->location:[I

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/EmojiView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/EmojiView;

    .prologue
    .line 75
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->emojiSize:I

    return v0
.end method

.method private calcGifsHash(Ljava/util/ArrayList;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    const-wide/16 v12, 0x4f25

    const-wide v10, 0x80000000L

    .line 1544
    if-nez p1, :cond_0

    .line 1545
    const/4 v6, 0x0

    .line 1558
    :goto_0
    return v6

    .line 1547
    :cond_0
    const-wide/16 v2, 0x0

    .line 1548
    .local v2, "acc":J
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    const/16 v6, 0xc8

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v0, v6, :cond_2

    .line 1549
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 1550
    .local v5, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-nez v6, :cond_1

    .line 1548
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1553
    :cond_1
    iget-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    long-to-int v1, v6

    .line 1554
    .local v1, "high_id":I
    iget-object v6, v5, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v6, v6, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    long-to-int v4, v6

    .line 1555
    .local v4, "lower_id":I
    mul-long v6, v2, v12

    add-long/2addr v6, v10

    int-to-long v8, v1

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    .line 1556
    mul-long v6, v2, v12

    add-long/2addr v6, v10

    int-to-long v8, v4

    add-long/2addr v6, v8

    rem-long v2, v6, v10

    goto :goto_2

    .line 1558
    .end local v1    # "high_id":I
    .end local v4    # "lower_id":I
    .end local v5    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_2
    long-to-int v6, v2

    goto :goto_0
.end method

.method private checkStickersScroll(I)V
    .locals 6
    .param p1, "firstVisibleItem"    # I

    .prologue
    .line 1013
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    if-nez v3, :cond_0

    .line 1030
    :goto_0
    return-void

    .line 1016
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1017
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabBum:I

    add-int/lit8 v5, v3, 0x1

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v3, :cond_1

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v5, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_0

    :cond_1
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_1

    .line 1020
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    .line 1021
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 1022
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    invoke-virtual {v3, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1023
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1024
    add-int/lit8 p1, p1, 0x1

    .line 1021
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1029
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v3, p1}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getTabForPosition(I)I

    move-result v3

    add-int/lit8 v5, v3, 0x1

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v3, :cond_4

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_3
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v4, v5, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto :goto_0

    :cond_4
    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_3
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "paramLong"    # J

    .prologue
    .line 1082
    const-string/jumbo v2, ""

    .line 1083
    .local v2, "str":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1084
    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-lt v0, v3, :cond_0

    .line 1085
    return-object v2

    .line 1087
    :cond_0
    const-wide/32 v4, 0xffff

    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x10

    shr-long v6, p1, v3

    and-long/2addr v4, v6

    long-to-int v1, v4

    .line 1088
    .local v1, "j":I
    if-eqz v1, :cond_1

    .line 1089
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-char v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1083
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private onPageScrolled(III)V
    .locals 4
    .param p1, "position"    # I
    .param p2, "width"    # I
    .param p3, "positionOffsetPixels"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1033
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v3, :cond_1

    .line 1063
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    if-nez p2, :cond_2

    .line 1038
    sget-object v3, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget p2, v3, Landroid/graphics/Point;->x:I

    .line 1041
    :cond_2
    const/4 v0, 0x0

    .line 1042
    .local v0, "margin":I
    const/4 v3, 0x5

    if-ne p1, v3, :cond_5

    .line 1043
    neg-int v0, p3

    .line 1044
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz v3, :cond_3

    .line 1045
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz p3, :cond_4

    :goto_1
    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickersTab(Z)V

    .line 1058
    :cond_3
    :goto_2
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStripContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTranslationX()F

    move-result v1

    int-to-float v3, v0

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_0

    .line 1059
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStripContainer:Landroid/widget/LinearLayout;

    int-to-float v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 1060
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    add-int v3, p2, v0

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setTranslationX(F)V

    .line 1061
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-gez v0, :cond_7

    :goto_3
    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 1045
    goto :goto_1

    .line 1047
    :cond_5
    const/4 v3, 0x6

    if-ne p1, v3, :cond_6

    .line 1048
    neg-int v0, p2

    .line 1049
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz v3, :cond_3

    .line 1050
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    invoke-interface {v3, v1}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickersTab(Z)V

    goto :goto_2

    .line 1053
    :cond_6
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz v1, :cond_3

    .line 1054
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickersTab(Z)V

    goto :goto_2

    .line 1061
    :cond_7
    const/4 v2, 0x4

    goto :goto_3
.end method

.method private postBackspaceRunnable(I)V
    .locals 4
    .param p1, "time"    # I

    .prologue
    .line 1066
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$18;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/EmojiView$18;-><init>(Lorg/telegram/ui/Components/EmojiView;I)V

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 1079
    return-void
.end method

.method private reloadStickersAdapter()V
    .locals 1

    .prologue
    .line 1464
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 1465
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->notifyDataSetChanged()V

    .line 1467
    :cond_0
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1468
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->close()V

    .line 1470
    :cond_1
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer;->reset()V

    .line 1471
    return-void
.end method

.method private saveEmojiColors()V
    .locals 7

    .prologue
    .line 1109
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "emoji"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1110
    .local v2, "preferences":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1111
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    sget-object v4, Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1112
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1113
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1115
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1116
    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1119
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "color"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1120
    return-void
.end method

.method private saveRecentEmoji()V
    .locals 7

    .prologue
    .line 1095
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "emoji"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1096
    .local v2, "preferences":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1097
    .local v3, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1098
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1099
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1101
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    const-string/jumbo v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1105
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "emojis2"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1106
    return-void
.end method

.method private saveRecentStickers()V
    .locals 6

    .prologue
    .line 1123
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "emoji"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1124
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1125
    .local v2, "stringBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1126
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 1127
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1131
    :cond_1
    const-string/jumbo v3, "stickers2"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1132
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1133
    return-void
.end method

.method private showGifTab()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1006
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1007
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1008
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1009
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabBum:I

    add-int/lit8 v2, v0, 0x1

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v0, :cond_0

    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v2, v0}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 1010
    return-void

    .line 1009
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_0
.end method

.method private sortEmoji()V
    .locals 4

    .prologue
    .line 1145
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1146
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1147
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1149
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    new-instance v3, Lorg/telegram/ui/Components/EmojiView$19;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/EmojiView$19;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1168
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_1

    .line 1169
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1171
    :cond_1
    return-void
.end method

.method private sortStickers()V
    .locals 6

    .prologue
    .line 1174
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1175
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1195
    :cond_0
    :goto_0
    return-void

    .line 1178
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1179
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1180
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/telegram/messenger/query/StickersQuery;->getStickerById(J)Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 1181
    .local v1, "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    if-eqz v1, :cond_2

    .line 1182
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1179
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1185
    .end local v1    # "sticker":Lorg/telegram/tgnet/TLRPC$Document;
    :cond_3
    :goto_2
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x14

    if-le v2, v3, :cond_4

    .line 1186
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 1188
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1189
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1190
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_5

    .line 1191
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1190
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1193
    :cond_5
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveRecentStickers()V

    goto :goto_0
.end method

.method private updateStickerTabs()V
    .locals 9

    .prologue
    const/16 v5, 0x8

    const/4 v8, -0x2

    const/4 v6, 0x0

    .line 1198
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-nez v4, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return-void

    .line 1201
    :cond_1
    iput v8, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    .line 1202
    iput v8, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabBum:I

    .line 1204
    iput v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1205
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getCurrentPosition()I

    move-result v1

    .line 1206
    .local v1, "lastPosition":I
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->removeTabs()V

    .line 1207
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const v7, 0x7f02017d

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(I)V

    .line 1209
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView;->showGifs:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1210
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const v7, 0x7f020178

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(I)V

    .line 1211
    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabBum:I

    .line 1212
    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1215
    :cond_2
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->recentStickers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1216
    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    iput v4, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    .line 1217
    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    .line 1218
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const v7, 0x7f02017b

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(I)V

    .line 1221
    :cond_3
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1222
    invoke-static {}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSets()Ljava/util/ArrayList;

    move-result-object v3

    .line 1223
    .local v3, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 1224
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    .line 1225
    .local v2, "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$StickerSet;->disabled:Z

    if-nez v4, :cond_4

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    if-eqz v4, :cond_4

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1223
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1228
    :cond_5
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1230
    .end local v2    # "pack":Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;
    :cond_6
    const/4 v0, 0x0

    :goto_3
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_7

    .line 1231
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickerSets:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;->documents:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$Document;

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addStickerTab(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 1230
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1233
    :cond_7
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    const v7, 0x7f02016e

    invoke-virtual {v4, v7}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->addIconTab(I)V

    .line 1234
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->updateTabStyles()V

    .line 1235
    if-eqz v1, :cond_8

    .line 1236
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v4, v1, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    .line 1238
    :cond_8
    iget-boolean v4, p0, Lorg/telegram/ui/Components/EmojiView;->switchToGifTab:Z

    if-eqz v4, :cond_9

    .line 1239
    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabBum:I

    if-ltz v4, :cond_9

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_9

    .line 1240
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->showGifTab()V

    .line 1241
    iput-boolean v6, p0, Lorg/telegram/ui/Components/EmojiView;->switchToGifTab:Z

    .line 1244
    :cond_9
    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabBum:I

    if-ne v4, v8, :cond_b

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_b

    .line 1245
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    invoke-interface {v4, v6}, Lorg/telegram/ui/Components/EmojiView$Listener;->onGifTab(Z)V

    .line 1246
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1247
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    invoke-virtual {v4, v6}, Landroid/widget/GridView;->setVisibility(I)V

    .line 1248
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->stickersEmptyView:Landroid/widget/TextView;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getCount()I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v5

    :goto_4
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_a
    move v4, v6

    goto :goto_4

    .line 1249
    :cond_b
    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabBum:I

    if-eq v4, v8, :cond_0

    .line 1250
    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_d

    .line 1251
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabBum:I

    add-int/lit8 v6, v4, 0x1

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v4, :cond_c

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_5
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v6, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto/16 :goto_0

    :cond_c
    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_5

    .line 1253
    :cond_d
    iget-object v5, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget-object v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    iget-object v6, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridView:Landroid/widget/GridView;

    invoke-virtual {v6}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v6

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;->getTabForPosition(I)I

    move-result v4

    add-int/lit8 v6, v4, 0x1

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    if-lez v4, :cond_e

    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->recentTabBum:I

    :goto_6
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v5, v6, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->onPageScrolled(II)V

    goto/16 :goto_0

    :cond_e
    iget v4, p0, Lorg/telegram/ui/Components/EmojiView;->stickersTabOffset:I

    goto :goto_6
.end method


# virtual methods
.method public addRecentGif(Lorg/telegram/messenger/MediaController$SearchImage;)V
    .locals 6
    .param p1, "searchImage"    # Lorg/telegram/messenger/MediaController$SearchImage;

    .prologue
    const/4 v5, 0x0

    .line 1276
    if-eqz p1, :cond_0

    iget-object v3, p1, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    .line 1298
    :cond_0
    :goto_0
    return-void

    .line 1279
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    .line 1280
    .local v2, "wasEmpty":Z
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1281
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$SearchImage;

    .line 1282
    .local v1, "image":Lorg/telegram/messenger/MediaController$SearchImage;
    iget-object v3, v1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    iget-object v4, p1, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1283
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1284
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1285
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    if-eqz v3, :cond_0

    .line 1286
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1280
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1291
    .end local v1    # "image":Lorg/telegram/messenger/MediaController$SearchImage;
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    invoke-virtual {v3, v5, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1292
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    if-eqz v3, :cond_4

    .line 1293
    iget-object v3, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->notifyDataSetChanged()V

    .line 1295
    :cond_4
    if-eqz v2, :cond_0

    .line 1296
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    goto :goto_0
.end method

.method public addRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 5
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v4, 0x0

    .line 1259
    if-nez p1, :cond_0

    .line 1273
    :goto_0
    return-void

    .line 1262
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1263
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1264
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1265
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 1266
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1272
    :cond_1
    :goto_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveRecentStickers()V

    goto :goto_0

    .line 1268
    :cond_2
    if-eqz v0, :cond_1

    .line 1269
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1270
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    iget-wide v2, p1, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public clearRecentEmoji()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 997
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "emoji"

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 998
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "filled_default"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 999
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1000
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentEmoji:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1001
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->saveRecentEmoji()V

    .line 1002
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 1003
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1613
    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    if-ne p1, v1, :cond_1

    .line 1614
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 1615
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 1630
    :cond_0
    :goto_0
    return-void

    .line 1616
    :cond_1
    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    if-ne p1, v1, :cond_0

    .line 1617
    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    .line 1618
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1619
    .local v0, "previousCount":I
    :goto_1
    const/4 v1, 0x1

    aget-object v1, p2, v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    .line 1620
    iput-boolean v2, p0, Lorg/telegram/ui/Components/EmojiView;->loadingRecent:Z

    .line 1621
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    if-eqz v1, :cond_2

    .line 1622
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->notifyDataSetChanged()V

    .line 1624
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1625
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 1627
    :cond_3
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->loadRecentGif()V

    goto :goto_0

    .end local v0    # "previousCount":I
    :cond_4
    move v0, v2

    .line 1618
    goto :goto_1
.end method

.method public invalidateViews()V
    .locals 3

    .prologue
    .line 1478
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->views:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 1479
    .local v0, "gridView":Landroid/widget/GridView;
    if-eqz v0, :cond_0

    .line 1480
    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    goto :goto_0

    .line 1483
    .end local v0    # "gridView":Landroid/widget/GridView;
    :cond_1
    return-void
.end method

.method public loadGifRecent()V
    .locals 2

    .prologue
    .line 1502
    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->showGifs:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->loadingRecent:Z

    if-nez v0, :cond_0

    .line 1503
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->loadWebRecent(I)V

    .line 1504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->loadingRecent:Z

    .line 1506
    :cond_0
    return-void
.end method

.method public loadRecentGif()V
    .locals 6

    .prologue
    .line 1562
    iget-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->loadingRecentGifs:Z

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/telegram/ui/Components/EmojiView;->lastGifLoadTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 1608
    :cond_0
    :goto_0
    return-void

    .line 1565
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/ui/Components/EmojiView;->loadingRecentGifs:Z

    .line 1566
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;-><init>()V

    .line 1567
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lorg/telegram/ui/Components/EmojiView;->calcGifsHash(Ljava/util/ArrayList;)I

    move-result v1

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getSavedGifs;->hash:I

    .line 1568
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$22;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmojiView$22;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public loadRecents()V
    .locals 28

    .prologue
    .line 1301
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->getContext()Landroid/content/Context;

    move-result-object v24

    const-string/jumbo v25, "emoji"

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 1302
    .local v18, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v24, "lastGifLoadTime"

    const-wide/16 v26, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-wide/from16 v2, v26

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/telegram/ui/Components/EmojiView;->lastGifLoadTime:J

    .line 1306
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->clear()V

    .line 1307
    const-string/jumbo v24, "emojis"

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 1308
    const-string/jumbo v24, "emojis"

    const-string/jumbo v25, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1309
    .local v20, "str":Ljava/lang/String;
    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_3

    .line 1310
    const-string/jumbo v24, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1311
    .local v6, "args":[Ljava/lang/String;
    move-object v8, v6

    .local v8, "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_0
    move/from16 v0, v16

    if-ge v12, v0, :cond_3

    aget-object v5, v8, v12

    .line 1312
    .local v5, "arg":Ljava/lang/String;
    const-string/jumbo v24, "="

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1313
    .local v7, "args2":[Ljava/lang/String;
    const/16 v24, 0x0

    aget-object v24, v7, v24

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 1314
    .local v22, "value":J
    const-string/jumbo v21, ""

    .line 1315
    .local v21, "string":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_1
    const/16 v24, 0x4

    move/from16 v0, v24

    if-ge v4, v0, :cond_0

    .line 1316
    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-char v9, v0

    .line 1317
    .local v9, "ch":C
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 1318
    const/16 v24, 0x10

    shr-long v22, v22, v24

    .line 1319
    const-wide/16 v24, 0x0

    cmp-long v24, v22, v24

    if-nez v24, :cond_2

    .line 1323
    .end local v9    # "ch":C
    :cond_0
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_1

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v25, v7, v25

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1311
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1315
    .restart local v9    # "ch":C
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1328
    .end local v4    # "a":I
    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "args":[Ljava/lang/String;
    .end local v7    # "args2":[Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v9    # "ch":C
    .end local v12    # "i$":I
    .end local v16    # "len$":I
    .end local v21    # "string":Ljava/lang/String;
    .end local v22    # "value":J
    :cond_3
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    const-string/jumbo v25, "emojis"

    invoke-interface/range {v24 .. v25}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1329
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->saveRecentEmoji()V

    .line 1340
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->isEmpty()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 1341
    const-string/jumbo v24, "filled_default"

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    if-nez v24, :cond_7

    .line 1342
    const/16 v24, 0x22

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v24, 0x0

    const-string/jumbo v25, "\ud83d\ude02"

    aput-object v25, v17, v24

    const/16 v24, 0x1

    const-string/jumbo v25, "\ud83d\ude18"

    aput-object v25, v17, v24

    const/16 v24, 0x2

    const-string/jumbo v25, "\u2764"

    aput-object v25, v17, v24

    const/16 v24, 0x3

    const-string/jumbo v25, "\ud83d\ude0d"

    aput-object v25, v17, v24

    const/16 v24, 0x4

    const-string/jumbo v25, "\ud83d\ude0a"

    aput-object v25, v17, v24

    const/16 v24, 0x5

    const-string/jumbo v25, "\ud83d\ude01"

    aput-object v25, v17, v24

    const/16 v24, 0x6

    const-string/jumbo v25, "\ud83d\udc4d"

    aput-object v25, v17, v24

    const/16 v24, 0x7

    const-string/jumbo v25, "\u263a"

    aput-object v25, v17, v24

    const/16 v24, 0x8

    const-string/jumbo v25, "\ud83d\ude14"

    aput-object v25, v17, v24

    const/16 v24, 0x9

    const-string/jumbo v25, "\ud83d\ude04"

    aput-object v25, v17, v24

    const/16 v24, 0xa

    const-string/jumbo v25, "\ud83d\ude2d"

    aput-object v25, v17, v24

    const/16 v24, 0xb

    const-string/jumbo v25, "\ud83d\udc8b"

    aput-object v25, v17, v24

    const/16 v24, 0xc

    const-string/jumbo v25, "\ud83d\ude12"

    aput-object v25, v17, v24

    const/16 v24, 0xd

    const-string/jumbo v25, "\ud83d\ude33"

    aput-object v25, v17, v24

    const/16 v24, 0xe

    const-string/jumbo v25, "\ud83d\ude1c"

    aput-object v25, v17, v24

    const/16 v24, 0xf

    const-string/jumbo v25, "\ud83d\ude48"

    aput-object v25, v17, v24

    const/16 v24, 0x10

    const-string/jumbo v25, "\ud83d\ude09"

    aput-object v25, v17, v24

    const/16 v24, 0x11

    const-string/jumbo v25, "\ud83d\ude03"

    aput-object v25, v17, v24

    const/16 v24, 0x12

    const-string/jumbo v25, "\ud83d\ude22"

    aput-object v25, v17, v24

    const/16 v24, 0x13

    const-string/jumbo v25, "\ud83d\ude1d"

    aput-object v25, v17, v24

    const/16 v24, 0x14

    const-string/jumbo v25, "\ud83d\ude31"

    aput-object v25, v17, v24

    const/16 v24, 0x15

    const-string/jumbo v25, "\ud83d\ude21"

    aput-object v25, v17, v24

    const/16 v24, 0x16

    const-string/jumbo v25, "\ud83d\ude0f"

    aput-object v25, v17, v24

    const/16 v24, 0x17

    const-string/jumbo v25, "\ud83d\ude1e"

    aput-object v25, v17, v24

    const/16 v24, 0x18

    const-string/jumbo v25, "\ud83d\ude05"

    aput-object v25, v17, v24

    const/16 v24, 0x19

    const-string/jumbo v25, "\ud83d\ude1a"

    aput-object v25, v17, v24

    const/16 v24, 0x1a

    const-string/jumbo v25, "\ud83d\ude4a"

    aput-object v25, v17, v24

    const/16 v24, 0x1b

    const-string/jumbo v25, "\ud83d\ude0c"

    aput-object v25, v17, v24

    const/16 v24, 0x1c

    const-string/jumbo v25, "\ud83d\ude00"

    aput-object v25, v17, v24

    const/16 v24, 0x1d

    const-string/jumbo v25, "\ud83d\ude0b"

    aput-object v25, v17, v24

    const/16 v24, 0x1e

    const-string/jumbo v25, "\ud83d\ude06"

    aput-object v25, v17, v24

    const/16 v24, 0x1f

    const-string/jumbo v25, "\ud83d\udc4c"

    aput-object v25, v17, v24

    const/16 v24, 0x20

    const-string/jumbo v25, "\ud83d\ude10"

    aput-object v25, v17, v24

    const/16 v24, 0x21

    const-string/jumbo v25, "\ud83d\ude15"

    aput-object v25, v17, v24

    .line 1349
    .local v17, "newRecent":[Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v11, v0, :cond_6

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    move-object/from16 v24, v0

    aget-object v25, v17, v11

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v26, v0

    sub-int v26, v26, v11

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1331
    .end local v11    # "i":I
    .end local v17    # "newRecent":[Ljava/lang/String;
    .end local v20    # "str":Ljava/lang/String;
    :cond_5
    const-string/jumbo v24, "emojis2"

    const-string/jumbo v25, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1332
    .restart local v20    # "str":Ljava/lang/String;
    if-eqz v20, :cond_4

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_4

    .line 1333
    const-string/jumbo v24, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1334
    .restart local v6    # "args":[Ljava/lang/String;
    move-object v8, v6

    .restart local v8    # "arr$":[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    .restart local v16    # "len$":I
    const/4 v12, 0x0

    .restart local v12    # "i$":I
    :goto_3
    move/from16 v0, v16

    if-ge v12, v0, :cond_4

    aget-object v5, v8, v12

    .line 1335
    .restart local v5    # "arg":Ljava/lang/String;
    const-string/jumbo v24, "="

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1336
    .restart local v7    # "args2":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->emojiUseHistory:Ljava/util/HashMap;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v25, v7, v25

    const/16 v26, 0x1

    aget-object v26, v7, v26

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1334
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1352
    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "args":[Ljava/lang/String;
    .end local v7    # "args2":[Ljava/lang/String;
    .end local v8    # "arr$":[Ljava/lang/String;
    .end local v12    # "i$":I
    .end local v16    # "len$":I
    .restart local v11    # "i":I
    .restart local v17    # "newRecent":[Ljava/lang/String;
    :cond_6
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    const-string/jumbo v25, "filled_default"

    const/16 v26, 0x1

    invoke-interface/range {v24 .. v26}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1353
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->saveRecentEmoji()V

    .line 1356
    .end local v11    # "i":I
    .end local v17    # "newRecent":[Ljava/lang/String;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->sortEmoji()V

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual/range {v24 .. v24}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    .end local v20    # "str":Ljava/lang/String;
    :goto_4
    :try_start_1
    const-string/jumbo v24, "color"

    const-string/jumbo v25, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1364
    .restart local v20    # "str":Ljava/lang/String;
    if-eqz v20, :cond_8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_8

    .line 1365
    const-string/jumbo v24, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1366
    .restart local v6    # "args":[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_5
    array-length v0, v6

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v4, v0, :cond_8

    .line 1367
    aget-object v5, v6, v4

    .line 1368
    .restart local v5    # "arg":Ljava/lang/String;
    const-string/jumbo v24, "="

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1369
    .restart local v7    # "args2":[Ljava/lang/String;
    sget-object v24, Lorg/telegram/ui/Components/EmojiView;->emojiColor:Ljava/util/HashMap;

    const/16 v25, 0x0

    aget-object v25, v7, v25

    const/16 v26, 0x1

    aget-object v26, v7, v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1366
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1358
    .end local v4    # "a":I
    .end local v5    # "arg":Ljava/lang/String;
    .end local v6    # "args":[Ljava/lang/String;
    .end local v7    # "args2":[Ljava/lang/String;
    .end local v20    # "str":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 1359
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v24, "tmessages"

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 1372
    .end local v10    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v10

    .line 1373
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string/jumbo v24, "tmessages"

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1376
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/ui/Components/EmojiView;->showStickers:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 1378
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 1379
    const-string/jumbo v24, "stickers"

    const-string/jumbo v25, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1380
    .restart local v20    # "str":Ljava/lang/String;
    if-eqz v20, :cond_c

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_c

    .line 1381
    const-string/jumbo v24, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1382
    .restart local v6    # "args":[Ljava/lang/String;
    new-instance v19, Ljava/util/HashMap;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashMap;-><init>()V

    .line 1383
    .local v19, "stickersUseHistory":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_6
    array-length v0, v6

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v4, v0, :cond_9

    .line 1384
    aget-object v5, v6, v4

    .line 1385
    .restart local v5    # "arg":Ljava/lang/String;
    const-string/jumbo v24, "="

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1386
    .restart local v7    # "args2":[Ljava/lang/String;
    const/16 v24, 0x0

    aget-object v24, v7, v24

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    .line 1387
    .local v13, "key":Ljava/lang/Long;
    const/16 v24, 0x1

    aget-object v24, v7, v24

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1383
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1390
    .end local v5    # "arg":Ljava/lang/String;
    .end local v7    # "args2":[Ljava/lang/String;
    .end local v13    # "key":Ljava/lang/Long;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    new-instance v25, Lorg/telegram/ui/Components/EmojiView$20;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/EmojiView$20;-><init>(Lorg/telegram/ui/Components/EmojiView;Ljava/util/HashMap;)V

    invoke-static/range {v24 .. v25}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1409
    invoke-interface/range {v18 .. v18}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    const-string/jumbo v25, "stickers"

    invoke-interface/range {v24 .. v25}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1410
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->saveRecentStickers()V

    .line 1424
    .end local v19    # "stickersUseHistory":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Integer;>;"
    :cond_a
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->sortStickers()V

    .line 1425
    invoke-direct/range {p0 .. p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 1430
    .end local v4    # "a":I
    .end local v6    # "args":[Ljava/lang/String;
    .end local v20    # "str":Ljava/lang/String;
    :cond_b
    :goto_7
    return-void

    .line 1412
    .restart local v20    # "str":Ljava/lang/String;
    :cond_c
    const-string/jumbo v24, "stickers2"

    const-string/jumbo v25, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1413
    const-string/jumbo v24, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1414
    .restart local v6    # "args":[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "a":I
    :goto_8
    array-length v0, v6

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v4, v0, :cond_a

    .line 1415
    aget-object v24, v6, v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_e

    .line 1414
    :cond_d
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 1418
    :cond_e
    aget-object v24, v6, v4

    invoke-static/range {v24 .. v24}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1419
    .local v14, "id":J
    const-wide/16 v24, 0x0

    cmp-long v24, v14, v24

    if-eqz v24, :cond_d

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/EmojiView;->newRecentStickers:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_9

    .line 1426
    .end local v4    # "a":I
    .end local v6    # "args":[Ljava/lang/String;
    .end local v14    # "id":J
    .end local v20    # "str":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 1427
    .restart local v10    # "e":Ljava/lang/Exception;
    const-string/jumbo v24, "tmessages"

    move-object/from16 v0, v24

    invoke-static {v0, v10}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1487
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1488
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 1489
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1490
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1491
    new-instance v0, Lorg/telegram/ui/Components/EmojiView$21;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/EmojiView$21;-><init>(Lorg/telegram/ui/Components/EmojiView;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1499
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1529
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 1530
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1531
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 1533
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1537
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 1538
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pickerViewPopup:Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiPopupWindow;->dismiss()V

    .line 1541
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 1456
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastNotifyWidth:I

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_0

    .line 1457
    sub-int v0, p4, p2

    iput v0, p0, Lorg/telegram/ui/Components/EmojiView;->lastNotifyWidth:I

    .line 1458
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 1460
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1461
    return-void
.end method

.method public onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 1434
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStripContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1435
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/4 v1, 0x0

    .line 1436
    .local v1, "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1437
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v2, :cond_0

    .line 1438
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1439
    .restart local v1    # "layoutParams1":Landroid/widget/FrameLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 1440
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1443
    :cond_0
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v3, p0, Lorg/telegram/ui/Components/EmojiView;->oldWidth:I

    if-eq v2, v3, :cond_2

    .line 1444
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 1445
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lorg/telegram/ui/Components/EmojiView;->onPageScrolled(III)V

    .line 1446
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1448
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView;->pagerSlidingTabStripContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1449
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v2, p0, Lorg/telegram/ui/Components/EmojiView;->oldWidth:I

    .line 1451
    :cond_2
    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, v2, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1452
    return-void
.end method

.method public setListener(Lorg/telegram/ui/Components/EmojiView$Listener;)V
    .locals 0
    .param p1, "value"    # Lorg/telegram/ui/Components/EmojiView$Listener;

    .prologue
    .line 1474
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    .line 1475
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    .line 1510
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1511
    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    .line 1512
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->sortEmoji()V

    .line 1513
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->adapters:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmojiView$EmojiGridAdapter;->notifyDataSetChanged()V

    .line 1514
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->stickersGridAdapter:Lorg/telegram/ui/Components/EmojiView$StickersGridAdapter;

    if-eqz v0, :cond_0

    .line 1515
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->stickersDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1516
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->recentImagesDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1517
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->sortStickers()V

    .line 1518
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V

    .line 1519
    invoke-direct {p0}, Lorg/telegram/ui/Components/EmojiView;->reloadStickersAdapter()V

    .line 1520
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifsGridView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/RecyclerListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    if-eqz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/telegram/ui/Components/EmojiView$Listener;->onGifTab(Z)V

    .line 1524
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/EmojiView;->loadGifRecent()V

    .line 1526
    :cond_1
    return-void
.end method

.method public switchToGifRecent()V
    .locals 2

    .prologue
    .line 1136
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->pager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 1137
    iget v0, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabBum:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1138
    iget-object v0, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    iget v1, p0, Lorg/telegram/ui/Components/EmojiView;->gifTabBum:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->selectTab(I)V

    .line 1142
    :goto_0
    return-void

    .line 1140
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/EmojiView;->switchToGifTab:Z

    goto :goto_0
.end method

.method public updateColors(Landroid/content/SharedPreferences;Landroid/widget/LinearLayout;)V
    .locals 10
    .param p1, "themePreferences"    # Landroid/content/SharedPreferences;
    .param p2, "linearLayout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v9, 0x0

    const v8, -0xa0909

    .line 1920
    const-string/jumbo v7, "theme_emoji_color"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1921
    .local v0, "color":I
    const-string/jumbo v7, "theme_emoji_gradient"

    invoke-interface {p1, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1922
    .local v1, "flag":I
    const-string/jumbo v7, "theme_emoji_gcolor"

    invoke-interface {p1, v7, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1923
    .local v2, "gColor":I
    if-eqz v1, :cond_1

    .line 1924
    invoke-static {v1}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v7

    invoke-static {v0, v2, v7}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setGradiant(IILandroid/graphics/drawable/GradientDrawable$Orientation;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 1925
    .local v3, "gradient":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/EmojiView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1930
    .end local v3    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    :goto_0
    const-string/jumbo v7, "theme_emoji_tab_color"

    invoke-interface {p1, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 1931
    .local v4, "tcolor":I
    const-string/jumbo v7, "theme_emoji_tab_gradient"

    invoke-interface {p1, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1932
    .local v5, "tflag":I
    const-string/jumbo v7, "theme_emoji_tab_gcolor"

    invoke-interface {p1, v7, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1933
    .local v6, "tgColor":I
    if-eqz v5, :cond_2

    .line 1934
    invoke-static {v5}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->getGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lorg/telegram/ui/Apogram/Theming/ApoTheme;->setGradiant(IILandroid/graphics/drawable/GradientDrawable$Orientation;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    .line 1935
    .restart local v3    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1937
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v7, :cond_0

    .line 1938
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v3}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1946
    .end local v3    # "gradient":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    :goto_1
    return-void

    .line 1927
    .end local v4    # "tcolor":I
    .end local v5    # "tflag":I
    .end local v6    # "tgColor":I
    :cond_1
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/EmojiView;->setBackgroundColor(I)V

    goto :goto_0

    .line 1941
    .restart local v4    # "tcolor":I
    .restart local v5    # "tflag":I
    .restart local v6    # "tgColor":I
    :cond_2
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 1942
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    if-eqz v7, :cond_0

    .line 1943
    iget-object v7, p0, Lorg/telegram/ui/Components/EmojiView;->scrollSlidingTabStrip:Lorg/telegram/ui/Components/ScrollSlidingTabStrip;

    invoke-virtual {v7, v4}, Lorg/telegram/ui/Components/ScrollSlidingTabStrip;->setBackgroundColor(I)V

    goto :goto_1
.end method
