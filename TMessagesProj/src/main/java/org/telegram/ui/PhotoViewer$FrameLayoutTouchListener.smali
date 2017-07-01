.class Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;
.super Landroid/widget/FrameLayout;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameLayoutTouchListener"
.end annotation


# instance fields
.field private attachRunnable:Ljava/lang/Runnable;

.field private attachedToWindow:Z

.field final synthetic this$0:Lorg/telegram/ui/PhotoViewer;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PhotoViewer;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 550
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;->this$0:Lorg/telegram/ui/PhotoViewer;

    .line 551
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 552
    return-void
.end method

.method static synthetic access$8700(Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;)Z
    .locals 1
    .param p0, "x0"    # Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;

    .prologue
    .line 545
    iget-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;->attachedToWindow:Z

    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 567
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;->attachedToWindow:Z

    .line 569
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 573
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 574
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/PhotoViewer$FrameLayoutTouchListener;->attachedToWindow:Z

    .line 575
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 561
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 562
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lorg/telegram/ui/PhotoViewer;->onLayout(ZIIII)V
    invoke-static/range {v0 .. v5}, Lorg/telegram/ui/PhotoViewer;->access$1400(Lorg/telegram/ui/PhotoViewer;ZIIII)V

    .line 563
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 556
    invoke-static {}, Lorg/telegram/ui/PhotoViewer;->getInstance()Lorg/telegram/ui/PhotoViewer;

    move-result-object v0

    # invokes: Lorg/telegram/ui/PhotoViewer;->onTouchEvent(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lorg/telegram/ui/PhotoViewer;->access$1300(Lorg/telegram/ui/PhotoViewer;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
