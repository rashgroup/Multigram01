.class Lorg/telegram/ui/Components/ChatAttachAlert$10$1;
.super Ljava/lang/Object;
.source "ChatAttachAlert.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatAttachAlert$10;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/ChatAttachAlert$10;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert$10;)V
    .locals 0

    .prologue
    .line 668
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$10$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$10$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$10;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4100(Lorg/telegram/ui/Components/ChatAttachAlert;)Ljava/lang/Runnable;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 676
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$10$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$10;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/ChatAttachAlert;->hideHintRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4102(Lorg/telegram/ui/Components/ChatAttachAlert;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 675
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatAttachAlert$10$1;->this$1:Lorg/telegram/ui/Components/ChatAttachAlert$10;

    iget-object v0, v0, Lorg/telegram/ui/Components/ChatAttachAlert$10;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # invokes: Lorg/telegram/ui/Components/ChatAttachAlert;->hideHint()V
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$3200(Lorg/telegram/ui/Components/ChatAttachAlert;)V

    goto :goto_0
.end method
