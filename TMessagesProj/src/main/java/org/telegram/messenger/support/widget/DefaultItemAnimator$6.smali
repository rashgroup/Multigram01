.class Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;
.super Lorg/telegram/messenger/support/widget/DefaultItemAnimator$VpaListenerAdapter;
.source "DefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->animateMoveImpl(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

.field final synthetic val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic val$deltaX:I

.field final synthetic val$deltaY:I

.field final synthetic val$holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 1

    .prologue
    .line 286
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iput-object p2, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$deltaX:I

    iput p4, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$deltaY:I

    iput-object p5, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$VpaListenerAdapter;-><init>(Lorg/telegram/messenger/support/widget/DefaultItemAnimator$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 293
    iget v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$deltaX:I

    if-eqz v0, :cond_0

    .line 294
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 296
    :cond_0
    iget v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$deltaY:I

    if-eqz v0, :cond_1

    .line 297
    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 299
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$animation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 303
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->dispatchMoveFinished(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 304
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    # getter for: Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->access$1100(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 305
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    # invokes: Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->dispatchFinishedWhenDone()V
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->access$800(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;)V

    .line 306
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 289
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$6;->val$holder:Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->dispatchMoveStarting(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V

    .line 290
    return-void
.end method
