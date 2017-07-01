.class public Lorg/telegram/ui/StickerPreviewViewer;
.super Ljava/lang/Object;
.source "StickerPreviewViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/ui/StickerPreviewViewer;


# instance fields
.field private backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

.field private centerImage:Lorg/telegram/messenger/ImageReceiver;

.field private containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

.field private currentSticker:Lorg/telegram/tgnet/TLRPC$Document;

.field private currentStickerPreviewCell:Landroid/view/View;

.field private isVisible:Z

.field private keyboardHeight:I

.field private lastUpdateTime:J

.field private openStickerPreviewRunnable:Ljava/lang/Runnable;

.field private parentActivity:Landroid/app/Activity;

.field private showProgress:F

.field private startX:I

.field private startY:I

.field private windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private windowView:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/ui/StickerPreviewViewer;->Instance:Lorg/telegram/ui/StickerPreviewViewer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, 0x71000000

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    .line 60
    new-instance v0, Lorg/telegram/messenger/ImageReceiver;

    invoke-direct {v0}, Lorg/telegram/messenger/ImageReceiver;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    .line 64
    const/high16 v0, 0x43480000    # 200.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->keyboardHeight:I

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSticker:Lorg/telegram/tgnet/TLRPC$Document;

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/ui/StickerPreviewViewer;Landroid/graphics/Canvas;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;
    .param p1, "x1"    # Landroid/graphics/Canvas;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/telegram/ui/StickerPreviewViewer;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/ui/StickerPreviewViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Lorg/telegram/ui/StickerPreviewViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 36
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lorg/telegram/ui/StickerPreviewViewer;)Lorg/telegram/messenger/ImageReceiver;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/StickerPreviewViewer;

    .prologue
    .line 36
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/ui/StickerPreviewViewer;
    .locals 4

    .prologue
    .line 70
    sget-object v0, Lorg/telegram/ui/StickerPreviewViewer;->Instance:Lorg/telegram/ui/StickerPreviewViewer;

    .line 71
    .local v0, "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    if-nez v0, :cond_1

    .line 72
    const-class v3, Lorg/telegram/ui/PhotoViewer;

    monitor-enter v3

    .line 73
    :try_start_0
    sget-object v0, Lorg/telegram/ui/StickerPreviewViewer;->Instance:Lorg/telegram/ui/StickerPreviewViewer;

    .line 74
    if-nez v0, :cond_0

    .line 75
    new-instance v1, Lorg/telegram/ui/StickerPreviewViewer;

    invoke-direct {v1}, Lorg/telegram/ui/StickerPreviewViewer;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    .local v1, "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    :try_start_1
    sput-object v1, Lorg/telegram/ui/StickerPreviewViewer;->Instance:Lorg/telegram/ui/StickerPreviewViewer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 77
    .end local v1    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 79
    :cond_1
    return-object v0

    .line 77
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    .restart local v1    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    .restart local v0    # "localInstance":Lorg/telegram/ui/StickerPreviewViewer;
    goto :goto_0
.end method

.method private onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    const v12, 0x3f4ccccd    # 0.8f

    const/high16 v11, 0x3f800000    # 1.0f

    .line 403
    iget-object v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    if-nez v7, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    const/high16 v8, 0x43340000    # 180.0f

    iget v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 407
    iget-object v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    iget-object v8, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v8}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getWidth()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getHeight()I

    move-result v9

    invoke-virtual {v7, v10, v10, v8, v9}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 408
    iget-object v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->backgroundDrawable:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 410
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 411
    iget-object v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v7}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getWidth()I

    move-result v7

    iget-object v8, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v8}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getHeight()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    const v8, 0x3fe66666    # 1.8f

    div-float/2addr v7, v8

    float-to-int v6, v7

    .line 412
    .local v6, "size":I
    iget-object v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v7}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    div-int/lit8 v8, v6, 0x2

    sget v9, Lorg/telegram/messenger/AndroidUtilities;->statusBarHeight:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v9}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->getHeight()I

    move-result v9

    iget v10, p0, Lorg/telegram/ui/StickerPreviewViewer;->keyboardHeight:I

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 413
    iget-object v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7}, Lorg/telegram/messenger/ImageReceiver;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 414
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 415
    iget v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    mul-float/2addr v7, v12

    div-float v1, v7, v12

    .line 416
    .local v1, "scale":F
    int-to-float v7, v6

    mul-float/2addr v7, v1

    float-to-int v6, v7

    .line 417
    iget-object v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget v8, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    invoke-virtual {v7, v8}, Lorg/telegram/messenger/ImageReceiver;->setAlpha(F)V

    .line 418
    iget-object v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    neg-int v8, v6

    div-int/lit8 v8, v8, 0x2

    neg-int v9, v6

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v7, v8, v9, v6, v6}, Lorg/telegram/messenger/ImageReceiver;->setImageCoords(IIII)V

    .line 419
    iget-object v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v7, p1}, Lorg/telegram/messenger/ImageReceiver;->draw(Landroid/graphics/Canvas;)Z

    .line 421
    .end local v1    # "scale":F
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 422
    iget v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    cmpl-float v7, v7, v11

    if-eqz v7, :cond_0

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 424
    .local v4, "newTime":J
    iget-wide v8, p0, Lorg/telegram/ui/StickerPreviewViewer;->lastUpdateTime:J

    sub-long v2, v4, v8

    .line 425
    .local v2, "dt":J
    iput-wide v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->lastUpdateTime:J

    .line 426
    iget v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    long-to-float v8, v2

    const/high16 v9, 0x43160000    # 150.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iput v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    .line 427
    iget-object v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v7}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->invalidate()V

    .line 428
    iget v7, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    cmpl-float v7, v7, v11

    if-lez v7, :cond_0

    .line 429
    iput v11, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4

    .prologue
    .line 361
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    .line 365
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 366
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    .line 367
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->unlockOrientation(Landroid/app/Activity;)V

    .line 368
    new-instance v2, Lorg/telegram/ui/StickerPreviewViewer$4;

    invoke-direct {v2, p0}, Lorg/telegram/ui/StickerPreviewViewer$4;-><init>(Lorg/telegram/ui/StickerPreviewViewer;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 375
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 376
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 377
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    .end local v1    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 385
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    .line 386
    iput-object v4, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 387
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    if-nez v2, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 392
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 393
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 395
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_1
    sput-object v4, Lorg/telegram/ui/StickerPreviewViewer;->Instance:Lorg/telegram/ui/StickerPreviewViewer;

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 357
    iget-boolean v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;I)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "listView"    # Landroid/view/View;
    .param p3, "height"    # I

    .prologue
    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v15

    if-nez v15, :cond_c

    .line 208
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    float-to-int v13, v15

    .line 209
    .local v13, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v15

    float-to-int v14, v15

    .line 210
    .local v14, "y":I
    const/4 v7, 0x0

    .line 211
    .local v7, "count":I
    move-object/from16 v0, p2

    instance-of v15, v0, Landroid/widget/AbsListView;

    if-eqz v15, :cond_2

    move-object/from16 v15, p2

    .line 212
    check-cast v15, Landroid/widget/AbsListView;

    invoke-virtual {v15}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    .line 216
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_1
    if-ge v4, v7, :cond_c

    .line 217
    const/4 v12, 0x0

    .line 218
    .local v12, "view":Landroid/view/View;
    move-object/from16 v0, p2

    instance-of v15, v0, Landroid/widget/AbsListView;

    if-eqz v15, :cond_3

    move-object/from16 v15, p2

    .line 219
    check-cast v15, Landroid/widget/AbsListView;

    invoke-virtual {v15, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 223
    :cond_1
    :goto_2
    if-nez v12, :cond_4

    .line 224
    const/4 v15, 0x0

    .line 280
    .end local v4    # "a":I
    .end local v7    # "count":I
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "x":I
    .end local v14    # "y":I
    :goto_3
    return v15

    .line 213
    .restart local v7    # "count":I
    .restart local v13    # "x":I
    .restart local v14    # "y":I
    :cond_2
    move-object/from16 v0, p2

    instance-of v15, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v15, :cond_0

    move-object/from16 v15, p2

    .line 214
    check-cast v15, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v7

    goto :goto_0

    .line 220
    .restart local v4    # "a":I
    .restart local v12    # "view":Landroid/view/View;
    :cond_3
    move-object/from16 v0, p2

    instance-of v15, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v15, :cond_1

    move-object/from16 v15, p2

    .line 221
    check-cast v15, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v15, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    goto :goto_2

    .line 226
    :cond_4
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v11

    .line 227
    .local v11, "top":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 228
    .local v5, "bottom":I
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v8

    .line 229
    .local v8, "left":I
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v10

    .line 230
    .local v10, "right":I
    if-gt v11, v14, :cond_5

    if-lt v5, v14, :cond_5

    if-gt v8, v13, :cond_5

    if-ge v10, v13, :cond_6

    .line 216
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 233
    :cond_6
    const/4 v9, 0x0

    .line 234
    .local v9, "ok":Z
    instance-of v15, v12, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v15, :cond_8

    move-object v15, v12

    .line 235
    check-cast v15, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->showingBitmap()Z

    move-result v9

    .line 242
    :cond_7
    :goto_4
    if-nez v9, :cond_b

    .line 243
    const/4 v15, 0x0

    goto :goto_3

    .line 236
    :cond_8
    instance-of v15, v12, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v15, :cond_9

    move-object v15, v12

    .line 237
    check-cast v15, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v15}, Lorg/telegram/ui/Cells/StickerCell;->showingBitmap()Z

    move-result v9

    goto :goto_4

    .line 238
    :cond_9
    instance-of v15, v12, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v15, :cond_7

    move-object v6, v12

    .line 239
    check-cast v6, Lorg/telegram/ui/Cells/ContextLinkCell;

    .line 240
    .local v6, "cell":Lorg/telegram/ui/Cells/ContextLinkCell;
    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ContextLinkCell;->isSticker()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-virtual {v6}, Lorg/telegram/ui/Cells/ContextLinkCell;->showingBitmap()Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v9, 0x1

    :goto_5
    goto :goto_4

    :cond_a
    const/4 v9, 0x0

    goto :goto_5

    .line 245
    .end local v6    # "cell":Lorg/telegram/ui/Cells/ContextLinkCell;
    :cond_b
    move-object/from16 v0, p0

    iput v13, v0, Lorg/telegram/ui/StickerPreviewViewer;->startX:I

    .line 246
    move-object/from16 v0, p0

    iput v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->startY:I

    .line 247
    move-object/from16 v0, p0

    iput-object v12, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    .line 248
    new-instance v15, Lorg/telegram/ui/StickerPreviewViewer$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v15, v0, v1, v2}, Lorg/telegram/ui/StickerPreviewViewer$2;-><init>(Lorg/telegram/ui/StickerPreviewViewer;Landroid/view/View;I)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    .line 276
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    const-wide/16 v16, 0xc8

    invoke-static/range {v15 .. v17}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 277
    const/4 v15, 0x1

    goto/16 :goto_3

    .line 280
    .end local v4    # "a":I
    .end local v5    # "bottom":I
    .end local v7    # "count":I
    .end local v8    # "left":I
    .end local v9    # "ok":Z
    .end local v10    # "right":I
    .end local v11    # "top":I
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_3
.end method

.method public onTouch(Landroid/view/MotionEvent;Landroid/view/View;ILjava/lang/Object;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "listView"    # Landroid/view/View;
    .param p3, "height"    # I
    .param p4, "listener"    # Ljava/lang/Object;

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    if-nez v14, :cond_0

    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/StickerPreviewViewer;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 101
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x3

    if-eq v14, v15, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x6

    if-ne v14, v15, :cond_7

    .line 102
    :cond_1
    new-instance v14, Lorg/telegram/ui/StickerPreviewViewer$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v14, v0, v1, v2}, Lorg/telegram/ui/StickerPreviewViewer$1;-><init>(Lorg/telegram/ui/StickerPreviewViewer;Landroid/view/View;Ljava/lang/Object;)V

    const-wide/16 v16, 0x96

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 112
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v14, :cond_3

    .line 113
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 114
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    .line 203
    :cond_2
    :goto_0
    const/4 v14, 0x0

    :goto_1
    return v14

    .line 115
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/StickerPreviewViewer;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 116
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/StickerPreviewViewer;->close()V

    .line 117
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    if-eqz v14, :cond_2

    .line 118
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v14, :cond_5

    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    .line 125
    :cond_4
    :goto_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    goto :goto_0

    .line 120
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v14, :cond_6

    .line 121
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_2

    .line 122
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v14, :cond_4

    .line 123
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto :goto_2

    .line 128
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    if-eqz v14, :cond_2

    .line 129
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/ui/StickerPreviewViewer;->isVisible()Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_10

    .line 131
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v14

    float-to-int v12, v14

    .line 132
    .local v12, "x":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v14

    float-to-int v13, v14

    .line 133
    .local v13, "y":I
    const/4 v6, 0x0

    .line 134
    .local v6, "count":I
    move-object/from16 v0, p2

    instance-of v14, v0, Landroid/widget/AbsListView;

    if-eqz v14, :cond_a

    move-object/from16 v14, p2

    .line 135
    check-cast v14, Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 139
    :cond_8
    :goto_3
    const/4 v4, 0x0

    .local v4, "a":I
    :goto_4
    if-ge v4, v6, :cond_10

    .line 140
    const/4 v11, 0x0

    .line 141
    .local v11, "view":Landroid/view/View;
    move-object/from16 v0, p2

    instance-of v14, v0, Landroid/widget/AbsListView;

    if-eqz v14, :cond_b

    move-object/from16 v14, p2

    .line 142
    check-cast v14, Landroid/widget/AbsListView;

    invoke-virtual {v14, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 146
    :cond_9
    :goto_5
    if-nez v11, :cond_c

    .line 147
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 136
    .end local v4    # "a":I
    .end local v11    # "view":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p2

    instance-of v14, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v14, :cond_8

    move-object/from16 v14, p2

    .line 137
    check-cast v14, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v14}, Lorg/telegram/ui/Components/RecyclerListView;->getChildCount()I

    move-result v6

    goto :goto_3

    .line 143
    .restart local v4    # "a":I
    .restart local v11    # "view":Landroid/view/View;
    :cond_b
    move-object/from16 v0, p2

    instance-of v14, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v14, :cond_9

    move-object/from16 v14, p2

    .line 144
    check-cast v14, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v14, v4}, Lorg/telegram/ui/Components/RecyclerListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    goto :goto_5

    .line 149
    :cond_c
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v10

    .line 150
    .local v10, "top":I
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 151
    .local v5, "bottom":I
    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v7

    .line 152
    .local v7, "left":I
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v9

    .line 153
    .local v9, "right":I
    if-gt v10, v13, :cond_d

    if-lt v5, v13, :cond_d

    if-gt v7, v12, :cond_d

    if-ge v9, v12, :cond_e

    .line 139
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 156
    :cond_e
    const/4 v8, 0x0

    .line 157
    .local v8, "ok":Z
    instance-of v14, v11, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v14, :cond_11

    .line 158
    const/4 v8, 0x1

    .line 164
    :cond_f
    :goto_6
    if-eqz v8, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    if-ne v11, v14, :cond_13

    .line 189
    .end local v4    # "a":I
    .end local v5    # "bottom":I
    .end local v6    # "count":I
    .end local v7    # "left":I
    .end local v8    # "ok":Z
    .end local v9    # "right":I
    .end local v10    # "top":I
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_10
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 159
    .restart local v4    # "a":I
    .restart local v5    # "bottom":I
    .restart local v6    # "count":I
    .restart local v7    # "left":I
    .restart local v8    # "ok":Z
    .restart local v9    # "right":I
    .restart local v10    # "top":I
    .restart local v11    # "view":Landroid/view/View;
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_11
    instance-of v14, v11, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v14, :cond_12

    .line 160
    const/4 v8, 0x1

    goto :goto_6

    .line 161
    :cond_12
    instance-of v14, v11, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v14, :cond_f

    move-object v14, v11

    .line 162
    check-cast v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/ContextLinkCell;->isSticker()Z

    move-result v8

    goto :goto_6

    .line 167
    :cond_13
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v14, :cond_16

    .line 168
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    .line 174
    :cond_14
    :goto_7
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    .line 175
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer;->setKeyboardHeight(I)V

    .line 176
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v14, :cond_18

    .line 177
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerEmojiCell;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    .line 186
    :cond_15
    :goto_8
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 169
    :cond_16
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v14, :cond_17

    .line 170
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_7

    .line 171
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v14, :cond_14

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto :goto_7

    .line 179
    :cond_18
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v14, :cond_19

    .line 180
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/StickerCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/StickerCell;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_8

    .line 182
    :cond_19
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v14, v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v14, :cond_15

    .line 183
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v14}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v14, Lorg/telegram/ui/Cells/ContextLinkCell;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto :goto_8

    .line 190
    .end local v4    # "a":I
    .end local v5    # "bottom":I
    .end local v6    # "count":I
    .end local v7    # "left":I
    .end local v8    # "ok":Z
    .end local v9    # "right":I
    .end local v10    # "top":I
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v14, :cond_2

    .line 191
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1b

    .line 192
    move-object/from16 v0, p0

    iget v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->startX:I

    int-to-float v14, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    sub-float/2addr v14, v15

    float-to-double v14, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/telegram/ui/StickerPreviewViewer;->startY:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    sub-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v14

    const/high16 v16, 0x41200000    # 10.0f

    invoke-static/range {v16 .. v16}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-lez v14, :cond_2

    .line 193
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 194
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    goto/16 :goto_0

    .line 197
    :cond_1b
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v14}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 198
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    goto/16 :goto_0
.end method

.method public open(Lorg/telegram/tgnet/TLRPC$Document;)V
    .locals 9
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 330
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 334
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v5, "webp"

    move-object v1, p1

    move-object v4, v2

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/ImageReceiver;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 335
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentSticker:Lorg/telegram/tgnet/TLRPC$Document;

    .line 336
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->invalidate()V

    .line 338
    iget-boolean v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    if-nez v0, :cond_0

    .line 339
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->lockOrientation(Landroid/app/Activity;)V

    .line 341
    :try_start_0
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 343
    .local v8, "wm":Landroid/view/WindowManager;
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-interface {v8, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v8    # "wm":Landroid/view/WindowManager;
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 349
    .restart local v8    # "wm":Landroid/view/WindowManager;
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v8, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iput-boolean v6, p0, Lorg/telegram/ui/StickerPreviewViewer;->isVisible:Z

    .line 351
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->showProgress:F

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->lastUpdateTime:J

    goto :goto_0

    .line 345
    .end local v8    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v7

    .line 346
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "tmessages"

    invoke-static {v0, v7}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->cancelRunOnUIThread(Ljava/lang/Runnable;)V

    .line 85
    iput-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v0, :cond_3

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    .line 95
    :cond_1
    :goto_0
    iput-object v2, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    .line 97
    :cond_2
    return-void

    .line 90
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v0, :cond_4

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto :goto_0

    .line 92
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto :goto_0
.end method

.method public setKeyboardHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 326
    iput p1, p0, Lorg/telegram/ui/StickerPreviewViewer;->keyboardHeight:I

    .line 327
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 284
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    if-ne v0, p1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 287
    :cond_0
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer;->parentActivity:Landroid/app/Activity;

    .line 289
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    .line 290
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 291
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 292
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 293
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 296
    :cond_1
    new-instance v0, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;-><init>(Lorg/telegram/ui/StickerPreviewViewer;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    .line 297
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->setFocusable(Z)V

    .line 298
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    const/16 v2, 0x33

    invoke-static {v4, v4, v2}, Lorg/telegram/ui/Components/LayoutHelper;->createFrame(III)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 299
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    new-instance v1, Lorg/telegram/ui/StickerPreviewViewer$3;

    invoke-direct {v1, p0}, Lorg/telegram/ui/StickerPreviewViewer$3;-><init>(Lorg/telegram/ui/StickerPreviewViewer;)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 309
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 310
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 311
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 312
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 313
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 314
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x63

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 316
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, -0x7ffffff8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 320
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setAspectFit(Z)V

    .line 321
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    invoke-virtual {v0, v3}, Lorg/telegram/messenger/ImageReceiver;->setInvalidateAll(Z)V

    .line 322
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->centerImage:Lorg/telegram/messenger/ImageReceiver;

    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer;->containerView:Lorg/telegram/ui/StickerPreviewViewer$FrameLayoutDrawer;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/ImageReceiver;->setParentView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 318
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer;->windowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1
.end method
