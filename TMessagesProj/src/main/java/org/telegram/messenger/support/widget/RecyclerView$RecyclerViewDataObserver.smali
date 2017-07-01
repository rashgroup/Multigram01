.class Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;
.super Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/RecyclerView;


# direct methods
.method private constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 4261
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView;Lorg/telegram/messenger/support/widget/RecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "x1"    # Lorg/telegram/messenger/support/widget/RecyclerView$1;

    .prologue
    .line 4261
    invoke-direct {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 4264
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4265
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapter:Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$3100(Lorg/telegram/messenger/support/widget/RecyclerView;)Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4269
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 4270
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # invokes: Lorg/telegram/messenger/support/widget/RecyclerView;->setDataSetChangedAfterLayout()V
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4000(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    .line 4275
    :goto_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4276
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    .line 4278
    :cond_0
    return-void

    .line 4272
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mStructureChanged:Z
    invoke-static {v0, v2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1802(Lorg/telegram/messenger/support/widget/RecyclerView$State;Z)Z

    .line 4273
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # invokes: Lorg/telegram/messenger/support/widget/RecyclerView;->setDataSetChangedAfterLayout()V
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4000(Lorg/telegram/messenger/support/widget/RecyclerView;)V

    goto :goto_0
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 4282
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4283
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->onItemRangeChanged(IILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4284
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4286
    :cond_0
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 4290
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4291
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/AdapterHelper;->onItemRangeInserted(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4292
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4294
    :cond_0
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .prologue
    .line 4306
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4307
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/AdapterHelper;->onItemRangeMoved(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4308
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4310
    :cond_0
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 4298
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4299
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterHelper:Lorg/telegram/messenger/support/widget/AdapterHelper;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/AdapterHelper;->onItemRangeRemoved(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4300
    invoke-virtual {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->triggerUpdateProcessor()V

    .line 4302
    :cond_0
    return-void
.end method

.method triggerUpdateProcessor()V
    .locals 2

    .prologue
    .line 4313
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mPostUpdatesOnAnimation:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4100(Lorg/telegram/messenger/support/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mHasFixedSize:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4200(Lorg/telegram/messenger/support/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mIsAttached:Z
    invoke-static {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4300(Lorg/telegram/messenger/support/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4314
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    # getter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4400(Lorg/telegram/messenger/support/widget/RecyclerView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 4319
    :goto_0
    return-void

    .line 4316
    :cond_0
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/messenger/support/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z
    invoke-static {v0, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->access$4502(Lorg/telegram/messenger/support/widget/RecyclerView;Z)Z

    .line 4317
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$RecyclerViewDataObserver;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/widget/RecyclerView;->requestLayout()V

    goto :goto_0
.end method
