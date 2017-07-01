.class Lorg/telegram/messenger/support/widget/DefaultItemAnimator$8;
.super Lorg/telegram/messenger/support/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->animateChangeImpl(Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

.field final synthetic val$changeInfo:Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;

.field final synthetic val$newView:Landroid/view/View;

.field final synthetic val$newViewAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 372
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$8;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iput-object p2, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$8;->val$changeInfo:Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;

    iput-object p3, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>(Lorg/telegram/messenger/support/widget/DefaultItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$8;->val$newViewAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 380
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 381
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 382
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$8;->val$newView:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 383
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$8;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$8;->val$changeInfo:Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->dispatchChangeFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)V

    .line 384
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$8;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    # getter for: Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->access$1300(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$8;->val$changeInfo:Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$8;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    # invokes: Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->access$800(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;)V

    .line 386
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 375
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$8;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$8;->val$changeInfo:Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;

    iget-object v1, v1, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;->newHolder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->dispatchChangeStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;Z)V

    .line 376
    return-void
.end method
