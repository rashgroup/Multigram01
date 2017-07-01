.class Lorg/telegram/ui/PhotoViewer$16$2;
.super Lorg/telegram/messenger/AnimatorListenerAdapterProxy;
.source "PhotoViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$16;->needChangePanelVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$16;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$16;)V
    .locals 0

    .prologue
    .line 1647
    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$16$2;->this$1:Lorg/telegram/ui/PhotoViewer$16;

    invoke-direct {p0}, Lorg/telegram/messenger/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1650
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$16$2;->this$1:Lorg/telegram/ui/PhotoViewer$16;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$16$2;->this$1:Lorg/telegram/ui/PhotoViewer$16;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$6200(Lorg/telegram/ui/PhotoViewer;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1651
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$16$2;->this$1:Lorg/telegram/ui/PhotoViewer$16;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    # getter for: Lorg/telegram/ui/PhotoViewer;->mentionListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v0}, Lorg/telegram/ui/PhotoViewer;->access$1600(Lorg/telegram/ui/PhotoViewer;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setVisibility(I)V

    .line 1652
    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$16$2;->this$1:Lorg/telegram/ui/PhotoViewer$16;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$16;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/PhotoViewer;->mentionListAnimation:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$6202(Lorg/telegram/ui/PhotoViewer;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 1654
    :cond_0
    return-void
.end method
