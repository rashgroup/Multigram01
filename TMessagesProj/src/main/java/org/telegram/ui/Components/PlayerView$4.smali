.class Lorg/telegram/ui/Components/PlayerView$4;
.super Lorg/telegram/messenger/AnimatorListenerAdapterProxy;
.source "PlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/PlayerView;->checkPlayer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/PlayerView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/PlayerView;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lorg/telegram/ui/Components/PlayerView$4;->this$0:Lorg/telegram/ui/Components/PlayerView;

    invoke-direct {p0}, Lorg/telegram/messenger/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 186
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView$4;->this$0:Lorg/telegram/ui/Components/PlayerView;

    # getter for: Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/PlayerView;->access$100(Lorg/telegram/ui/Components/PlayerView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView$4;->this$0:Lorg/telegram/ui/Components/PlayerView;

    # getter for: Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/PlayerView;->access$100(Lorg/telegram/ui/Components/PlayerView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView$4;->this$0:Lorg/telegram/ui/Components/PlayerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/PlayerView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lorg/telegram/ui/Components/PlayerView$4;->this$0:Lorg/telegram/ui/Components/PlayerView;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/Components/PlayerView;->animatorSet:Landroid/animation/AnimatorSet;
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/PlayerView;->access$102(Lorg/telegram/ui/Components/PlayerView;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 190
    :cond_0
    return-void
.end method
