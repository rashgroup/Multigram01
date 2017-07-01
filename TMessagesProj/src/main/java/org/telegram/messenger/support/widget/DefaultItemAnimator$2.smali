.class Lorg/telegram/messenger/support/widget/DefaultItemAnimator$2;
.super Ljava/lang/Object;
.source "DefaultItemAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

.field final synthetic val$changes:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$2;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    iput-object p2, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 144
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;

    .line 145
    .local v0, "change":Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$2;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    # invokes: Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->animateChangeImpl(Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;)V
    invoke-static {v2, v0}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->access$200(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;)V

    goto :goto_0

    .line 147
    .end local v0    # "change":Lorg/telegram/messenger/support/widget/DefaultItemAnimator$ChangeInfo;
    :cond_0
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 148
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$2;->this$0:Lorg/telegram/messenger/support/widget/DefaultItemAnimator;

    # getter for: Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->mChangesList:Ljava/util/ArrayList;
    invoke-static {v2}, Lorg/telegram/messenger/support/widget/DefaultItemAnimator;->access$300(Lorg/telegram/messenger/support/widget/DefaultItemAnimator;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/messenger/support/widget/DefaultItemAnimator$2;->val$changes:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 149
    return-void
.end method
