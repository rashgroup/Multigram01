.class Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$1;
.super Ljava/lang/Object;
.source "SizeNotifierFrameLayoutPhoto.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->notifyHeightChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

.field final synthetic val$isWidthGreater:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;Z)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$1;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    iput-boolean p2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$1;->val$isWidthGreater:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$1;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    # getter for: Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;)Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$1;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    # getter for: Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->delegate:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->access$000(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;)Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$1;->this$0:Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;

    # getter for: Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->keyboardHeight:I
    invoke-static {v1}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;->access$100(Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto;)I

    move-result v1

    iget-boolean v2, p0, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$1;->val$isWidthGreater:Z

    invoke-interface {v0, v1, v2}, Lorg/telegram/ui/Components/SizeNotifierFrameLayoutPhoto$SizeNotifierFrameLayoutPhotoDelegate;->onSizeChanged(IZ)V

    .line 66
    :cond_0
    return-void
.end method
