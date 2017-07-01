.class Lorg/telegram/ui/Components/SizeNotifierFrameLayout$1;
.super Ljava/lang/Object;
.source "SizeNotifierFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->notifyHeightChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

.field final synthetic val$isWidthGreater:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;Z)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$1;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$1;->val$isWidthGreater:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$1;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    # getter for: Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$1;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    # getter for: Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$1;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayout;

    # getter for: Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->keyboardHeight:I
    invoke-static {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout;->access$100(Lorg/telegram/ui/Components/SizeNotifierFrameLayout;)I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$1;->val$isWidthGreater:Z

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayout$SizeNotifierFrameLayoutDelegate;->onSizeChanged(IZ)V

    .line 82
    :cond_0
    return-void
.end method
