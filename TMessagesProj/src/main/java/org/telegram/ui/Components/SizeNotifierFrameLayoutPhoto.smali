.class public Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;
.super Landroid/widget/FrameLayout;
.source "SizeNotifierFrameLayoutPhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;
    }
.end annotation


# instance fields
.field private delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;

.field private keyboardHeight:I

.field private rect:Landroid/graphics/Rect;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->rect:Landroid/graphics/Rect;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;)Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    .prologue
    .line 19
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;)I
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    .prologue
    .line 19
    iget v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->keyboardHeight:I

    return v0
.end method


# virtual methods
.method public getKeyboardHeight()I
    .locals 6

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "rootView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getViewInset(Landroid/view/View;)I

    move-result v5

    sub-int v3, v4, v5

    .line 47
    .local v3, "usableViewHeight":I
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->rect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 48
    iget-object v4, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->rect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 49
    .local v2, "top":I
    sget-object v4, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v2

    sub-int v1, v4, v3

    .line 50
    .local v1, "size":I
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v4

    if-gt v1, v4, :cond_0

    .line 51
    const/4 v1, 0x0

    .line 53
    :cond_0
    return v1
.end method

.method public notifyHeightChanged()V
    .locals 3

    .prologue
    .line 57
    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->getKeyboardHeight()I

    move-result v1

    iput v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->keyboardHeight:I

    .line 59
    sget-object v1, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sget-object v2, Lorg/telegram/messenger/AndroidUtilities;->displaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le v1, v2, :cond_1

    const/4 v0, 0x1

    .line 60
    .local v0, "isWidthGreater":Z
    :goto_0
    new-instance v1, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$1;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$1;-><init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Z)V

    invoke-virtual {p0, v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->post(Ljava/lang/Runnable;)Z

    .line 69
    .end local v0    # "isWidthGreater":Z
    :cond_0
    return-void

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 40
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 41
    invoke-virtual {p0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->notifyHeightChanged()V

    .line 42
    return-void
.end method

.method public setDelegate(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;

    .prologue
    .line 35
    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;

    .line 36
    return-void
.end method
