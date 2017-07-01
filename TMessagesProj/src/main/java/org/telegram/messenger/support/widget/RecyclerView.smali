.class public Lorg/telegram/messenger/support/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v4/view/ScrollingView;
.implements Landroid/support/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$State;,
        Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;,
        Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObservable;,
        Lorg/telegram/messenger/support/widget/RecyclerView$SmoothScroller;,
        Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;,
        Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;,
        Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$SimpleOnItemTouchListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;,
        Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;,
        Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;,
        Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;,
        Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;,
        Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;,
        Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field private static final DEBUG:Z = false

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final MAX_SCROLL_DURATION:I = 0x7d0

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field private static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field private static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field private static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final VERTICAL:I = 0x1

.field private static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private glowColor:I

.field private mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

.field private mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

.field mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

.field private mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

.field private mClipToPadding:Z

.field private mDataSetHasChangedAfterLayout:Z

.field private mEatRequestLayout:I

.field private mEatenAccessibilityChangeFlags:I

.field private mFirstLayoutComplete:Z

.field private mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mIsAttached:Z

.field mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field private final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field private mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

.field private final mPostUpdatesOnAnimation:Z

.field private mPostedAnimatorRunner:Z

.field final mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

.field private mRecyclerListener:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field final mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mTouchSlop:I

.field private final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

.field private topGlowOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 168
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_2

    move v0, v2

    :goto_1
    sput-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 246
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, Lorg/telegram/messenger/support/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 415
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$3;

    invoke-direct {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$3;-><init>()V

    sput-object v0, Lorg/telegram/messenger/support/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void

    :cond_1
    move v0, v1

    .line 161
    goto :goto_0

    :cond_2
    move v0, v1

    .line 168
    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 461
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 462
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 465
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 466
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 469
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 249
    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v2, p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$1;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mObserver:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;

    .line 251
    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    .line 268
    new-instance v2, Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-direct {v2}, Lorg/telegram/messenger/support/widget/ViewInfoStore;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    .line 282
    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$1;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$1;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 296
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 300
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 309
    iput v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    .line 326
    iput-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 336
    iput v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 338
    iput v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->topGlowOffset:I

    .line 339
    iput v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->glowColor:I

    .line 342
    new-instance v2, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    invoke-direct {v2}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    .line 367
    iput v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    .line 368
    const/4 v2, -0x1

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    .line 378
    const/4 v2, 0x1

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollFactor:F

    .line 380
    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    .line 382
    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-direct {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;-><init>()V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    .line 388
    iput-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 389
    iput-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsChanged:Z

    .line 390
    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v2, p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$1;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 392
    iput-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 398
    new-array v2, v5, [I

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 401
    new-array v2, v5, [I

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    .line 402
    new-array v2, v5, [I

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollConsumed:[I

    .line 403
    new-array v2, v5, [I

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    .line 405
    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$2;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$2;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 425
    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerView$4;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$4;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoProcessCallback:Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;

    .line 470
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollContainer(Z)V

    .line 471
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 472
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 473
    .local v1, "version":I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostUpdatesOnAnimation:Z

    .line 475
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 476
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    .line 477
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinFlingVelocity:I

    .line 478
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 479
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v2

    if-ne v2, v5, :cond_0

    move v4, v3

    :cond_0
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 481
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->setListener(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 482
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->initAdapterManager()V

    .line 483
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->initChildrenHelper()V

    .line 485
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v2

    if-nez v2, :cond_1

    .line 487
    invoke-static {p0, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 490
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "accessibility"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 492
    new-instance v2, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->setAccessibilityDelegateCompat(Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;)V

    .line 496
    invoke-virtual {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 497
    return-void

    .end local v0    # "vc":Landroid/view/ViewConfiguration;
    :cond_2
    move v2, v4

    .line 473
    goto :goto_0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    return v0
.end method

.method static synthetic access$1000(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->postAnimationRunner()V

    return-void
.end method

.method static synthetic access$1100(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 148
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method static synthetic access$3000()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lorg/telegram/messenger/support/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/support/widget/RecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    return p1
.end method

.method static synthetic access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method static synthetic access$3200(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onEnterLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$3300(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->repositionShadowingViews()V

    return-void
.end method

.method static synthetic access$3400(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onExitLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$3600(Lorg/telegram/messenger/support/widget/RecyclerView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3700(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    return-void
.end method

.method static synthetic access$3800(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$400(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->consumePendingUpdateOperations()V

    return-void
.end method

.method static synthetic access$4000(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    return-void
.end method

.method static synthetic access$4100(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostUpdatesOnAnimation:Z

    return v0
.end method

.method static synthetic access$4200(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method static synthetic access$4300(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method static synthetic access$4400(Lorg/telegram/messenger/support/widget/RecyclerView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4502(Lorg/telegram/messenger/support/widget/RecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    return p1
.end method

.method static synthetic access$4600()Z
    .locals 1

    .prologue
    .line 148
    sget-boolean v0, Lorg/telegram/messenger/support/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    return v0
.end method

.method static synthetic access$4700(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "x2"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$4800(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method static synthetic access$5200(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->canReuseUpdatedViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecyclerListener:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$5400(Lorg/telegram/messenger/support/widget/RecyclerView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$5500(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method static synthetic access$5600(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 148
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$5700(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapterPositionFor(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/messenger/support/widget/RecyclerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # Z

    .prologue
    .line 148
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostedAnimatorRunner:Z

    return p1
.end method

.method static synthetic access$6200(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # I

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    return-void
.end method

.method static synthetic access$6400(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 148
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "x2"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "x3"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 148
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView;->animateDisappearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p1, "x1"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "x2"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "x3"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 148
    invoke-direct {p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView;->animateAppearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/support/widget/RecyclerView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    return v0
.end method

.method private addAnimatingView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 6
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    const/4 v2, 0x1

    .line 1084
    iget-object v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1085
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-ne v3, p0, :cond_0

    move v0, v2

    .line 1086
    .local v0, "alreadyParented":Z
    :goto_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->unscrapView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 1087
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1089
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    const/4 v4, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v1, v4, v5, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 1095
    :goto_1
    return-void

    .line 1085
    .end local v0    # "alreadyParented":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1090
    .restart local v0    # "alreadyParented":Z
    :cond_1
    if-nez v0, :cond_2

    .line 1091
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v1, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    .line 1093
    :cond_2
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;->hide(Landroid/view/View;)V

    goto :goto_1
.end method

.method private animateAppearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "itemHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preLayoutInfo"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "postLayoutInfo"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 3242
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3243
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->animateAppearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3244
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->postAnimationRunner()V

    .line 3246
    :cond_0
    return-void
.end method

.method private animateChange(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .locals 2
    .param p1, "oldHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "preInfo"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "postInfo"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "oldHolderDisappearing"    # Z
    .param p6, "newHolderDisappearing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 3260
    invoke-virtual {p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3261
    if-eqz p5, :cond_0

    .line 3262
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->addAnimatingView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 3264
    :cond_0
    if-eq p1, p2, :cond_2

    .line 3265
    if-eqz p6, :cond_1

    .line 3266
    invoke-direct {p0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->addAnimatingView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 3268
    :cond_1
    iput-object p2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowedHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 3270
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->addAnimatingView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 3271
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->unscrapView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 3272
    invoke-virtual {p2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3273
    iput-object p1, p2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .line 3275
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->animateChange(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3276
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->postAnimationRunner()V

    .line 3278
    :cond_3
    return-void
.end method

.method private animateDisappearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "preLayoutInfo"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "postLayoutInfo"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 3250
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->addAnimatingView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 3251
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 3252
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->animateDisappearance(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3253
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->postAnimationRunner()V

    .line 3255
    :cond_0
    return-void
.end method

.method private canReuseUpdatedViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z
    .locals 2
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 3562
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cancelTouch()V
    .locals 1

    .prologue
    .line 2535
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->resetTouch()V

    .line 2536
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    .line 2537
    return-void
.end method

.method private considerReleasingGlowsOnScroll(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1947
    const/4 v0, 0x0

    .line 1948
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    .line 1949
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 1951
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    .line 1952
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1954
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    .line 1955
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1957
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    .line 1958
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1960
    :cond_3
    if-eqz v0, :cond_4

    .line 1961
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1963
    :cond_4
    return-void
.end method

.method private consumePendingUpdateOperations()V
    .locals 2

    .prologue
    .line 1431
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v0, :cond_1

    .line 1467
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_2

    .line 1436
    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayout()V

    .line 1438
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    .line 1441
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1447
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1449
    const-string/jumbo v0, "RV PartialInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 1451
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->preProcess()V

    .line 1452
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-nez v0, :cond_3

    .line 1453
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1454
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayout()V

    .line 1460
    :cond_3
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1461
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0

    .line 1457
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->consumePostponedUpdates()V

    goto :goto_1

    .line 1462
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    const-string/jumbo v0, "RV FullInvalidate"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1464
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayout()V

    .line 1465
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    goto :goto_0
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 522
    if-eqz p2, :cond_0

    .line 523
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 524
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 525
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 528
    :try_start_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 530
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 534
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_6

    move-result-object v6

    .line 537
    .local v6, "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;>;"
    const/4 v2, 0x0

    .line 539
    .local v2, "constructorArgs":[Ljava/lang/Object;
    :try_start_1
    sget-object v7, Lorg/telegram/messenger/support/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 541
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;>;"
    const/4 v7, 0x4

    new-array v3, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v3, v7

    const/4 v7, 0x1

    aput-object p3, v3, v7

    const/4 v7, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    const/4 v7, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_6

    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .local v3, "constructorArgs":[Ljava/lang/Object;
    move-object v2, v3

    .line 551
    .end local v3    # "constructorArgs":[Ljava/lang/Object;
    .restart local v2    # "constructorArgs":[Ljava/lang/Object;
    :goto_1
    const/4 v7, 0x1

    :try_start_2
    invoke-virtual {v1, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 552
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v7}, Lorg/telegram/messenger/support/widget/RecyclerView;->setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V

    .line 571
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;>;"
    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .end local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;>;"
    :cond_0
    return-void

    .line 532
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v0

    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 542
    .restart local v2    # "constructorArgs":[Ljava/lang/Object;
    .restart local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;>;"
    :catch_0
    move-exception v4

    .line 544
    .local v4, "e":Ljava/lang/NoSuchMethodException;
    const/4 v7, 0x0

    :try_start_3
    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_6

    move-result-object v1

    .restart local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;>;"
    goto :goto_1

    .line 545
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;>;"
    :catch_1
    move-exception v5

    .line 546
    .local v5, "e1":Ljava/lang/NoSuchMethodException;
    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 547
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Error creating LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_6

    .line 553
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "constructorArgs":[Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v6    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;>;"
    :catch_2
    move-exception v4

    .line 554
    .local v4, "e":Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Unable to find LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 556
    .end local v4    # "e":Ljava/lang/ClassNotFoundException;
    :catch_3
    move-exception v4

    .line 557
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 559
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v4

    .line 560
    .local v4, "e":Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Could not instantiate the LayoutManager: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 562
    .end local v4    # "e":Ljava/lang/InstantiationException;
    :catch_5
    move-exception v4

    .line 563
    .local v4, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Cannot access non-public constructor "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 565
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    :catch_6
    move-exception v4

    .line 566
    .local v4, "e":Ljava/lang/ClassCastException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ": Class is not a LayoutManager "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private didChildRangeChange(II)Z
    .locals 4
    .param p1, "minPositionPreLayout"    # I
    .param p2, "maxPositionPreLayout"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3207
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3208
    .local v0, "count":I
    if-nez v0, :cond_2

    .line 3209
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v1, v2

    .line 3213
    :cond_1
    :goto_0
    return v1

    .line 3212
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 3213
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v3, v3, v1

    if-ne v3, p1, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v3, v3, v2

    if-eq v3, p2, :cond_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private dispatchChildAttached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5952
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 5953
    .local v2, "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 5954
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 5955
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 5957
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 5958
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 5959
    .local v0, "cnt":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 5960
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 5959
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5963
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private dispatchChildDetached(Landroid/view/View;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 5938
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 5939
    .local v2, "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 5940
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 5941
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 5943
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 5944
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 5945
    .local v0, "cnt":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 5946
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 5945
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5949
    .end local v0    # "cnt":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    .prologue
    .line 2742
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2743
    .local v1, "flags":I
    const/4 v2, 0x0

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2744
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2745
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2746
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x800

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 2747
    invoke-static {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 2748
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2750
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private dispatchLayoutStep1()V
    .locals 15

    .prologue
    .line 2928
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 2929
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v12, 0x0

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mIsMeasuring:Z
    invoke-static {v11, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2202(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 2930
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 2931
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->clear()V

    .line 2932
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 2934
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 2935
    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2500(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-boolean v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v11, :cond_1

    const/4 v11, 0x1

    :goto_0
    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTrackOldChangeHolders:Z
    invoke-static {v12, v11}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2702(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 2936
    const/4 v11, 0x0

    iput-boolean v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 2937
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2300(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v12

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v11, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2402(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 2938
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v12

    iput v12, v11, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    .line 2939
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v11}, Lorg/telegram/messenger/support/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 2941
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2500(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2943
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v2

    .line 2944
    .local v2, "count":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v2, :cond_3

    .line 2945
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v11, v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-static {v11}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 2946
    .local v5, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v11

    if-nez v11, :cond_2

    .line 2944
    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2935
    .end local v2    # "count":I
    .end local v5    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v6    # "i":I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 2949
    .restart local v2    # "count":I
    .restart local v5    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .restart local v6    # "i":I
    :cond_2
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-static {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v13

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v14

    invoke-virtual {v11, v12, v5, v13, v14}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    .line 2953
    .local v0, "animationInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v11, v5, v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToPreLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 2954
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTrackOldChangeHolders:Z
    invoke-static {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2700(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v11

    if-nez v11, :cond_0

    .line 2956
    invoke-virtual {p0, v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChangedHolderKey(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)J

    move-result-wide v8

    .line 2964
    .local v8, "key":J
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v11, v8, v9, v5}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToOldChangeHolders(JLorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_2

    .line 2968
    .end local v0    # "animationInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v2    # "count":I
    .end local v5    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v6    # "i":I
    .end local v8    # "key":J
    :cond_3
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2300(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 2975
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->saveOldPositions()V

    .line 2976
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v11}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1800(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v3

    .line 2977
    .local v3, "didStructureChange":Z
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v12, 0x0

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v11, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 2979
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v13, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v11, v12, v13}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 2980
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v11, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 2982
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v11}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_8

    .line 2983
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v11, v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2984
    .local v1, "child":Landroid/view/View;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 2985
    .local v7, "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2982
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2988
    :cond_5
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v11, v7}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->isInPreLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v11

    if-nez v11, :cond_4

    .line 2989
    invoke-static {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v4

    .line 2990
    .local v4, "flags":I
    const/16 v11, 0x2000

    invoke-virtual {v7, v11}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v10

    .line 2992
    .local v10, "wasHidden":Z
    if-nez v10, :cond_6

    .line 2993
    or-int/lit16 v4, v4, 0x1000

    .line 2995
    :cond_6
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v11, v12, v7, v4, v13}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;ILjava/util/List;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    .line 2997
    .restart local v0    # "animationInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    if-eqz v10, :cond_7

    .line 2998
    invoke-direct {p0, v7, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 3000
    :cond_7
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v11, v7, v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_4

    .line 3005
    .end local v0    # "animationInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "flags":I
    .end local v7    # "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v10    # "wasHidden":Z
    :cond_8
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->clearOldPositions()V

    .line 3009
    .end local v3    # "didStructureChange":Z
    .end local v6    # "i":I
    :goto_5
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3010
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3011
    iget-object v11, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v12, 0x2

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v11, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2102(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    .line 3012
    return-void

    .line 3007
    :cond_9
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->clearOldPositions()V

    goto :goto_5
.end method

.method private dispatchLayoutStep2()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3019
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 3020
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3021
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3022
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3023
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, v0, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    .line 3024
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1702(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    .line 3027
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2402(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 3028
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onLayoutChildren(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 3030
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 3031
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    .line 3034
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2500(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v2, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2502(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 3035
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v2, 0x4

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2102(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    .line 3036
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3037
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3038
    return-void

    :cond_0
    move v0, v1

    .line 3034
    goto :goto_0
.end method

.method private dispatchLayoutStep3()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3045
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 3046
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 3047
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3048
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v0, v13}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2102(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    .line 3049
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2500(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3053
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_4

    .line 3054
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3055
    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3053
    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 3058
    :cond_0
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChangedHolderKey(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)J

    move-result-wide v10

    .line 3059
    .local v10, "key":J
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v9, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Lorg/telegram/messenger/support/widget/RecyclerView$State;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    .line 3061
    .local v7, "animationInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v11}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->getFromOldChangeHolders(J)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3062
    .local v1, "oldChangeViewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3073
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->isDisappearing(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    .line 3075
    .local v5, "oldDisappearing":Z
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->isDisappearing(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    .line 3076
    .local v6, "newDisappearing":Z
    if-eqz v5, :cond_1

    if-ne v1, v2, :cond_1

    .line 3078
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToPostLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 3080
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->popFromPreLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v3

    .line 3083
    .local v3, "preInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToPostLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3084
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->popFromPostLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 3085
    .local v4, "postInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    if-nez v3, :cond_2

    .line 3086
    invoke-direct {p0, v10, v11, v2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_2
    move-object v0, p0

    .line 3088
    invoke-direct/range {v0 .. v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->animateChange(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    goto :goto_1

    .line 3093
    .end local v3    # "preInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v4    # "postInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v5    # "oldDisappearing":Z
    .end local v6    # "newDisappearing":Z
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0, v2, v7}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToPostLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    .line 3098
    .end local v1    # "oldChangeViewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v7    # "animationInfo":Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v10    # "key":J
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoProcessCallback:Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->process(Lorg/telegram/messenger/support/widget/ViewInfoStore$ProcessCallback;)V

    .line 3101
    .end local v8    # "i":I
    :cond_5
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 3102
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget v9, v9, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mPreviousLayoutItemCount:I
    invoke-static {v0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2802(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    .line 3103
    iput-boolean v12, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3104
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v0, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2502(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 3106
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v0, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2302(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 3107
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z
    invoke-static {v0, v12}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->access$2602(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;Z)Z

    .line 3108
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->access$2900(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3109
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->access$2900(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3111
    :cond_6
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3112
    invoke-virtual {p0, v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 3113
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->clear()V

    .line 3114
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v0, v0, v12

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v9, v9, v13

    invoke-direct {p0, v0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3115
    invoke-virtual {p0, v12, v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 3117
    :cond_7
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 2240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2241
    .local v0, "action":I
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    if-eqz v5, :cond_0

    .line 2242
    if-nez v0, :cond_2

    .line 2244
    iput-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .line 2257
    :cond_0
    if-eqz v0, :cond_5

    .line 2258
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2259
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    .line 2260
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .line 2261
    .local v2, "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2262
    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .line 2267
    .end local v1    # "i":I
    .end local v2    # "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    .end local v3    # "listenerCount":I
    :cond_1
    :goto_1
    return v4

    .line 2246
    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    invoke-interface {v5, p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 2247
    const/4 v5, 0x3

    if-eq v0, v5, :cond_3

    if-ne v0, v4, :cond_1

    .line 2249
    :cond_3
    iput-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    goto :goto_1

    .line 2259
    .restart local v1    # "i":I
    .restart local v2    # "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    .restart local v3    # "listenerCount":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2267
    .end local v1    # "i":I
    .end local v2    # "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    .end local v3    # "listenerCount":I
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x3

    .line 2223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2224
    .local v0, "action":I
    if-eq v0, v5, :cond_0

    if-nez v0, :cond_1

    .line 2225
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .line 2228
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2229
    .local v3, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 2230
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .line 2231
    .local v2, "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v0, v5, :cond_2

    .line 2232
    iput-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .line 2233
    const/4 v4, 0x1

    .line 2236
    .end local v2    # "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    :goto_1
    return v4

    .line 2229
    .restart local v2    # "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2236
    .end local v2    # "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 9
    .param p1, "into"    # [I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3181
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3182
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 3183
    aput v7, p1, v7

    .line 3184
    aput v7, p1, v8

    .line 3204
    :goto_0
    return-void

    .line 3187
    :cond_0
    const v4, 0x7fffffff

    .line 3188
    .local v4, "minPositionPreLayout":I
    const/high16 v3, -0x80000000

    .line 3189
    .local v3, "maxPositionPreLayout":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 3190
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3191
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3189
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3194
    :cond_2
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    .line 3195
    .local v5, "pos":I
    if-ge v5, v4, :cond_3

    .line 3196
    move v4, v5

    .line 3198
    :cond_3
    if-le v5, v3, :cond_1

    .line 3199
    move v3, v5

    goto :goto_2

    .line 3202
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v5    # "pos":I
    :cond_4
    aput v4, p1, v7

    .line 3203
    aput v3, p1, v8

    goto :goto_0
.end method

.method private getAdapterPositionFor(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I
    .locals 2
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 9330
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9333
    :cond_0
    const/4 v0, -0x1

    .line 9335
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    iget v1, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v0

    goto :goto_0
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p0, "child"    # Landroid/view/View;

    .prologue
    .line 3667
    if-nez p0, :cond_0

    .line 3668
    const/4 v0, 0x0

    .line 3670
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mViewHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    goto :goto_0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x2e

    .line 574
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v2, :cond_1

    .line 575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 580
    .end local p2    # "className":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 577
    .restart local p2    # "className":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private getScrollFactor()F
    .locals 4

    .prologue
    .line 2590
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollFactor:F

    const/4 v2, 0x1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 2591
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2592
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2594
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollFactor:F

    .line 2600
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollFactor:F

    :goto_0
    return v1

    .line 2597
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;
    .locals 1

    .prologue
    .line 11090
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    if-nez v0, :cond_0

    .line 11091
    new-instance v0, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 11093
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollingChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 9
    .param p1, "key"    # J
    .param p3, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p4, "oldChangeViewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 3137
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3138
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 3139
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3140
    .local v3, "view":Landroid/view/View;
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3141
    .local v2, "other":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-ne v2, p3, :cond_1

    .line 3138
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3144
    :cond_1
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChangedHolderKey(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 3145
    .local v4, "otherKey":J
    cmp-long v6, v4, p1

    if-nez v6, :cond_0

    .line 3146
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3147
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3151
    :cond_2
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " \n View Holder 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3159
    .end local v2    # "other":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "otherKey":J
    :cond_3
    const-string/jumbo v6, "RecyclerView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " cannot be found but it is necessary for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    return-void
.end method

.method private hasUpdatedView()Z
    .locals 4

    .prologue
    .line 1473
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 1474
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1475
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1476
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1474
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1479
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1480
    const/4 v3, 0x1

    .line 1483
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private initChildrenHelper()V
    .locals 2

    .prologue
    .line 584
    new-instance v0, Lorg/telegram/messenger/support/widget/ChildHelper;

    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$5;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;-><init>(Lorg/telegram/messenger/support/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    .line 681
    return-void
.end method

.method private jumpToPositionForSmoothScroller(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1365
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 1370
    :goto_0
    return-void

    .line 1368
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1369
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method private onEnterLayoutOrScroll()V
    .locals 1

    .prologue
    .line 2722
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2723
    return-void
.end method

.method private onExitLayoutOrScroll()V
    .locals 2

    .prologue
    .line 2726
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2727
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 2732
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2733
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 2735
    :cond_0
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 2540
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2541
    .local v0, "actionIndex":I
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    if-ne v2, v3, :cond_0

    .line 2543
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 2544
    .local v1, "newIndex":I
    :goto_0
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    .line 2545
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    .line 2546
    invoke-static {p1, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    add-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    iput v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    .line 2548
    .end local v1    # "newIndex":I
    :cond_0
    return-void

    .line 2543
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private postAnimationRunner()V
    .locals 1

    .prologue
    .line 2824
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_0

    .line 2825
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2826
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2828
    :cond_0
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    .prologue
    .line 2831
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2841
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_0

    .line 2844
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->reset()V

    .line 2845
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 2846
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onItemsChanged(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 2851
    :cond_0
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2852
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->preProcess()V

    .line 2856
    :goto_0
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_5

    :cond_1
    move v0, v2

    .line 2857
    .local v0, "animationTypeSupported":Z
    :goto_1
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z
    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->access$2600(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_3
    move v3, v2

    :goto_2
    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v4, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2502(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 2861
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunSimpleAnimations:Z
    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2500(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v0, :cond_7

    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_7

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_3
    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v3, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2302(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 2864
    return-void

    .line 2854
    .end local v0    # "animationTypeSupported":Z
    :cond_4
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 2856
    goto :goto_1

    .restart local v0    # "animationTypeSupported":Z
    :cond_6
    move v3, v1

    .line 2857
    goto :goto_2

    :cond_7
    move v2, v1

    .line 2861
    goto :goto_3
.end method

.method private pullGlows(FFFF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "overscrollX"    # F
    .param p3, "y"    # F
    .param p4, "overscrollY"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 1905
    const/4 v0, 0x0

    .line 1906
    .local v0, "invalidate":Z
    cmpg-float v1, p2, v4

    if-gez v1, :cond_4

    .line 1907
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureLeftGlow()V

    .line 1908
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-float v2, p2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1909
    const/4 v0, 0x1

    .line 1918
    :cond_0
    :goto_0
    cmpg-float v1, p4, v4

    if-gez v1, :cond_5

    .line 1919
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureTopGlow()V

    .line 1920
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-float v2, p4

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1921
    const/4 v0, 0x1

    .line 1930
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    cmpl-float v1, p2, v4

    if-nez v1, :cond_2

    cmpl-float v1, p4, v4

    if-eqz v1, :cond_3

    .line 1931
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1933
    :cond_3
    return-void

    .line 1911
    :cond_4
    cmpl-float v1, p2, v4

    if-lez v1, :cond_0

    .line 1912
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureRightGlow()V

    .line 1913
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p2, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p3, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1914
    const/4 v0, 0x1

    goto :goto_0

    .line 1923
    :cond_5
    cmpl-float v1, p4, v4

    if-lez v1, :cond_1

    .line 1924
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureBottomGlow()V

    .line 1925
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p4, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v3, p1, v3

    sub-float v3, v5, v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1926
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private recordAnimationInfoIfBouncedHiddenView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 4
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "animationInfo"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .prologue
    .line 3171
    const/4 v2, 0x0

    const/16 v3, 0x2000

    invoke-virtual {p1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 3172
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mTrackOldChangeHolders:Z
    invoke-static {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2700(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3174
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChangedHolderKey(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 3175
    .local v0, "key":J
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToOldChangeHolders(JLorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 3177
    .end local v0    # "key":J
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v2, p1, p2}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->addToPreLayout(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 3178
    return-void
.end method

.method private releaseGlows()V
    .locals 2

    .prologue
    .line 1936
    const/4 v0, 0x0

    .line 1937
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    .line 1938
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1939
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1940
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 1941
    :cond_3
    if-eqz v0, :cond_4

    .line 1942
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1944
    :cond_4
    return-void
.end method

.method private removeAnimatingView(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1104
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 1105
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, p1}, Lorg/telegram/messenger/support/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    .line 1106
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 1107
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1108
    .local v1, "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->unscrapView(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 1109
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 1115
    .end local v1    # "viewHolder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1116
    return v0

    .line 1115
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private repositionShadowingViews()V
    .locals 9

    .prologue
    .line 4243
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4244
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 4245
    iget-object v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v7, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 4246
    .local v6, "view":Landroid/view/View;
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 4247
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_1

    iget-object v7, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    if-eqz v7, :cond_1

    .line 4248
    iget-object v7, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mShadowingHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iget-object v4, v7, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4249
    .local v4, "shadowingView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 4250
    .local v3, "left":I
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v5

    .line 4251
    .local v5, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v3, v7, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v5, v7, :cond_1

    .line 4253
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v4, v3, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 4244
    .end local v3    # "left":I
    .end local v4    # "shadowingView":Landroid/view/View;
    .end local v5    # "top":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4259
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v6    # "view":Landroid/view/View;
    :cond_2
    return-void
.end method

.method private resetTouch()V
    .locals 1

    .prologue
    .line 2527
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2528
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 2530
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopNestedScroll()V

    .line 2531
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->releaseGlows()V

    .line 2532
    return-void
.end method

.method private setAdapterInternal(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;ZZ)V
    .locals 3
    .param p1, "adapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .param p2, "compatibleWithPrevious"    # Z
    .param p3, "removeAndRecycleViews"    # Z

    .prologue
    .line 874
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    .line 875
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mObserver:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;)V

    .line 876
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 878
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_4

    .line 880
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v1, :cond_2

    .line 881
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 887
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_3

    .line 888
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 889
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 892
    :cond_3
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clear()V

    .line 894
    :cond_4
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;->reset()V

    .line 895
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .line 896
    .local v0, "oldAdapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .line 897
    if-eqz p1, :cond_5

    .line 898
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mObserver:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;)V

    .line 899
    invoke-virtual {p1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 901
    :cond_5
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_6

    .line 902
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onAdapterChanged(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 904
    :cond_6
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->onAdapterChanged(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Z)V

    .line 905
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v2, 0x1

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 906
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 907
    return-void
.end method

.method private setDataSetChangedAfterLayout()V
    .locals 4

    .prologue
    .line 3567
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_0

    .line 3579
    :goto_0
    return-void

    .line 3570
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 3571
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3572
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 3573
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3574
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    .line 3575
    const/16 v3, 0x200

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3572
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3578
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_2
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    goto :goto_0
.end method

.method private setScrollState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 1190
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_0

    .line 1202
    :goto_0
    return-void

    .line 1197
    :cond_0
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    .line 1198
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    .line 1199
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScrollersInternal()V

    .line 1201
    :cond_1
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    goto :goto_0
.end method

.method private stopScrollersInternal()V
    .locals 1

    .prologue
    .line 1876
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->stop()V

    .line 1877
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1878
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 1880
    :cond_0
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    .line 1966
    if-gez p1, :cond_4

    .line 1967
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureLeftGlow()V

    .line 1968
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 1974
    :cond_0
    :goto_0
    if-gez p2, :cond_5

    .line 1975
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureTopGlow()V

    .line 1976
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 1982
    :cond_1
    :goto_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_3

    .line 1983
    :cond_2
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1985
    :cond_3
    return-void

    .line 1969
    :cond_4
    if-lez p1, :cond_0

    .line 1970
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureRightGlow()V

    .line 1971
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_0

    .line 1977
    :cond_5
    if-lez p2, :cond_1

    .line 1978
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->ensureBottomGlow()V

    .line 1979
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0, p2}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_1
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 2116
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onAddFocusables(Lorg/telegram/messenger/support/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2117
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2119
    :cond_1
    return-void
.end method

.method public addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V
    .locals 1
    .param p1, "decor"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;

    .prologue
    .line 1248
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;I)V

    .line 1249
    return-void
.end method

.method public addItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;I)V
    .locals 2
    .param p1, "decor"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;
    .param p2, "index"    # I

    .prologue
    .line 1219
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1220
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    const-string/jumbo v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1223
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1224
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1226
    :cond_1
    if-gez p2, :cond_2

    .line 1227
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1231
    :goto_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1232
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 1233
    return-void

    .line 1229
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public addOnChildAttachStateChangeListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;

    .prologue
    .line 962
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 963
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 965
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 966
    return-void
.end method

.method public addOnItemTouchListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .prologue
    .line 2207
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2208
    return-void
.end method

.method public addOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    .prologue
    .line 1316
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1319
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1320
    return-void
.end method

.method applyEdgeEffectColor(Landroid/support/v4/widget/EdgeEffectCompat;)V
    .locals 5
    .param p1, "edgeEffectCompat"    # Landroid/support/v4/widget/EdgeEffectCompat;

    .prologue
    .line 2044
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->glowColor:I

    if-eqz v3, :cond_0

    .line 2046
    :try_start_0
    const-class v3, Landroid/support/v4/widget/EdgeEffectCompat;

    const-string/jumbo v4, "mEdgeEffect"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2047
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2048
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/EdgeEffect;

    .line 2049
    .local v1, "edgeEffect":Landroid/widget/EdgeEffect;
    if-eqz v1, :cond_0

    .line 2050
    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->glowColor:I

    invoke-virtual {v1, v3}, Landroid/widget/EdgeEffect;->setColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2056
    .end local v1    # "edgeEffect":Landroid/widget/EdgeEffect;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return-void

    .line 2052
    :catch_0
    move-exception v0

    .line 2053
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2166
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2167
    if-nez p1, :cond_0

    .line 2168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2171
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2174
    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 2184
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2185
    if-nez p1, :cond_0

    .line 2186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2189
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2191
    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3388
    instance-of v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    check-cast p1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->checkLayoutParams(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clearOldPositions()V
    .locals 4

    .prologue
    .line 3442
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3443
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3444
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3445
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3446
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 3443
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3449
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clearOldPositions()V

    .line 3450
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 988
    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    .prologue
    .line 1337
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1340
    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1592
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 1595
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1567
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 1570
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1615
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 1618
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1664
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 1667
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1640
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 1643
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1687
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    .line 1690
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    goto :goto_0
.end method

.method defaultOnMeasure(II)V
    .locals 4
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 2680
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v3

    invoke-static {p1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v1

    .line 2683
    .local v1, "width":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v3

    invoke-static {p2, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    .line 2687
    .local v0, "height":I
    invoke-virtual {p0, v1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 2688
    return-void
.end method

.method dispatchLayout()V
    .locals 2

    .prologue
    .line 2892
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-nez v0, :cond_0

    .line 2893
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No adapter attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    :goto_0
    return-void

    .line 2897
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 2898
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "No layout manager attached; skipping layout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2902
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mIsMeasuring:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2202(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 2903
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2100(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2904
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 2905
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 2906
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 2917
    :goto_1
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep3()V

    goto :goto_0

    .line 2907
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasUpdates()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_4

    .line 2911
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 2912
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_1

    .line 2915
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    goto :goto_1
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 9379
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 9384
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 9374
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 9368
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 3985
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    .line 3986
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 3991
    :cond_0
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 3994
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    if-eqz v1, :cond_1

    .line 3995
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V

    .line 3997
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 3998
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3999
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V

    .line 3998
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4002
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 4
    .param p1, "hresult"    # I
    .param p2, "vresult"    # I

    .prologue
    .line 3949
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollX()I

    move-result v1

    .line 3950
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollY()I

    move-result v2

    .line 3951
    .local v2, "scrollY":I
    invoke-virtual {p0, v1, v2, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 3954
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->onScrolled(II)V

    .line 3958
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    if-eqz v3, :cond_0

    .line 3959
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;->onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V

    .line 3961
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 3962
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3963
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;->onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V

    .line 3962
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3966
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1072
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1073
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1064
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1065
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3316
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 3318
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3319
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3320
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;

    iget-object v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v6, p1, p0, v9}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 3319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3324
    :cond_0
    const/4 v2, 0x0

    .line 3325
    .local v2, "needsInvalidate":Z
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3327
    .local v4, "restore":I
    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    .line 3328
    .local v3, "padding":I
    :goto_1
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3329
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v3

    int-to-float v6, v6

    invoke-virtual {p1, v6, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3330
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_9

    move v2, v8

    .line 3331
    :goto_2
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3333
    .end local v3    # "padding":I
    .end local v4    # "restore":I
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3334
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3335
    .restart local v4    # "restore":I
    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_2

    .line 3336
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3338
    :cond_2
    iget v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->topGlowOffset:I

    int-to-float v6, v6

    invoke-virtual {p1, v10, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3339
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_a

    move v6, v8

    :goto_3
    or-int/2addr v2, v6

    .line 3340
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3342
    .end local v4    # "restore":I
    :cond_3
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3343
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3344
    .restart local v4    # "restore":I
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 3345
    .local v5, "width":I
    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    .line 3346
    .restart local v3    # "padding":I
    :goto_4
    const/high16 v6, 0x42b40000    # 90.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3347
    neg-int v6, v3

    int-to-float v6, v6

    neg-int v9, v5

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3348
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v8

    :goto_5
    or-int/2addr v2, v6

    .line 3349
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3351
    .end local v3    # "padding":I
    .end local v4    # "restore":I
    .end local v5    # "width":I
    :cond_4
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_5

    .line 3352
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 3353
    .restart local v4    # "restore":I
    const/high16 v6, 0x43340000    # 180.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 3354
    iget-boolean v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_d

    .line 3355
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v9

    add-int/2addr v6, v9

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v10

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3359
    :goto_6
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v6, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_e

    :goto_7
    or-int/2addr v2, v8

    .line 3360
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 3366
    .end local v4    # "restore":I
    :cond_5
    if-nez v2, :cond_6

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_6

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 3368
    const/4 v2, 0x1

    .line 3371
    :cond_6
    if-eqz v2, :cond_7

    .line 3372
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 3374
    :cond_7
    return-void

    .restart local v4    # "restore":I
    :cond_8
    move v3, v7

    .line 3327
    goto/16 :goto_1

    .restart local v3    # "padding":I
    :cond_9
    move v2, v7

    .line 3330
    goto/16 :goto_2

    .end local v3    # "padding":I
    :cond_a
    move v6, v7

    .line 3339
    goto/16 :goto_3

    .restart local v5    # "width":I
    :cond_b
    move v3, v7

    .line 3345
    goto/16 :goto_4

    .restart local v3    # "padding":I
    :cond_c
    move v6, v7

    .line 3348
    goto :goto_5

    .line 3357
    .end local v3    # "padding":I
    .end local v5    # "width":I
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getWidth()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getHeight()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {p1, v6, v9}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    :cond_e
    move v8, v7

    .line 3359
    goto :goto_7
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 3847
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method eatRequestLayout()V
    .locals 2

    .prologue
    .line 1695
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    .line 1696
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1699
    :cond_0
    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    .prologue
    .line 2030
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2041
    :goto_0
    return-void

    .line 2033
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2034
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2035
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2040
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->applyEdgeEffectColor(Landroid/support/v4/widget/EdgeEffectCompat;)V

    goto :goto_0

    .line 2038
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method ensureLeftGlow()V
    .locals 4

    .prologue
    .line 1988
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 1999
    :goto_0
    return-void

    .line 1991
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1992
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 1993
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1998
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->applyEdgeEffectColor(Landroid/support/v4/widget/EdgeEffectCompat;)V

    goto :goto_0

    .line 1996
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method ensureRightGlow()V
    .locals 4

    .prologue
    .line 2002
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2013
    :goto_0
    return-void

    .line 2005
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2006
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2007
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2012
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->applyEdgeEffectColor(Landroid/support/v4/widget/EdgeEffectCompat;)V

    goto :goto_0

    .line 2010
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method ensureTopGlow()V
    .locals 4

    .prologue
    .line 2016
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_0

    .line 2027
    :goto_0
    return-void

    .line 2019
    :cond_0
    new-instance v0, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2020
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v0, :cond_1

    .line 2021
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2026
    :goto_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->applyEdgeEffectColor(Landroid/support/v4/widget/EdgeEffectCompat;)V

    goto :goto_0

    .line 2024
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    goto :goto_1
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 3830
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v1

    .line 3831
    .local v1, "count":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 3832
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v5, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3833
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v3

    .line 3834
    .local v3, "translationX":F
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v4

    .line 3835
    .local v4, "translationY":F
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    .line 3842
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :goto_1
    return-object v0

    .line 3831
    .restart local v0    # "child":Landroid/view/View;
    .restart local v3    # "translationX":F
    .restart local v4    # "translationY":F
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3842
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 3643
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3644
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_0

    move-object p1, v0

    .line 3645
    check-cast p1, Landroid/view/View;

    .line 3646
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 3648
    :cond_0
    if-ne v0, p0, :cond_1

    .end local p1    # "view":Landroid/view/View;
    :goto_1
    return-object p1

    .restart local p1    # "view":Landroid/view/View;
    :cond_1
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 3661
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 3662
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    goto :goto_0
.end method

.method public findViewHolderForAdapterPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 3765
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_1

    move-object v1, v3

    .line 3775
    :cond_0
    :goto_0
    return-object v1

    .line 3768
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3769
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 3770
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3771
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapterPositionFor(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 3769
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_3
    move-object v1, v3

    .line 3775
    goto :goto_0
.end method

.method public findViewHolderForItemId(J)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 3810
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3811
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3812
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3813
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 3819
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :goto_1
    return-object v1

    .line 3811
    .restart local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3819
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public findViewHolderForLayoutPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3747
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->findViewHolderForPosition(IZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForPosition(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3728
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->findViewHolderForPosition(IZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "position"    # I
    .param p2, "checkNewPosition"    # Z

    .prologue
    .line 3779
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3780
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 3781
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3782
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_2

    .line 3783
    if-eqz p2, :cond_1

    .line 3784
    iget v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v3, p1, :cond_2

    .line 3795
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_0
    :goto_1
    return-object v1

    .line 3787
    .restart local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 3780
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3795
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public fling(II)Z
    .locals 7
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1826
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v5, :cond_1

    .line 1827
    const-string/jumbo v4, "RecyclerView"

    const-string/jumbo v5, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    :cond_0
    :goto_0
    return v3

    .line 1831
    :cond_1
    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v5, :cond_0

    .line 1835
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v1

    .line 1836
    .local v1, "canScrollHorizontal":Z
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    .line 1838
    .local v2, "canScrollVertical":Z
    if-eqz v1, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_3

    .line 1839
    :cond_2
    const/4 p1, 0x0

    .line 1841
    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v5, v6, :cond_5

    .line 1842
    :cond_4
    const/4 p2, 0x0

    .line 1844
    :cond_5
    if-nez p1, :cond_6

    if-eqz p2, :cond_0

    .line 1849
    :cond_6
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1850
    if-nez v1, :cond_7

    if-eqz v2, :cond_8

    :cond_7
    move v0, v4

    .line 1851
    .local v0, "canScroll":Z
    :goto_1
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 1853
    if-eqz v0, :cond_0

    .line 1854
    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1855
    iget v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v3, v3

    iget v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 1856
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->fling(II)V

    move v3, v4

    .line 1857
    goto :goto_0

    .end local v0    # "canScroll":Z
    :cond_8
    move v0, v3

    .line 1850
    goto :goto_1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 5
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 2066
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2067
    .local v1, "result":Landroid/view/View;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 2078
    :goto_0
    return-object v2

    .line 2070
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    .line 2071
    .local v0, "ff":Landroid/view/FocusFinder;
    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    .line 2072
    if-nez v1, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isComputingLayout()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v2, :cond_1

    .line 2074
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 2075
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v1

    .line 2076
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2078
    :cond_1
    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 3393
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3394
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3396
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 3401
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3402
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3404
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 3409
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    .line 3410
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3412
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    .line 946
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    goto :goto_0
.end method

.method getChangedHolderKey(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)J
    .locals 2
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 3237
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    goto :goto_0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3689
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3690
    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .prologue
    .line 11060
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_0

    .line 11061
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    .line 11063
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-interface {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v0

    goto :goto_0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const-wide/16 v2, -0x1

    .line 3715
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3719
    :cond_0
    :goto_0
    return-wide v2

    .line 3718
    :cond_1
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3719
    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3704
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3705
    .local v0, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3679
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3620
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3621
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 3622
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3625
    :cond_0
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public getCompatAccessibilityDelegate()Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getItemAnimator()Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;
    .locals 1

    .prologue
    .line 2816
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 3902
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 3903
    .local v3, "lp":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-boolean v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_0

    .line 3904
    iget-object v2, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 3919
    :goto_0
    return-object v2

    .line 3907
    :cond_0
    iget-object v2, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 3908
    .local v2, "insets":Landroid/graphics/Rect;
    invoke-virtual {v2, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3909
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3910
    .local v0, "decorCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 3911
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 3912
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v4, v5, p1, p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 3913
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 3914
    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 3915
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    .line 3916
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    .line 3910
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3918
    :cond_1
    iput-boolean v7, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_0
.end method

.method public getLayoutManager()Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    .prologue
    .line 1898
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    .prologue
    .line 1888
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method public getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->getRecycledViewPool()Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    .prologue
    .line 1186
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    .prologue
    .line 784
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    .prologue
    .line 9362
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    .prologue
    .line 4018
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initAdapterManager()V
    .locals 2

    .prologue
    .line 684
    new-instance v0, Lorg/telegram/messenger/support/widget/AdapterHelper;

    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$6;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/AdapterHelper;-><init>(Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    .line 762
    return-void
.end method

.method invalidateGlows()V
    .locals 1

    .prologue
    .line 2059
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mBottomGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTopGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRightGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLeftGlow:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 2060
    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    .prologue
    .line 3602
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 3611
    :goto_0
    return-void

    .line 3605
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 3606
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    const-string/jumbo v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 3609
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 3610
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 2738
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 3424
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .prologue
    .line 2155
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 1

    .prologue
    .line 2772
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayoutFrozen()Z
    .locals 1

    .prologue
    .line 1783
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    .prologue
    .line 9347
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    .prologue
    .line 3306
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 3307
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3308
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3309
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 3307
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3311
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 3312
    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    .prologue
    .line 3586
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3587
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3588
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3589
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3590
    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3587
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3593
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 3594
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 3595
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3
    .param p1, "dx"    # I

    .prologue
    .line 3895
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3896
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3897
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 3896
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3899
    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3
    .param p1, "dy"    # I

    .prologue
    .line 3857
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 3858
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3859
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v2, v1}, Lorg/telegram/messenger/support/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 3858
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3861
    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 3487
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3488
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3489
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3490
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    .line 3495
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3496
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v4, 0x1

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 3488
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3499
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 3500
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 3501
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 9
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    const/4 v8, 0x0

    .line 3453
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3455
    .local v0, "childCount":I
    if-ge p1, p2, :cond_1

    .line 3456
    move v5, p1

    .line 3457
    .local v5, "start":I
    move v1, p2

    .line 3458
    .local v1, "end":I
    const/4 v4, -0x1

    .line 3465
    .local v4, "inBetweenOffset":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    .line 3466
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v6, v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3467
    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    iget v6, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v5, :cond_0

    iget v6, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v1, :cond_2

    .line 3465
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3460
    .end local v1    # "end":I
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .end local v3    # "i":I
    .end local v4    # "inBetweenOffset":I
    .end local v5    # "start":I
    :cond_1
    move v5, p2

    .line 3461
    .restart local v5    # "start":I
    move v1, p1

    .line 3462
    .restart local v1    # "end":I
    const/4 v4, 0x1

    .restart local v4    # "inBetweenOffset":I
    goto :goto_0

    .line 3474
    .restart local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .restart local v3    # "i":I
    :cond_2
    iget v6, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v6, p1, :cond_3

    .line 3475
    sub-int v6, p2, p1

    invoke-virtual {v2, v6, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3480
    :goto_3
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    const/4 v7, 0x1

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v6, v7}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    goto :goto_2

    .line 3477
    :cond_3
    invoke-virtual {v2, v4, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_3

    .line 3482
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_4
    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v6, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 3483
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 3484
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "applyToPreLayout"    # Z

    .prologue
    const/4 v6, 0x1

    .line 3505
    add-int v3, p1, p2

    .line 3506
    .local v3, "positionEnd":I
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3507
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 3508
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v4, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3509
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_0

    .line 3510
    iget v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, v3, :cond_1

    .line 3516
    neg-int v4, p2

    invoke-virtual {v1, v4, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 3517
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v4, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 3507
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3518
    :cond_1
    iget v4, v1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_0

    .line 3523
    add-int/lit8 v4, p1, -0x1

    neg-int v5, p2

    invoke-virtual {v1, v4, v5, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 3525
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v4, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    goto :goto_1

    .line 3529
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v4, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 3530
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 3531
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2123
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 2124
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 2125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    .line 2126
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2127
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 2128
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 2130
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 2131
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3874
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 3886
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2135
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2136
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 2137
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2139
    :cond_0
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 2141
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V

    .line 2142
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    .line 2143
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    .line 2144
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 2146
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2147
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewInfoStore:Lorg/telegram/messenger/support/widget/ViewInfoStore;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/ViewInfoStore;->onDetach()V

    .line 2148
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 3378
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 3380
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3381
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3382
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;)V

    .line 3381
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3384
    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2552
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_1

    .line 2583
    :cond_0
    :goto_0
    return v5

    .line 2555
    :cond_1
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v3, :cond_0

    .line 2558
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getSource(Landroid/view/MotionEvent;)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 2559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    .line 2561
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2564
    const/16 v3, 0x9

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v3

    neg-float v2, v3

    .line 2569
    .local v2, "vScroll":F
    :goto_1
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2570
    const/16 v3, 0xa

    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v0

    .line 2576
    .local v0, "hScroll":F
    :goto_2
    cmpl-float v3, v2, v6

    if-nez v3, :cond_2

    cmpl-float v3, v0, v6

    if-eqz v3, :cond_0

    .line 2577
    :cond_2
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollFactor()F

    move-result v1

    .line 2578
    .local v1, "scrollFactor":F
    mul-float v3, v0, v1

    float-to-int v3, v3

    mul-float v4, v2, v1

    float-to-int v4, v4

    invoke-virtual {p0, v3, v4, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    .line 2567
    .end local v0    # "hScroll":F
    .end local v1    # "scrollFactor":F
    .end local v2    # "vScroll":F
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "vScroll":F
    goto :goto_1

    .line 2573
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "hScroll":F
    goto :goto_2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 17
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2272
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v12, :cond_0

    .line 2275
    const/4 v12, 0x0

    .line 2371
    :goto_0
    return v12

    .line 2277
    :cond_0
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 2278
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->cancelTouch()V

    .line 2279
    const/4 v12, 0x1

    goto :goto_0

    .line 2282
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v12, :cond_2

    .line 2283
    const/4 v12, 0x0

    goto :goto_0

    .line 2286
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v3

    .line 2287
    .local v3, "canScrollHorizontally":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v12}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v4

    .line 2289
    .local v4, "canScrollVertically":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v12, :cond_3

    .line 2290
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2292
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2294
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v1

    .line 2295
    .local v1, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 2297
    .local v2, "actionIndex":I
    packed-switch v1, :pswitch_data_0

    .line 2371
    :cond_4
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e

    const/4 v12, 0x1

    goto :goto_0

    .line 2299
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v12, :cond_5

    .line 2300
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2302
    :cond_5
    const/4 v12, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    .line 2303
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    .line 2304
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    .line 2306
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_6

    .line 2307
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2308
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    .line 2312
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    aput v16, v12, v13

    .line 2314
    const/4 v8, 0x0

    .line 2315
    .local v8, "nestedScrollAxis":I
    if-eqz v3, :cond_7

    .line 2316
    or-int/lit8 v8, v8, 0x1

    .line 2318
    :cond_7
    if-eqz v4, :cond_8

    .line 2319
    or-int/lit8 v8, v8, 0x2

    .line 2321
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lorg/telegram/messenger/support/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_1

    .line 2325
    .end local v8    # "nestedScrollAxis":I
    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    .line 2326
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    .line 2327
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v12, v12

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_1

    .line 2331
    :pswitch_3
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v7

    .line 2332
    .local v7, "index":I
    if-gez v7, :cond_9

    .line 2333
    const-string/jumbo v12, "RecyclerView"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Error processing scroll; pointer index for id "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2338
    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v10, v12

    .line 2339
    .local v10, "x":I
    move-object/from16 v0, p1

    invoke-static {v0, v7}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v12

    const/high16 v13, 0x3f000000    # 0.5f

    add-float/2addr v12, v13

    float-to-int v11, v12

    .line 2340
    .local v11, "y":I
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    const/4 v13, 0x1

    if-eq v12, v13, :cond_4

    .line 2341
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    sub-int v5, v10, v12

    .line 2342
    .local v5, "dx":I
    move-object/from16 v0, p0

    iget v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    sub-int v6, v11, v12

    .line 2343
    .local v6, "dy":I
    const/4 v9, 0x0

    .line 2344
    .local v9, "startScroll":Z
    if-eqz v3, :cond_a

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    if-le v12, v13, :cond_a

    .line 2345
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    if-gez v5, :cond_c

    const/4 v12, -0x1

    :goto_2
    mul-int/2addr v12, v14

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    .line 2346
    const/4 v9, 0x1

    .line 2348
    :cond_a
    if-eqz v4, :cond_b

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v12

    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    if-le v12, v13, :cond_b

    .line 2349
    move-object/from16 v0, p0

    iget v13, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    if-gez v6, :cond_d

    const/4 v12, -0x1

    :goto_3
    mul-int/2addr v12, v14

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    .line 2350
    const/4 v9, 0x1

    .line 2352
    :cond_b
    if-eqz v9, :cond_4

    .line 2353
    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    goto/16 :goto_1

    .line 2345
    :cond_c
    const/4 v12, 0x1

    goto :goto_2

    .line 2349
    :cond_d
    const/4 v12, 0x1

    goto :goto_3

    .line 2359
    .end local v5    # "dx":I
    .end local v6    # "dy":I
    .end local v7    # "index":I
    .end local v9    # "startScroll":Z
    .end local v10    # "x":I
    .end local v11    # "y":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2363
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->clear()V

    .line 2364
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopNestedScroll()V

    goto/16 :goto_1

    .line 2368
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 2371
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 2297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 3282
    const-string/jumbo v0, "RV OnLayout"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 3283
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayout()V

    .line 3284
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 3285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3286
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 2605
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v4, :cond_1

    .line 2606
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 2672
    :cond_0
    :goto_0
    return-void

    .line 2609
    :cond_1
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mAutoMeasure:Z
    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->access$2000(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2610
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 2611
    .local v2, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2612
    .local v0, "heightMode":I
    if-ne v2, v7, :cond_2

    if-ne v0, v7, :cond_2

    move v1, v3

    .line 2614
    .local v1, "skipMeasure":Z
    :cond_2
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v6, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v4, v5, v6, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onMeasure(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;II)V

    .line 2615
    if-nez v1, :cond_0

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v4, :cond_0

    .line 2618
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mLayoutStep:I
    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2100(Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 2619
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 2623
    :cond_3
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 2624
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mIsMeasuring:Z
    invoke-static {v4, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2202(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 2625
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 2628
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 2632
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2633
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 2636
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mIsMeasuring:Z
    invoke-static {v4, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2202(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 2637
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 2639
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    goto :goto_0

    .line 2642
    .end local v0    # "heightMode":I
    .end local v1    # "skipMeasure":Z
    .end local v2    # "widthMode":I
    :cond_4
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v4, :cond_5

    .line 2643
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v3, v4, v5, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onMeasure(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;II)V

    goto :goto_0

    .line 2647
    :cond_5
    iget-boolean v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v4, :cond_6

    .line 2648
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 2649
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 2651
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mRunPredictiveAnimations:Z
    invoke-static {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2300(Lorg/telegram/messenger/support/widget/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2652
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v4, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2402(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 2658
    :goto_1
    iput-boolean v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 2659
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2662
    :cond_6
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v3, :cond_8

    .line 2663
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    iput v4, v3, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    .line 2667
    :goto_2
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 2668
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v3, v4, v5, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onMeasure(Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;II)V

    .line 2669
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 2670
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v3, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2402(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    goto/16 :goto_0

    .line 2655
    :cond_7
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 2656
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mInPreLayout:Z
    invoke-static {v3, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$2402(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    goto :goto_1

    .line 2665
    :cond_8
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    iput v1, v3, Lorg/telegram/messenger/support/widget/RecyclerView$State;->mItemCount:I

    goto :goto_2
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1047
    instance-of v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    if-nez v0, :cond_1

    .line 1048
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1057
    .end local p1    # "state":Landroid/os/Parcelable;
    :cond_0
    :goto_0
    return-void

    .line 1052
    .restart local p1    # "state":Landroid/os/Parcelable;
    :cond_1
    check-cast p1, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    .end local p1    # "state":Landroid/os/Parcelable;
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    .line 1053
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1054
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    .line 1055
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1033
    new-instance v0, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1034
    .local v0, "state":Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    .line 1035
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mPendingSavedState:Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;

    # invokes: Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->copyFrom(Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;)V
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->access$1900(Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;)V

    .line 1042
    :goto_0
    return-object v0

    .line 1036
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    .line 1037
    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    .line 1039
    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0
.end method

.method public onScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 3980
    return-void
.end method

.method public onScrolled(II)V
    .locals 0
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 3944
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 2692
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 2693
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 2694
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidateGlows()V

    .line 2697
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 2386
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 2387
    :cond_0
    const/16 v18, 0x0

    .line 2523
    :goto_0
    return v18

    .line 2389
    :cond_1
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 2390
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->cancelTouch()V

    .line 2391
    const/16 v18, 0x1

    goto :goto_0

    .line 2394
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 2395
    const/16 v18, 0x0

    goto :goto_0

    .line 2398
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v5

    .line 2399
    .local v5, "canScrollHorizontally":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v6

    .line 2401
    .local v6, "canScrollVertically":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    .line 2402
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2404
    :cond_4
    const/4 v9, 0x0

    .line 2406
    .local v9, "eventAddedToVelocityTracker":Z
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v13

    .line 2407
    .local v13, "vtev":Landroid/view/MotionEvent;
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v3

    .line 2408
    .local v3, "action":I
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v4

    .line 2410
    .local v4, "actionIndex":I
    if-nez v3, :cond_5

    .line 2411
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    aput v22, v20, v21

    aput v22, v18, v19

    .line 2413
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2415
    packed-switch v3, :pswitch_data_0

    .line 2518
    :cond_6
    :goto_1
    :pswitch_0
    if-nez v9, :cond_7

    .line 2519
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2521
    :cond_7
    invoke-virtual {v13}, Landroid/view/MotionEvent;->recycle()V

    .line 2523
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 2417
    :pswitch_1
    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    .line 2418
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    .line 2419
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    .line 2421
    const/4 v11, 0x0

    .line 2422
    .local v11, "nestedScrollAxis":I
    if-eqz v5, :cond_8

    .line 2423
    or-int/lit8 v11, v11, 0x1

    .line 2425
    :cond_8
    if-eqz v6, :cond_9

    .line 2426
    or-int/lit8 v11, v11, 0x2

    .line 2428
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lorg/telegram/messenger/support/widget/RecyclerView;->startNestedScroll(I)Z

    goto :goto_1

    .line 2432
    .end local v11    # "nestedScrollAxis":I
    :pswitch_2
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    .line 2433
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchX:I

    .line 2434
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mInitialTouchY:I

    goto/16 :goto_1

    .line 2438
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v18, v0

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v10

    .line 2439
    .local v10, "index":I
    if-gez v10, :cond_a

    .line 2440
    const-string/jumbo v18, "RecyclerView"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Error processing scroll; pointer index for id "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " not found. Did any MotionEvents get skipped?"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 2445
    :cond_a
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v14, v0

    .line 2446
    .local v14, "x":I
    move-object/from16 v0, p1

    invoke-static {v0, v10}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v18

    const/high16 v19, 0x3f000000    # 0.5f

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v16, v0

    .line 2447
    .local v16, "y":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    move/from16 v18, v0

    sub-int v7, v18, v14

    .line 2448
    .local v7, "dx":I
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    move/from16 v18, v0

    sub-int v8, v18, v16

    .line 2450
    .local v8, "dy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v7, v8, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 2451
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v7, v7, v18

    .line 2452
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollConsumed:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v8, v8, v18

    .line 2453
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2455
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aget v21, v21, v22

    add-int v20, v20, v21

    aput v20, v18, v19

    .line 2456
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v20, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget v21, v21, v22

    add-int v20, v20, v21

    aput v20, v18, v19

    .line 2459
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    .line 2460
    const/4 v12, 0x0

    .line 2461
    .local v12, "startScroll":Z
    if-eqz v5, :cond_c

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    .line 2462
    if-lez v7, :cond_f

    .line 2463
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    sub-int v7, v7, v18

    .line 2467
    :goto_2
    const/4 v12, 0x1

    .line 2469
    :cond_c
    if-eqz v6, :cond_d

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    .line 2470
    if-lez v8, :cond_10

    .line 2471
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    sub-int v8, v8, v18

    .line 2475
    :goto_3
    const/4 v12, 0x1

    .line 2477
    :cond_d
    if-eqz v12, :cond_e

    .line 2478
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    .line 2482
    .end local v12    # "startScroll":Z
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollState:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 2483
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    sub-int v18, v14, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    .line 2484
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    sub-int v18, v16, v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    .line 2486
    if-eqz v5, :cond_11

    .end local v7    # "dx":I
    :goto_4
    if-eqz v6, :cond_12

    .end local v8    # "dy":I
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v13}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 2490
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 2465
    .restart local v7    # "dx":I
    .restart local v8    # "dy":I
    .restart local v12    # "startScroll":Z
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    add-int v7, v7, v18

    goto :goto_2

    .line 2473
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    move/from16 v18, v0

    add-int v8, v8, v18

    goto :goto_3

    .line 2486
    .end local v12    # "startScroll":Z
    :cond_11
    const/4 v7, 0x0

    goto :goto_4

    .end local v7    # "dx":I
    :cond_12
    const/4 v8, 0x0

    goto :goto_5

    .line 2496
    .end local v8    # "dy":I
    .end local v10    # "index":I
    .end local v14    # "x":I
    .end local v16    # "y":I
    :pswitch_4
    invoke-direct/range {p0 .. p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 2500
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2501
    const/4 v9, 0x1

    .line 2502
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mMaxFlingVelocity:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2503
    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v18

    move/from16 v0, v18

    neg-float v15, v0

    .line 2505
    .local v15, "xvel":F
    :goto_6
    if-eqz v6, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollPointerId:I

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v18

    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v17, v0

    .line 2507
    .local v17, "yvel":F
    :goto_7
    const/16 v18, 0x0

    cmpl-float v18, v15, v18

    if-nez v18, :cond_13

    const/16 v18, 0x0

    cmpl-float v18, v17, v18

    if-eqz v18, :cond_14

    :cond_13
    float-to-int v0, v15

    move/from16 v18, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->fling(II)Z

    move-result v18

    if-nez v18, :cond_15

    .line 2508
    :cond_14
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    .line 2510
    :cond_15
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->resetTouch()V

    goto/16 :goto_1

    .line 2503
    .end local v15    # "xvel":F
    .end local v17    # "yvel":F
    :cond_16
    const/4 v15, 0x0

    goto :goto_6

    .line 2505
    .restart local v15    # "xvel":F
    :cond_17
    const/16 v17, 0x0

    goto :goto_7

    .line 2514
    .end local v15    # "xvel":F
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->cancelTouch()V

    goto/16 :goto_1

    .line 2415
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .prologue
    .line 3219
    invoke-static {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 3220
    .local v0, "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_0

    .line 3221
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3222
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 3228
    :cond_0
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 3229
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 3230
    return-void

    .line 3223
    :cond_1
    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3224
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeItemDecoration(Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;)V
    .locals 2
    .param p1, "decor"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemDecoration;

    .prologue
    .line 1261
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    const-string/jumbo v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1265
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1266
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1267
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1269
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1270
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 1271
    return-void

    .line 1267
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeOnChildAttachStateChangeListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnChildAttachStateChangeListener;

    .prologue
    .line 974
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 978
    :goto_0
    return-void

    .line 977
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeOnItemTouchListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .prologue
    .line 2216
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2217
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    .line 2218
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mActiveOnItemTouchListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .line 2220
    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    .prologue
    .line 1328
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1329
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1331
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 2083
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v4, p0, v5, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p2, :cond_2

    .line 2084
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {v4, v3, v3, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2089
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2090
    .local v0, "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v0, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 2092
    check-cast v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    .line 2093
    .local v2, "lp":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    iget-boolean v4, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v4, :cond_0

    .line 2094
    iget-object v1, v2, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 2095
    .local v1, "insets":Landroid/graphics/Rect;
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 2096
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2097
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2098
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 2102
    .end local v1    # "insets":Landroid/graphics/Rect;
    .end local v2    # "lp":Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;
    :cond_0
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2103
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v4}, Lorg/telegram/messenger/support/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2104
    iget-object v4, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-nez v5, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p0, p1, v4, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    .line 2106
    .end local v0    # "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 2107
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 2111
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lorg/telegram/messenger/support/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 4
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 2376
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2377
    .local v2, "listenerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2378
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;

    .line 2379
    .local v1, "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 2377
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2381
    .end local v1    # "listener":Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 2382
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 3290
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 3291
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3295
    :goto_0
    return-void

    .line 3293
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    goto :goto_0
.end method

.method resumeRequestLayout(Z)V
    .locals 3
    .param p1, "performLayoutChildren"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1702
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    if-ge v0, v1, :cond_0

    .line 1707
    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    .line 1709
    :cond_0
    if-nez p1, :cond_1

    .line 1718
    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1720
    :cond_1
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    if-ne v0, v1, :cond_3

    .line 1722
    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 1724
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchLayout()V

    .line 1726
    :cond_2
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_3

    .line 1727
    iput-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1730
    :cond_3
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatRequestLayout:I

    .line 1731
    return-void
.end method

.method saveOldPositions()V
    .locals 4

    .prologue
    .line 3428
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 3429
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3430
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3435
    .local v1, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3436
    invoke-virtual {v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    .line 3429
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3439
    .end local v1    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 1407
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v3, :cond_1

    .line 1408
    const-string/jumbo v2, "RecyclerView"

    const-string/jumbo v3, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    .end local p1    # "x":I
    .end local p2    # "y":I
    :cond_0
    :goto_0
    return-void

    .line 1412
    .restart local p1    # "x":I
    .restart local p2    # "y":I
    :cond_1
    iget-boolean v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v3, :cond_0

    .line 1415
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1416
    .local v0, "canScrollHorizontal":Z
    iget-object v3, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    .line 1417
    .local v1, "canScrollVertical":Z
    if-nez v0, :cond_2

    if-eqz v1, :cond_0

    .line 1418
    :cond_2
    if-eqz v0, :cond_3

    .end local p1    # "x":I
    :goto_1
    if-eqz v1, :cond_4

    .end local p2    # "y":I
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;)Z

    goto :goto_0

    .restart local p1    # "x":I
    .restart local p2    # "y":I
    :cond_3
    move p1, v2

    goto :goto_1

    .end local p1    # "x":I
    :cond_4
    move p2, v2

    goto :goto_2
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1498
    const/4 v3, 0x0

    .local v3, "unconsumedX":I
    const/4 v4, 0x0

    .line 1499
    .local v4, "unconsumedY":I
    const/4 v1, 0x0

    .local v1, "consumedX":I
    const/4 v2, 0x0

    .line 1501
    .local v2, "consumedY":I
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 1502
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 1503
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->eatRequestLayout()V

    .line 1504
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1505
    const-string/jumbo v0, "RV Scroll"

    invoke-static {v0}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1506
    if-eqz p1, :cond_0

    .line 1507
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, p1, v5, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v1

    .line 1508
    sub-int v3, p1, v1

    .line 1510
    :cond_0
    if-eqz p2, :cond_1

    .line 1511
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, p2, v5, v8}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILorg/telegram/messenger/support/widget/RecyclerView$Recycler;Lorg/telegram/messenger/support/widget/RecyclerView$State;)I

    move-result v2

    .line 1512
    sub-int v4, p2, v2

    .line 1514
    :cond_1
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 1515
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->repositionShadowingViews()V

    .line 1516
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1517
    invoke-virtual {p0, v6}, Lorg/telegram/messenger/support/widget/RecyclerView;->resumeRequestLayout(Z)V

    .line 1519
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1520
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidate()V

    .line 1523
    :cond_3
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1525
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v6

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchX:I

    .line 1526
    iget v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v7

    sub-int/2addr v0, v5

    iput v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLastTouchY:I

    .line 1527
    if-eqz p3, :cond_4

    .line 1528
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v0, v0, v6

    int-to-float v0, v0

    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v5, v5, v7

    int-to-float v5, v5

    invoke-virtual {p3, v0, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1530
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    aget v5, v0, v6

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v8, v6

    add-int/2addr v5, v8

    aput v5, v0, v6

    .line 1531
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mNestedOffsets:[I

    aget v5, v0, v7

    iget-object v8, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollOffset:[I

    aget v8, v8, v7

    add-int/2addr v5, v8

    aput v5, v0, v7

    .line 1538
    :cond_5
    :goto_0
    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    .line 1539
    :cond_6
    invoke-virtual {p0, v1, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 1541
    :cond_7
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1542
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidate()V

    .line 1544
    :cond_8
    if-nez v1, :cond_9

    if-eqz v2, :cond_c

    :cond_9
    move v0, v7

    :goto_1
    return v0

    .line 1532
    :cond_a
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v0

    const/4 v5, 0x2

    if-eq v0, v5, :cond_5

    .line 1533
    if-eqz p3, :cond_b

    .line 1534
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v5, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    int-to-float v9, v4

    invoke-direct {p0, v0, v5, v8, v9}, Lorg/telegram/messenger/support/widget/RecyclerView;->pullGlows(FFFF)V

    .line 1536
    :cond_b
    invoke-direct {p0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    goto :goto_0

    :cond_c
    move v0, v6

    .line 1544
    goto :goto_1
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1401
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1351
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1362
    :goto_0
    return-void

    .line 1354
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V

    .line 1355
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1356
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1360
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1361
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->awakenScrollBars()Z

    goto :goto_0
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2800
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2804
    :goto_0
    return-void

    .line 2803
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0
.end method

.method public setAccessibilityDelegateCompat(Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;)V
    .locals 1
    .param p1, "accessibilityDelegate"    # Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    .prologue
    .line 513
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    .line 514
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAccessibilityDelegate:Lorg/telegram/messenger/support/widget/RecyclerViewAccessibilityDelegate;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 515
    return-void
.end method

.method public setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .prologue
    const/4 v1, 0x0

    .line 857
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V

    .line 858
    invoke-virtual {p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 859
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setAdapterInternal(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;ZZ)V

    .line 860
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 861
    return-void
.end method

.method public setChildDrawingOrderCallback(Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 1
    .param p1, "childDrawingOrderCallback"    # Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    .prologue
    .line 1286
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_0

    .line 1291
    :goto_0
    return-void

    .line 1289
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1290
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildDrawingOrderCallback:Lorg/telegram/messenger/support/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 789
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_0

    .line 790
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->invalidateGlows()V

    .line 792
    :cond_0
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mClipToPadding:Z

    .line 793
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 794
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    .line 795
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 797
    :cond_1
    return-void
.end method

.method public setGlowColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 3302
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->glowColor:I

    .line 3303
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0
    .param p1, "hasFixedSize"    # Z

    .prologue
    .line 776
    iput-boolean p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mHasFixedSize:Z

    .line 777
    return-void
.end method

.method public setItemAnimator(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;)V
    .locals 2
    .param p1, "animator"    # Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    .prologue
    .line 2711
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    .line 2712
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 2713
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->setListener(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 2715
    :cond_0
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    .line 2716
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    .line 2717
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimator:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemAnimatorListener:Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator;->setListener(Lorg/telegram/messenger/support/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 2719
    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 1176
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    .line 1177
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 10
    .param p1, "frozen"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1756
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-eq p1, v2, :cond_1

    .line 1757
    const-string/jumbo v2, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1758
    if-nez p1, :cond_2

    .line 1759
    iput-boolean v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1760
    iget-boolean v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_0

    .line 1761
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 1763
    :cond_0
    iput-boolean v7, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutRequestEaten:Z

    .line 1774
    :cond_1
    :goto_0
    return-void

    .line 1765
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1766
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1768
    .local v8, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0, v8}, Lorg/telegram/messenger/support/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1769
    iput-boolean v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    .line 1770
    iput-boolean v9, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 1771
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V

    goto :goto_0
.end method

.method public setLayoutManager(Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "layout"    # Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .prologue
    .line 1003
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    .line 1029
    :goto_0
    return-void

    .line 1006
    :cond_0
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V

    .line 1009
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_2

    .line 1010
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;)V

    .line 1013
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 1015
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->clear()V

    .line 1016
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 1017
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    .line 1018
    if-eqz p1, :cond_4

    .line 1019
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    if-eqz v0, :cond_3

    .line 1020
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->mRecyclerView:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_3
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->setRecyclerView(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 1024
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_4

    .line 1025
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 1028
    :cond_4
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 9342
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 9343
    return-void
.end method

.method public setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1303
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    .line 1304
    return-void
.end method

.method public setRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;)V
    .locals 1
    .param p1, "pool"    # Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;

    .prologue
    .line 1150
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->setRecycledViewPool(Lorg/telegram/messenger/support/widget/RecyclerView$RecycledViewPool;)V

    .line 1151
    return-void
.end method

.method public setRecyclerListener(Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;

    .prologue
    .line 930
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecyclerListener:Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerListener;

    .line 931
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 4
    .param p1, "slopConstant"    # I

    .prologue
    .line 809
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 810
    .local v0, "vc":Landroid/view/ViewConfiguration;
    packed-switch p1, :pswitch_data_0

    .line 812
    const-string/jumbo v1, "RecyclerView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; using default value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    .line 823
    :goto_0
    return-void

    .line 820
    :pswitch_1
    invoke-static {v0}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v1

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mTouchSlop:I

    goto :goto_0

    .line 810
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTopGlowOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 3298
    iput p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->topGlowOffset:I

    .line 3299
    return-void
.end method

.method public setViewCacheExtension(Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;)V
    .locals 1
    .param p1, "extension"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;

    .prologue
    .line 1161
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->setViewCacheExtension(Lorg/telegram/messenger/support/widget/RecyclerView$ViewCacheExtension;)V

    .line 1162
    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 2784
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2785
    const/4 v0, 0x0

    .line 2786
    .local v0, "type":I
    if-eqz p1, :cond_0

    .line 2787
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->getContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    .line 2789
    :cond_0
    if-nez v0, :cond_1

    .line 2790
    const/4 v0, 0x0

    .line 2792
    :cond_1
    iget v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    or-int/2addr v1, v0

    iput v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 2793
    const/4 v1, 0x1

    .line 2795
    .end local v0    # "type":I
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 2
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 1793
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1794
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    :cond_0
    :goto_0
    return-void

    .line 1798
    :cond_1
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-nez v0, :cond_0

    .line 1801
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1802
    const/4 p1, 0x0

    .line 1804
    :cond_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1805
    const/4 p2, 0x0

    .line 1807
    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_0

    .line 1808
    :cond_4
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mViewFlinger:Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1388
    iget-boolean v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayoutFrozen:Z

    if-eqz v0, :cond_0

    .line 1397
    :goto_0
    return-void

    .line 1391
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    .line 1392
    const-string/jumbo v0, "RecyclerView"

    const-string/jumbo v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1396
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$State;I)V

    goto :goto_0
.end method

.method public startNestedScroll(I)Z
    .locals 1
    .param p1, "axes"    # I

    .prologue
    .line 9352
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    .prologue
    .line 9357
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getScrollingChildHelper()Landroid/support/v4/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 9358
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 1868
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setScrollState(I)V

    .line 1869
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScrollersInternal()V

    .line 1870
    return-void
.end method

.method public swapAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;Z)V
    .locals 1
    .param p1, "adapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    .param p2, "removeAndRecycleExistingViews"    # Z

    .prologue
    .line 841
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 842
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->setAdapterInternal(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;ZZ)V

    .line 843
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->setDataSetChangedAfterLayout()V

    .line 844
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 845
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 7
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 3540
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v5}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 3541
    .local v1, "childCount":I
    add-int v4, p1, p2

    .line 3543
    .local v4, "positionEnd":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 3544
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    invoke-virtual {v5, v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3545
    .local v0, "child":Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 3546
    .local v2, "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3543
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3549
    :cond_1
    iget v5, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_0

    iget v5, v2, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v4, :cond_0

    .line 3552
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 3553
    invoke-virtual {v2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 3555
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    goto :goto_1

    .line 3558
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "holder":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_2
    iget-object v5, p0, Lorg/telegram/messenger/support/widget/RecyclerView;->mRecycler:Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;

    invoke-virtual {v5, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 3559
    return-void
.end method
