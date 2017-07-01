.class public Lorg/telegram/ui/Components/ChatAttachAlert;
.super Lorg/telegram/ui/ActionBar/BottomSheet;
.source "ChatAttachAlert.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;
.implements Lorg/telegram/ui/PhotoViewer$PhotoViewerProvider;
.implements Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;,
        Lorg/telegram/ui/Components/ChatAttachAlert$Holder;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;,
        Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;,
        Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;,
        Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;
    }
.end annotation


# instance fields
.field private adapter:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

.field private attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

.field private attachView:Landroid/view/ViewGroup;

.field private baseFragment:Lorg/telegram/ui/ChatActivity;

.field private currentHintAnimation:Landroid/animation/AnimatorSet;

.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

.field private deviceHasGoodCamera:Z

.field private hideHintRunnable:Ljava/lang/Runnable;

.field private hintShowed:Z

.field private hintTextView:Landroid/widget/TextView;

.field private ignoreLayout:Z

.field private innerAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

.field private lineView:Landroid/view/View;

.field private listView:Lorg/telegram/ui/Components/RecyclerListView;

.field private loading:Z

.field private photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

.field private progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

.field private revealAnimationInProgress:Z

.field private revealRadius:F

.field private revealX:I

.field private revealY:I

.field private scrollOffsetY:I

.field private sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

.field private shadowDrawable:Landroid/graphics/drawable/Drawable;

.field private useRevealAnimation:Z

.field private views:[Landroid/view/View;

.field private viewsCache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/ui/Components/ChatAttachAlert$Holder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v10, -0x1

    const/16 v12, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 315
    invoke-direct {p0, p1, v5}, Lorg/telegram/ui/ActionBar/BottomSheet;-><init>(Landroid/content/Context;Z)V

    .line 86
    const/16 v0, 0x14

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewsCache:Ljava/util/ArrayList;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    .line 103
    iput-boolean v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    .line 105
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 107
    iput-boolean v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->loading:Z

    .line 316
    invoke-virtual {p0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->setDelegate(Lorg/telegram/ui/ActionBar/BottomSheet$BottomSheetDelegateInterface;)V

    .line 317
    invoke-direct {p0, v6}, Lorg/telegram/ui/Components/ChatAttachAlert;->setUseRevealAnimation(Z)V

    .line 318
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    if-eqz v0, :cond_0

    .line 321
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 322
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020271

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 325
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    .line 394
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setTag(Ljava/lang/Object;)V

    .line 395
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setWillNotDraw(Z)V

    .line 396
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 397
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 398
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 399
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->adapter:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 400
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 401
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setEnabled(Z)V

    .line 402
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const v1, -0xa0909

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setGlowColor(I)V

    .line 403
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$2;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$2;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V

    .line 413
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$3;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 429
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    sget v1, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    sget v2, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 431
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$4;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$4;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    .line 456
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    new-instance v1, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-direct {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    aput-object v1, v0, v12

    .line 457
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v6}, Lorg/telegram/ui/Components/RecyclerListView;->setVerticalScrollBarEnabled(Z)V

    .line 458
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-direct {v1, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 459
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setClipToPadding(Z)V

    .line 460
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setPadding(IIII)V

    .line 461
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V

    .line 462
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 463
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOverScrollMode(I)V

    .line 464
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v10, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$5;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$5;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    .line 471
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v5}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->setOrientation(I)V

    .line 472
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 473
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$6;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$6;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 537
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    const/16 v1, 0x9

    new-instance v2, Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-direct {v2, p1}, Lorg/telegram/ui/Components/EmptyTextProgressView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    aput-object v2, v0, v1

    .line 538
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v1, "PermissionStorage"

    const v2, 0x7f0703d4

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    .line 545
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/high16 v2, 0x42a00000    # 80.0f

    invoke-static {v10, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 546
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setEmptyView(Landroid/view/View;)V

    .line 548
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    const/16 v1, 0xa

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$7;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lorg/telegram/ui/Components/ChatAttachAlert$7;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    iput-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;

    aput-object v2, v0, v1

    .line 554
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;

    const v1, -0x2d2d2e

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 555
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x33

    invoke-direct {v2, v10, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    new-array v9, v12, [Ljava/lang/CharSequence;

    const-string/jumbo v0, "ChatCamera"

    const v1, 0x7f07015c

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v5

    const-string/jumbo v0, "ChatGallery"

    const v1, 0x7f07015e

    invoke-static {v0, v1}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v6

    const/4 v0, 0x2

    const-string/jumbo v1, "ChatVideo"

    const v2, 0x7f070163

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "AttachMusic"

    const v2, 0x7f0700be

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "ChatDocument"

    const v2, 0x7f07015d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "AttachContact"

    const v2, 0x7f0700ba

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x6

    const-string/jumbo v1, "ChatLocation"

    const v2, 0x7f070161

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v0

    const/4 v0, 0x7

    const-string/jumbo v1, ""

    aput-object v1, v9, v0

    .line 566
    .local v9, "items":[Ljava/lang/CharSequence;
    const/4 v7, 0x0

    .local v7, "a":I
    :goto_1
    if-ge v7, v12, :cond_3

    .line 567
    new-instance v8, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    invoke-direct {v8, p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    .line 568
    .local v8, "attachButton":Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;
    aget-object v0, v9, v7

    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->attachButtonDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v7

    invoke-virtual {v8, v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTextAndIcon(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 569
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    const/16 v1, 0x55

    const/16 v2, 0x5a

    const/16 v4, 0x33

    invoke-static {v1, v2, v4}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 570
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setTag(Ljava/lang/Object;)V

    .line 571
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    aput-object v8, v0, v7

    .line 572
    const/4 v0, 0x7

    if-ne v7, v0, :cond_1

    .line 573
    iput-object v8, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    .line 574
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$3900(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 576
    :cond_1
    new-instance v0, Lorg/telegram/ui/Components/ChatAttachAlert$8;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$8;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v8, v0}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 566
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 542
    .end local v7    # "a":I
    .end local v8    # "attachButton":Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;
    .end local v9    # "items":[Ljava/lang/CharSequence;
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v1, "NoPhotos"

    const v2, 0x7f07033e

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    goto/16 :goto_0

    .line 584
    .restart local v7    # "a":I
    .restart local v9    # "items":[Ljava/lang/CharSequence;
    :cond_3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    .line 586
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 587
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const v1, 0x7f0202b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 588
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 589
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 590
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 591
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "AttachBotsHelp"

    const v2, 0x7f0700b9

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 593
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 594
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const v1, 0x7f020260

    invoke-virtual {v0, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 595
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 596
    iget-object v10, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    iget-object v11, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v0, -0x2

    const/high16 v1, 0x42000000    # 32.0f

    const/16 v2, 0x55

    const/4 v4, 0x0

    move v5, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(IFIFFFF)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v10, v11, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 598
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v12, :cond_4

    .line 599
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewsCache:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->createHolder()Lorg/telegram/ui/Components/ChatAttachAlert$Holder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 598
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 602
    :cond_4
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->loading:Z

    if-eqz v0, :cond_5

    .line 603
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showProgress()V

    .line 607
    :goto_3
    return-void

    .line 605
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    goto :goto_3
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$1500(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updateLayout()V

    return-void
.end method

.method static synthetic access$1600(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z

    return v0
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$1900(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealAnimationInProgress:Z

    return v0
.end method

.method static synthetic access$2000(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    return v0
.end method

.method static synthetic access$2100(Lorg/telegram/ui/Components/ChatAttachAlert;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    return v0
.end method

.method static synthetic access$2200(Lorg/telegram/ui/Components/ChatAttachAlert;)F
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealRadius:F

    return v0
.end method

.method static synthetic access$2300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ciclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    return v0
.end method

.method static synthetic access$2600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ciclePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$2700()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I

    return v0
.end method

.method static synthetic access$2800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->shadowDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$2900(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$3000(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintShowed:Z

    return v0
.end method

.method static synthetic access$3002(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintShowed:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHint()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/RecyclerListView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    return-object v0
.end method

.method static synthetic access$3400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/EmptyTextProgressView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    return-object v0
.end method

.method static synthetic access$3500(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->lineView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/ui/Components/ChatAttachAlert;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3800(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->deviceHasGoodCamera:Z

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/ChatActivity;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    return-object v0
.end method

.method static synthetic access$4000(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$4002(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4102(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$4300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4500(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->viewsCache:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$4800(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$4900(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$5002(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$5100(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->onRevealAnimationEnd(Z)V

    return-void
.end method

.method static synthetic access$5200(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$5300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/ui/Components/ChatAttachAlert;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->dismissInternal()V

    return-void
.end method

.method static synthetic access$5600(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/animation/AnimatorSet;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$5702(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 69
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/ChatAttachAlert;)Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/ChatAttachAlert;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->setUseRevealAnimation(Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/ChatAttachAlert;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;

    .prologue
    .line 69
    iget-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ignoreLayout:Z

    return v0
.end method

.method static synthetic access$902(Lorg/telegram/ui/Components/ChatAttachAlert;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/ChatAttachAlert;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->ignoreLayout:Z

    return p1
.end method

.method private getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    .line 797
    sget-object v5, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v5, :cond_0

    move-object v1, v6

    .line 814
    :goto_0
    return-object v1

    .line 800
    :cond_0
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 801
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 802
    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 803
    .local v4, "view":Landroid/view/View;
    instance-of v5, v4, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v5, :cond_1

    move-object v1, v4

    .line 804
    check-cast v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 805
    .local v1, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/BackupImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 806
    .local v3, "num":I
    if-ltz v3, :cond_1

    sget-object v5, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v5, v5, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_2

    .line 801
    .end local v1    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .end local v3    # "num":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 809
    .restart local v1    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .restart local v3    # "num":I
    :cond_2
    if-ne v3, p1, :cond_1

    goto :goto_0

    .end local v1    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    .end local v3    # "num":I
    .end local v4    # "view":Landroid/view/View;
    :cond_3
    move-object v1, v6

    .line 814
    goto :goto_0
.end method

.method private hideHint()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 610
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 611
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 612
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;

    .line 614
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 643
    :goto_0
    return-void

    .line 617
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    .line 618
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    new-array v1, v4, [Landroid/animation/Animator;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v3, "alpha"

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v5, v4, v6

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 621
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 622
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$9;

    invoke-direct {v1, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$9;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 641
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 642
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private onRevealAnimationEnd(Z)V
    .locals 3
    .param p1, "open"    # Z

    .prologue
    const/4 v2, 0x0

    .line 938
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 939
    iput-boolean v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealAnimationInProgress:Z

    .line 940
    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v0, :cond_0

    .line 941
    invoke-static {v2}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 943
    :cond_0
    if-eqz p1, :cond_1

    .line 944
    invoke-direct {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->showHint()V

    .line 946
    :cond_1
    return-void
.end method

.method private setUseRevealAnimation(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 1148
    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1149
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z

    .line 1151
    :cond_1
    return-void
.end method

.method private showHint()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 646
    sget-object v1, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    sget-object v1, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v2, "mainconfig"

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 650
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "bothint"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    iput-boolean v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintShowed:Z

    .line 655
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 656
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    .line 657
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    new-array v2, v3, [Landroid/animation/Animator;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const-string/jumbo v4, "alpha"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 660
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 661
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    new-instance v2, Lorg/telegram/ui/Components/ChatAttachAlert$10;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatAttachAlert$10;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 687
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 688
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 657
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startRevealAnimation(Z)V
    .locals 32
    .param p1, "open"    # Z
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1178
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 1180
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1182
    .local v7, "animatorSet":Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->getRevealView()Landroid/view/View;

    move-result-object v23

    .line 1183
    .local v23, "view":Landroid/view/View;
    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-nez v25, :cond_2

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    check-cast v25, Landroid/view/ViewGroup;

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v25

    if-nez v25, :cond_2

    .line 1184
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v12, v0, [I

    .line 1185
    .local v12, "coords":[I
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1187
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_1

    .line 1188
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v26

    sub-int v25, v25, v26

    sget v26, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v20, v0

    .line 1192
    .local v20, "top":F
    :goto_0
    const/16 v25, 0x0

    aget v25, v12, v25

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    .line 1193
    const/16 v25, 0x1

    aget v25, v12, v25

    invoke-virtual/range {v23 .. v23}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v25, v20

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    .line 1194
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_0

    .line 1195
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v25, v0

    sget v26, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    sub-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    .line 1202
    .end local v12    # "coords":[I
    .end local v20    # "top":F
    :cond_0
    :goto_1
    const/16 v25, 0x4

    move/from16 v0, v25

    new-array v13, v0, [[I

    const/16 v25, 0x0

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    aput-object v26, v13, v25

    const/16 v25, 0x1

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    aput v28, v26, v27

    const/16 v27, 0x1

    const/high16 v28, 0x43980000    # 304.0f

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v28

    aput v28, v26, v27

    aput-object v26, v13, v25

    const/16 v25, 0x2

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v28

    aput v28, v26, v27

    const/16 v27, 0x1

    const/16 v28, 0x0

    aput v28, v26, v27

    aput-object v26, v13, v25

    const/16 v25, 0x3

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v28

    aput v28, v26, v27

    const/16 v27, 0x1

    const/high16 v28, 0x43980000    # 304.0f

    invoke-static/range {v28 .. v28}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v28

    aput v28, v26, v27

    aput-object v26, v13, v25

    .line 1208
    .local v13, "corners":[[I
    const/16 v17, 0x0

    .line 1209
    .local v17, "finalRevealRadius":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sget v26, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingTop:I

    add-int v24, v25, v26

    .line 1210
    .local v24, "y":I
    const/4 v6, 0x0

    .local v6, "a":I
    :goto_2
    const/16 v25, 0x4

    move/from16 v0, v25

    if-ge v6, v0, :cond_3

    .line 1211
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    aget-object v26, v13, v6

    const/16 v27, 0x0

    aget v26, v26, v27

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v26, v0

    aget-object v27, v13, v6

    const/16 v28, 0x0

    aget v27, v27, v28

    sub-int v26, v26, v27

    mul-int v25, v25, v26

    aget-object v26, v13, v6

    const/16 v27, 0x1

    aget v26, v26, v27

    sub-int v26, v24, v26

    aget-object v27, v13, v6

    const/16 v28, 0x1

    aget v27, v27, v28

    sub-int v27, v24, v27

    mul-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v17

    move/from16 v1, v25

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1210
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1190
    .end local v6    # "a":I
    .end local v13    # "corners":[[I
    .end local v17    # "finalRevealRadius":I
    .end local v24    # "y":I
    .restart local v12    # "coords":[I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getY()F

    move-result v20

    .restart local v20    # "top":F
    goto/16 :goto_0

    .line 1198
    .end local v12    # "coords":[I
    .end local v20    # "top":F
    :cond_2
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v25, v0

    div-int/lit8 v25, v25, 0x2

    sget v26, Lorg/telegram/ui/Components/ChatAttachAlert;->backgroundPaddingLeft:I

    add-int v25, v25, v26

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    .line 1199
    sget-object v25, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getY()F

    move-result v26

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    goto/16 :goto_1

    .line 1213
    .restart local v6    # "a":I
    .restart local v13    # "corners":[[I
    .restart local v17    # "finalRevealRadius":I
    .restart local v24    # "y":I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v26

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v18, v0

    .line 1215
    .local v18, "finalRevealX":I
    :goto_3
    new-instance v9, Ljava/util/ArrayList;

    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1216
    .local v9, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const-string/jumbo v26, "revealRadius"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    if-eqz p1, :cond_8

    const/16 v25, 0x0

    :goto_4
    aput v25, v27, v28

    const/16 v28, 0x1

    if-eqz p1, :cond_9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    :goto_5
    aput v25, v27, v28

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    move-object/from16 v26, v0

    const-string/jumbo v27, "alpha"

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    if-eqz p1, :cond_a

    const/16 v25, 0x33

    :goto_6
    aput v25, v28, v29

    invoke-static/range {v26 .. v28}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1218
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x15

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_d

    .line 1219
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/high16 v26, 0x41200000    # 10.0f

    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setElevation(F)V

    .line 1221
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v28, v0

    if-eqz p1, :cond_b

    const/16 v25, 0x0

    move/from16 v26, v25

    :goto_7
    if-eqz p1, :cond_c

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    :goto_8
    move-object/from16 v0, v27

    move/from16 v1, v18

    move/from16 v2, v28

    move/from16 v3, v26

    move/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1225
    :goto_9
    const-wide/16 v26, 0x140

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1244
    :cond_4
    :goto_a
    invoke-virtual {v7, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1245
    new-instance v25, Lorg/telegram/ui/Components/ChatAttachAlert$11;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v7}, Lorg/telegram/ui/Components/ChatAttachAlert$11;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;ZLandroid/animation/AnimatorSet;)V

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1271
    if-eqz p1, :cond_13

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->clear()V

    .line 1273
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v25

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    sget v28, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    aput v28, v26, v27

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/NotificationCenter;->setAllowedNotificationsDutingAnimation([I)V

    .line 1274
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v25

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lorg/telegram/messenger/NotificationCenter;->setAnimationInProgress(Z)V

    .line 1275
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/telegram/ui/Components/ChatAttachAlert;->revealAnimationInProgress:Z

    .line 1277
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_10

    const/16 v14, 0xb

    .line 1278
    .local v14, "count":I
    :goto_b
    const/4 v6, 0x0

    :goto_c
    if-ge v6, v14, :cond_13

    .line 1279
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_11

    .line 1280
    const/16 v25, 0x8

    move/from16 v0, v25

    if-ge v6, v0, :cond_5

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const v26, 0x3dcccccd    # 0.1f

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setScaleX(F)V

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const v26, 0x3dcccccd    # 0.1f

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setScaleY(F)V

    .line 1284
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setAlpha(F)V

    .line 1290
    :goto_d
    new-instance v19, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Lorg/telegram/ui/Components/ChatAttachAlert$1;)V

    .line 1292
    .local v19, "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLeft()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v26, v0

    aget-object v26, v26, v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v10, v25, v26

    .line 1293
    .local v10, "buttonX":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTop()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewGroup;->getTop()I

    move-result v26

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v26, v0

    aget-object v26, v26, v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    add-int v11, v25, v26

    .line 1294
    .local v11, "buttonY":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    sub-int v25, v25, v10

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v26, v0

    sub-int v26, v26, v10

    mul-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v26, v0

    sub-int v26, v26, v11

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v27, v0

    sub-int v27, v27, v11

    mul-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v15, v0

    .line 1295
    .local v15, "dist":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    sub-int v25, v25, v10

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v21, v25, v15

    .line 1296
    .local v21, "vecX":F
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v25, v0

    sub-int v25, v25, v11

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v22, v25, v15

    .line 1297
    .local v22, "vecY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v26, v0

    aget-object v26, v26, v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x41a00000    # 20.0f

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v21

    add-float v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setPivotX(F)V

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v26, v0

    aget-object v26, v26, v6

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x41a00000    # 20.0f

    invoke-static/range {v27 .. v27}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v22

    add-float v26, v26, v27

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setPivotY(F)V

    .line 1299
    const/high16 v25, 0x42a20000    # 81.0f

    invoke-static/range {v25 .. v25}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v15, v25

    move-object/from16 v0, v19

    move/from16 v1, v25

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->startRadius:F
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$4602(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;F)F

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const v26, 0x7f07009a

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1302
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1304
    .restart local v9    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/16 v25, 0x8

    move/from16 v0, v25

    if-ge v6, v0, :cond_12

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const-string/jumbo v26, "scaleX"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_1

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const-string/jumbo v26, "scaleY"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    fill-array-data v27, :array_2

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1308
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1309
    .local v8, "animatorSetInner":Landroid/animation/AnimatorSet;
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v27, v0

    aget-object v27, v27, v6

    const-string/jumbo v28, "scaleX"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    aput v31, v29, v30

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v27

    aput-object v27, v25, v26

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v27, v0

    aget-object v27, v27, v6

    const-string/jumbo v28, "scaleY"

    const/16 v29, 0x1

    move/from16 v0, v29

    new-array v0, v0, [F

    move-object/from16 v29, v0

    const/16 v30, 0x0

    const/high16 v31, 0x3f800000    # 1.0f

    aput v31, v29, v30

    invoke-static/range {v27 .. v29}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1312
    const-wide/16 v26, 0x64

    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1317
    :goto_e
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_6

    .line 1318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/high16 v29, 0x3f800000    # 1.0f

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    :cond_6
    new-instance v25, Landroid/animation/AnimatorSet;

    invoke-direct/range {v25 .. v25}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$4702(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1321
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$4700(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1322
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$4700(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v25

    const-wide/16 v26, 0x96

    invoke-virtual/range {v25 .. v27}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1323
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$4700(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1324
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static/range {v19 .. v19}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$4700(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v25

    new-instance v26, Lorg/telegram/ui/Components/ChatAttachAlert$12;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8}, Lorg/telegram/ui/Components/ChatAttachAlert$12;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/animation/AnimatorSet;)V

    invoke-virtual/range {v25 .. v26}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1278
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_c

    .line 1213
    .end local v8    # "animatorSetInner":Landroid/animation/AnimatorSet;
    .end local v9    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .end local v10    # "buttonX":I
    .end local v11    # "buttonY":I
    .end local v14    # "count":I
    .end local v15    # "dist":F
    .end local v18    # "finalRevealX":I
    .end local v19    # "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    .end local v21    # "vecX":F
    .end local v22    # "vecY":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v18

    goto/16 :goto_3

    .line 1216
    .restart local v9    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .restart local v18    # "finalRevealX":I
    :cond_8
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    goto/16 :goto_4

    :cond_9
    const/16 v25, 0x0

    goto/16 :goto_5

    .line 1217
    :cond_a
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 1221
    :cond_b
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v26, v25

    goto/16 :goto_7

    :cond_c
    const/16 v25, 0x0

    goto/16 :goto_8

    .line 1222
    :catch_0
    move-exception v16

    .line 1223
    .local v16, "e":Ljava/lang/Exception;
    const-string/jumbo v25, "tmessages"

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 1227
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_d
    if-nez p1, :cond_f

    .line 1228
    const-wide/16 v26, 0xc8

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v27

    move/from16 v0, v25

    move/from16 v1, v27

    if-gt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealX:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    :goto_f
    move-object/from16 v0, v26

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealY:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setPivotY(F)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const-string/jumbo v26, "scaleX"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const-string/jumbo v26, "scaleY"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const-string/jumbo v26, "alpha"

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [F

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    aput v29, v27, v28

    invoke-static/range {v25 .. v27}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_a

    .line 1229
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    goto/16 :goto_f

    .line 1235
    :cond_f
    const-wide/16 v26, 0xfa

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    invoke-virtual/range {v25 .. v26}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1239
    sget v25, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v26, 0x13

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_4

    .line 1240
    const-wide/16 v26, 0x14

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    goto/16 :goto_a

    .line 1277
    :cond_10
    const/16 v14, 0x8

    goto/16 :goto_b

    .line 1286
    .restart local v14    # "count":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const v26, 0x3f333333    # 0.7f

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setScaleX(F)V

    .line 1287
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->views:[Landroid/view/View;

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    const v26, 0x3f333333    # 0.7f

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setScaleY(F)V

    goto/16 :goto_d

    .line 1315
    .restart local v10    # "buttonX":I
    .restart local v11    # "buttonY":I
    .restart local v15    # "dist":F
    .restart local v19    # "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    .restart local v21    # "vecX":F
    .restart local v22    # "vecY":F
    :cond_12
    const/4 v8, 0x0

    .restart local v8    # "animatorSetInner":Landroid/animation/AnimatorSet;
    goto/16 :goto_e

    .line 1335
    .end local v8    # "animatorSetInner":Landroid/animation/AnimatorSet;
    .end local v10    # "buttonX":I
    .end local v11    # "buttonY":I
    .end local v14    # "count":I
    .end local v15    # "dist":F
    .end local v19    # "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    .end local v21    # "vecX":F
    .end local v22    # "vecY":F
    :cond_13
    move-object/from16 v0, p0

    iput-object v7, v0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentSheetAnimation:Landroid/animation/AnimatorSet;

    .line 1336
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 1337
    return-void

    .line 1202
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 1305
    :array_1
    .array-data 4
        0x3f333333    # 0.7f
        0x3f866666    # 1.05f
    .end array-data

    .line 1306
    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x3f866666    # 1.05f
    .end array-data
.end method

.method private updateLayout()V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 708
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_1

    .line 709
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v5}, Lorg/telegram/ui/Components/RecyclerListView;->getPaddingTop()I

    move-result v5

    iput v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 710
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    .line 724
    :cond_0
    :goto_0
    return-void

    .line 713
    :cond_1
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 714
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlert$Holder;

    .line 715
    .local v1, "holder":Lorg/telegram/ui/Components/ChatAttachAlert$Holder;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    .line 716
    .local v3, "top":I
    const/4 v2, 0x0

    .line 717
    .local v2, "newOffset":I
    if-ltz v3, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$Holder;->getAdapterPosition()I

    move-result v4

    if-nez v4, :cond_2

    .line 718
    move v2, v3

    .line 720
    :cond_2
    iget v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    if-eq v4, v2, :cond_0

    .line 721
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->listView:Lorg/telegram/ui/Components/RecyclerListView;

    iput v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->scrollOffsetY:I

    invoke-virtual {v4, v2}, Lorg/telegram/ui/Components/RecyclerListView;->setTopGlowOffset(I)V

    .line 722
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method protected canDismissWithSwipe()Z
    .locals 1

    .prologue
    .line 728
    const/4 v0, 0x0

    return v0
.end method

.method public cancelButtonPressed()Z
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x0

    return v0
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 693
    sget v0, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    if-ne p1, v0, :cond_1

    .line 694
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    if-eqz v0, :cond_0

    .line 695
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->loading:Z

    .line 696
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EmptyTextProgressView;->showTextView()V

    .line 697
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->notifyDataSetChanged()V

    .line 704
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    sget v0, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    if-ne p1, v0, :cond_0

    .line 700
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->adapter:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    if-eqz v0, :cond_0

    .line 701
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->adapter:Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getPlaceForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    .locals 7
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    const/16 v6, 0x15

    const/4 v4, 0x0

    .line 819
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v0

    .line 820
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    if-eqz v0, :cond_2

    .line 821
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 822
    .local v1, "coords":[I
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/telegram/ui/Components/BackupImageView;->getLocationInWindow([I)V

    .line 823
    new-instance v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;

    invoke-direct {v2}, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;-><init>()V

    .line 824
    .local v2, "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    aget v3, v1, v4

    iput v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewX:I

    .line 825
    const/4 v3, 0x1

    aget v5, v1, v3

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_0

    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    :goto_0
    sub-int v3, v5, v3

    iput v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->viewY:I

    .line 826
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    iput-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->parentView:Landroid/view/View;

    .line 827
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    .line 828
    iget-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->imageReceiver:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v3}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->thumb:Landroid/graphics/Bitmap;

    .line 829
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/Components/BackupImageView;->getScaleX()F

    move-result v3

    iput v3, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->scale:F

    .line 830
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_1

    :goto_1
    iput v4, v2, Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;->clipBottomAddition:I

    .line 831
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 834
    .end local v1    # "coords":[I
    .end local v2    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :goto_2
    return-object v2

    .restart local v1    # "coords":[I
    .restart local v2    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_0
    move v3, v4

    .line 825
    goto :goto_0

    .line 830
    :cond_1
    sget v3, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    neg-int v4, v3

    goto :goto_1

    .line 834
    .end local v1    # "coords":[I
    .end local v2    # "object":Lorg/telegram/ui/PhotoViewer$PlaceProviderObject;
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method protected getRevealRadius()F
    .locals 1

    .prologue
    .line 1173
    iget v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealRadius:F

    return v0
.end method

.method public getSelectedCount()I
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedPhotos()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MediaController$PhotoEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 787
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbForPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 856
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v0

    .line 857
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/BackupImageView;->getImageReceiver()Lorg/telegram/messenger/ImageReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 860
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public init(Lorg/telegram/ui/ChatActivity;)V
    .locals 7
    .param p1, "parentFragment"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    const v6, 0xf4240

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 765
    sget-object v2, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-eqz v2, :cond_0

    .line 766
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/16 v2, 0x64

    sget-object v3, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v3, v3, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 767
    sget-object v2, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 768
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->caption:Ljava/lang/CharSequence;

    .line 769
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imagePath:Ljava/lang/String;

    .line 770
    iput-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    .line 766
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    .end local v0    # "a":I
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 774
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 775
    iput-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->currentHintAnimation:Landroid/animation/AnimatorSet;

    .line 777
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 778
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->hintTextView:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 779
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoLayoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 780
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v2}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->clearSelectedPhotos()V

    .line 781
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    .line 782
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    invoke-virtual {v2, v5, v6}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 783
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotosButton()V

    .line 784
    return-void
.end method

.method public isPhotoChecked(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 887
    if-ltz p1, :cond_0

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v1

    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v0, v0, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    iget v0, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadGalleryPhotos()V
    .locals 2

    .prologue
    .line 759
    sget-object v0, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 760
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/telegram/messenger/MediaController;->loadGalleryPhotosAlbums(I)V

    .line 762
    :cond_0
    return-void
.end method

.method protected onCustomCloseAnimation()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1350
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z

    if-eqz v1, :cond_0

    .line 1351
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->backDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/16 v2, 0x33

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 1352
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->startRevealAnimation(Z)V

    .line 1353
    const/4 v0, 0x1

    .line 1355
    :cond_0
    return v0
.end method

.method protected onCustomOpenAnimation()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1341
    iget-boolean v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->useRevealAnimation:Z

    if-eqz v1, :cond_0

    .line 1342
    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->startRevealAnimation(Z)V

    .line 1345
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 791
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->albumsDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 792
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->reloadInlineHints:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->removeObserver(Ljava/lang/Object;I)V

    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->baseFragment:Lorg/telegram/ui/ChatActivity;

    .line 794
    return-void
.end method

.method public onOpenAnimationEnd()V
    .locals 1

    .prologue
    .line 950
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->onRevealAnimationEnd(Z)V

    .line 951
    return-void
.end method

.method public onOpenAnimationStart()V
    .locals 0

    .prologue
    .line 956
    return-void
.end method

.method public sendButtonPressed(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 922
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 923
    if-ltz p1, :cond_0

    sget-object v1, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    sget-object v1, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v1, v1, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 927
    .local v0, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v1

    iget v2, v0, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    .end local v0    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    const/4 v2, 0x7

    invoke-interface {v1, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;->didPressedButton(I)V

    goto :goto_0
.end method

.method public setDelegate(Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;)V
    .locals 0
    .param p1, "chatAttachViewDelegate"    # Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    .prologue
    .line 755
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->delegate:Lorg/telegram/ui/Components/ChatAttachAlert$ChatAttachViewDelegate;

    .line 756
    return-void
.end method

.method public setPhotoChecked(I)V
    .locals 8
    .param p1, "index"    # I

    .prologue
    .line 892
    const/4 v1, 0x1

    .line 893
    .local v1, "add":Z
    if-ltz p1, :cond_0

    sget-object v6, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v6, v6, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_1

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 896
    :cond_1
    sget-object v6, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v6, v6, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 897
    .local v4, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v6

    iget v7, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 898
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v6

    iget v7, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 899
    const/4 v1, 0x0

    .line 903
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 904
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v2, :cond_2

    .line 905
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v6, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 906
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 907
    .local v3, "num":I
    if-ne v3, p1, :cond_4

    .line 908
    check-cast v5, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .end local v5    # "view":Landroid/view/View;
    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->setChecked(ZZ)V

    .line 912
    .end local v3    # "num":I
    :cond_2
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->updatePhotosButton()V

    goto :goto_0

    .line 901
    .end local v0    # "a":I
    .end local v2    # "count":I
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v6}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v6

    iget v7, v4, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 904
    .restart local v0    # "a":I
    .restart local v2    # "count":I
    .restart local v3    # "num":I
    .restart local v5    # "view":Landroid/view/View;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected setRevealRadius(F)V
    .locals 4
    .param p1, "radius"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1155
    iput p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->revealRadius:F

    .line 1156
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-gt v2, v3, :cond_0

    .line 1157
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->containerView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->invalidate()V

    .line 1159
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->isDismissed()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1160
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1161
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;

    .line 1162
    .local v1, "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->startRadius:F
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$4600(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)F

    move-result v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_1

    .line 1160
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1165
    :cond_1
    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;->access$4700(Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1166
    iget-object v2, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->innerAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1167
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1170
    .end local v0    # "a":I
    .end local v1    # "innerAnimator":Lorg/telegram/ui/Components/ChatAttachAlert$InnerAnimator;
    :cond_2
    return-void
.end method

.method public updatePhotoAtIndex(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const v5, 0x7f0201fc

    .line 839
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v0

    .line 840
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    if-eqz v0, :cond_0

    .line 841
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 842
    sget-object v2, Lorg/telegram/messenger/MediaController;->allPhotosAlbumEntry:Lorg/telegram/messenger/MediaController$AlbumEntry;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$AlbumEntry;->photos:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/MediaController$PhotoEntry;

    .line 843
    .local v1, "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 844
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    iget-object v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->thumbPath:Ljava/lang/String;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v6, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 852
    .end local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_0
    :goto_0
    return-void

    .line 845
    .restart local v1    # "photoEntry":Lorg/telegram/messenger/MediaController$PhotoEntry;
    :cond_1
    iget-object v2, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 846
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    iget v3, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->orientation:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Components/BackupImageView;->setOrientation(IZ)V

    .line 847
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "thumb://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->imageId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lorg/telegram/messenger/MediaController$PhotoEntry;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v6, v4}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 849
    :cond_2
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getImageView()Lorg/telegram/ui/Components/BackupImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lorg/telegram/ui/Components/BackupImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public updatePhotosButton()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 732
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->photoAttachAdapter:Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;

    invoke-virtual {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$PhotoAttachAdapter;->getSelectedPhotos()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 733
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 734
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$3900(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v8, v2, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 735
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$3900(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020062

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 736
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$3900(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020061

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 737
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4200(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/ui/Components/ChatAttachAlert;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 746
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v2, "PermissionStorage"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 747
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    .line 752
    :goto_1
    return-void

    .line 739
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$3900(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2, v8, v8, v8}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 740
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$3900(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020069

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 741
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->imageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$3900(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 742
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->sendPhotosButton:Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->textView:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;->access$4200(Lorg/telegram/ui/Components/ChatAttachAlert$AttachButton;)Landroid/widget/TextView;

    move-result-object v1

    const-string/jumbo v2, "SendItems"

    const v3, 0x7f07044e

    new-array v4, v6, [Ljava/lang/Object;

    const-string/jumbo v5, "(%d)"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 749
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const-string/jumbo v2, "NoPhotos"

    const v3, 0x7f07033e

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setText(Ljava/lang/String;)V

    .line 750
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->progressView:Lorg/telegram/ui/Components/EmptyTextProgressView;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EmptyTextProgressView;->setTextSize(I)V

    goto :goto_1
.end method

.method public willHidePhotoViewer()V
    .locals 6

    .prologue
    .line 873
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v2

    .line 874
    .local v2, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 875
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert;->attachPhotoRecyclerView:Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v4, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 876
    .local v3, "view":Landroid/view/View;
    instance-of v4, v3, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 877
    check-cast v1, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    .line 878
    .local v1, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/CheckBox;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_0

    .line 879
    invoke-virtual {v1}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 874
    .end local v1    # "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 883
    .end local v3    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public willSwitchFromPhoto(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$FileLocation;I)V
    .locals 3
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "fileLocation"    # Lorg/telegram/tgnet/TLRPC$FileLocation;
    .param p3, "index"    # I

    .prologue
    .line 865
    invoke-direct {p0, p3}, Lorg/telegram/ui/Components/ChatAttachAlert;->getCellForIndex(I)Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;

    move-result-object v0

    .line 866
    .local v0, "cell":Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;
    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/PhotoAttachPhotoCell;->getCheckBox()Lorg/telegram/ui/Components/CheckBox;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/CheckBox;->setVisibility(I)V

    .line 869
    :cond_0
    return-void
.end method
