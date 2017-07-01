.class public Lorg/telegram/ui/Components/RecyclerListView;
.super Lorg/telegram/messenger/support/widget/RecyclerView;
.source "RecyclerListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;,
        Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;,
        Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;,
        Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    }
.end annotation


# static fields
.field private static attributes:[I

.field private static gotAttributes:Z


# instance fields
.field private clickRunnable:Ljava/lang/Runnable;

.field private currentChildPosition:I

.field private currentChildView:Landroid/view/View;

.field private disallowInterceptTouchEvents:Z

.field private emptyView:Landroid/view/View;

.field private instantClick:Z

.field private interceptedByChild:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private observer:Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

.field private onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

.field private onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

.field private onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

.field private onScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

.field private selectChildRunnable:Ljava/lang/Runnable;

.field private wasPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 212
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/RecyclerListView$1;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    iput-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->observer:Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

    .line 245
    :try_start_0
    sget-boolean v3, Lorg/telegram/ui/Components/RecyclerListView;->gotAttributes:Z

    if-nez v3, :cond_0

    .line 246
    const-string/jumbo v3, "com.android.internal"

    const-string/jumbo v4, "View"

    invoke-virtual {p0, v3, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getResourceDeclareStyleableIntArray(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v3

    sput-object v3, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    .line 247
    const/4 v3, 0x1

    sput-boolean v3, Lorg/telegram/ui/Components/RecyclerListView;->gotAttributes:Z

    .line 249
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 250
    .local v0, "a":Landroid/content/res/TypedArray;
    const-class v3, Landroid/view/View;

    const-string/jumbo v4, "initializeScrollbars"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/res/TypedArray;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 251
    .local v2, "initializeScrollbars":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "initializeScrollbars":Ljava/lang/reflect/Method;
    :goto_0
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView$2;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Components/RecyclerListView$2;-><init>(Lorg/telegram/ui/Components/RecyclerListView;)V

    invoke-super {p0, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V

    .line 289
    new-instance v3, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;

    invoke-direct {v3, p0, p1}, Lorg/telegram/ui/Components/RecyclerListView$RecyclerListViewItemClickListener;-><init>(Lorg/telegram/ui/Components/RecyclerListView;Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lorg/telegram/ui/Components/RecyclerListView;->addOnItemTouchListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnItemTouchListener;)V

    .line 290
    return-void

    .line 253
    :catch_0
    move-exception v1

    .line 254
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "tmessages"

    invoke-static {v3, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$002(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Landroid/view/GestureDetector;

    .prologue
    .line 28
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->mGestureDetector:Landroid/view/GestureDetector;

    return-object p1
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/RecyclerListView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/Components/RecyclerListView;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 28
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->instantClick:Z

    return v0
.end method

.method static synthetic access$400(Lorg/telegram/ui/Components/RecyclerListView;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 28
    iget v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I

    return v0
.end method

.method static synthetic access$402(Lorg/telegram/ui/Components/RecyclerListView;I)I
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildPosition:I

    return p1
.end method

.method static synthetic access$500(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$502(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 28
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$600(Lorg/telegram/ui/Components/RecyclerListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Lorg/telegram/ui/Components/RecyclerListView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 28
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$700(Lorg/telegram/ui/Components/RecyclerListView;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 28
    iget-boolean v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z

    return v0
.end method

.method static synthetic access$702(Lorg/telegram/ui/Components/RecyclerListView;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z

    return p1
.end method

.method static synthetic access$800(Lorg/telegram/ui/Components/RecyclerListView;)Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 28
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lorg/telegram/ui/Components/RecyclerListView;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/Components/RecyclerListView;

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty()V

    return-void
.end method

.method private checkIfEmpty()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 335
    iget-object v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x1

    .line 339
    .local v0, "emptyViewVisible":Z
    :goto_1
    iget-object v3, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    move v2, v1

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 340
    if-eqz v0, :cond_2

    const/4 v1, 0x4

    :cond_2
    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "emptyViewVisible":Z
    :cond_3
    move v0, v1

    .line 338
    goto :goto_1

    .line 339
    .restart local v0    # "emptyViewVisible":Z
    :cond_4
    const/16 v2, 0x8

    goto :goto_2
.end method


# virtual methods
.method public cancelClickRunnables(Z)V
    .locals 3
    .param p1, "uncheck"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 197
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->selectChildRunnable:Ljava/lang/Runnable;

    .line 199
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 200
    if-eqz p1, :cond_1

    .line 201
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 203
    :cond_1
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->currentChildView:Landroid/view/View;

    .line 205
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 207
    iput-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->clickRunnable:Ljava/lang/Runnable;

    .line 209
    :cond_3
    iput-boolean v2, p0, Lorg/telegram/ui/Components/RecyclerListView;->interceptedByChild:Z

    .line 210
    return-void
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    return-object v0
.end method

.method public getResourceDeclareStyleableIntArray(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 231
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ".R$styleable"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 232
    .local v0, "f":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 233
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :goto_0
    return-object v1

    .line 235
    :catch_0
    move-exception v1

    :cond_0
    move-object v1, v2

    .line 238
    goto :goto_0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateViews()V
    .locals 3

    .prologue
    .line 320
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v1

    .line 321
    .local v1, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 322
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 328
    iget-boolean v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->disallowInterceptTouchEvents:Z

    if-eqz v1, :cond_0

    .line 329
    invoke-virtual {p0, v0}, Lorg/telegram/ui/Components/RecyclerListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 331
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

    invoke-interface {v1, p1}, Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    .prologue
    .line 362
    invoke-virtual {p0}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 363
    .local v0, "oldAdapter":Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    if-eqz v0, :cond_0

    .line 364
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->observer:Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;)V

    .line 366
    :cond_0
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setAdapter(Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;)V

    .line 367
    if-eqz p1, :cond_1

    .line 368
    iget-object v1, p0, Lorg/telegram/ui/Components/RecyclerListView;->observer:Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v1}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;)V

    .line 370
    :cond_1
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty()V

    .line 371
    return-void
.end method

.method public setDisallowInterceptTouchEvents(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 357
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->disallowInterceptTouchEvents:Z

    .line 358
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 308
    iget-object v0, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 313
    :goto_0
    return-void

    .line 311
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->emptyView:Landroid/view/View;

    .line 312
    invoke-direct {p0}, Lorg/telegram/ui/Components/RecyclerListView;->checkIfEmpty()V

    goto :goto_0
.end method

.method public setInstantClick(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 353
    iput-boolean p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->instantClick:Z

    .line 354
    return-void
.end method

.method public setOnInterceptTouchListener(Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

    .prologue
    .line 349
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onInterceptTouchListener:Lorg/telegram/ui/Components/RecyclerListView$OnInterceptTouchListener;

    .line 350
    return-void
.end method

.method public setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    .prologue
    .line 300
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;

    .line 301
    return-void
.end method

.method public setOnItemLongClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    .prologue
    .line 304
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onItemLongClickListener:Lorg/telegram/ui/Components/RecyclerListView$OnItemLongClickListener;

    .line 305
    return-void
.end method

.method public setOnScrollListener(Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    .prologue
    .line 345
    iput-object p1, p0, Lorg/telegram/ui/Components/RecyclerListView;->onScrollListener:Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;

    .line 346
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1
    .param p1, "verticalScrollBarEnabled"    # Z

    .prologue
    .line 294
    sget-object v0, Lorg/telegram/ui/Components/RecyclerListView;->attributes:[I

    if-eqz v0, :cond_0

    .line 295
    invoke-super {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->setVerticalScrollBarEnabled(Z)V

    .line 297
    :cond_0
    return-void
.end method

.method public stopScroll()V
    .locals 1

    .prologue
    .line 376
    :try_start_0
    invoke-super {p0}, Lorg/telegram/messenger/support/widget/RecyclerView;->stopScroll()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 377
    :catch_0
    move-exception v0

    goto :goto_0
.end method
