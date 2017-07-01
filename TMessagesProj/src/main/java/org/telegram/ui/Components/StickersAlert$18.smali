.class Lorg/telegram/ui/Components/StickersAlert$18;
.super Lorg/telegram/messenger/AnimatorListenerAdapterProxy;
.source "StickersAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/StickersAlert;->runShadowAnimation(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/StickersAlert;

.field final synthetic val$num:I

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/StickersAlert;IZ)V
    .locals 0

    .prologue
    .line 512
    iput-object p1, p0, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    iput p2, p0, Lorg/telegram/ui/Components/StickersAlert$18;->val$num:I

    iput-boolean p3, p0, Lorg/telegram/ui/Components/StickersAlert$18;->val$show:Z

    invoke-direct {p0}, Lorg/telegram/messenger/AnimatorListenerAdapterProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 525
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2100(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert$18;->val$num:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2100(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert$18;->val$num:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2100(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert$18;->val$num:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 528
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 515
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2100(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert$18;->val$num:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2100(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert$18;->val$num:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-boolean v0, p0, Lorg/telegram/ui/Components/StickersAlert$18;->val$show:Z

    if-nez v0, :cond_0

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->shadow:[Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2200(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert$18;->val$num:I

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 519
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Components/StickersAlert$18;->this$0:Lorg/telegram/ui/Components/StickersAlert;

    # getter for: Lorg/telegram/ui/Components/StickersAlert;->shadowAnimation:[Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lorg/telegram/ui/Components/StickersAlert;->access$2100(Lorg/telegram/ui/Components/StickersAlert;)[Landroid/animation/AnimatorSet;

    move-result-object v0

    iget v1, p0, Lorg/telegram/ui/Components/StickersAlert$18;->val$num:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 521
    :cond_1
    return-void
.end method
