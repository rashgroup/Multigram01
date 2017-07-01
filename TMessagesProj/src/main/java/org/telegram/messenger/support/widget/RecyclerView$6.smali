.class Lorg/telegram/messenger/support/widget/RecyclerView$6;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lorg/telegram/messenger/support/widget/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/widget/RecyclerView;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/support/widget/RecyclerView;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchUpdate(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V
    .locals 5
    .param p1, "op"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 727
    iget v0, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->cmd:I

    packed-switch v0, :pswitch_data_0

    .line 742
    :goto_0
    :pswitch_0
    return-void

    .line 729
    :pswitch_1
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget v2, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onItemsAdded(Lorg/telegram/messenger/support/widget/RecyclerView;II)V

    goto :goto_0

    .line 732
    :pswitch_2
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget v2, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onItemsRemoved(Lorg/telegram/messenger/support/widget/RecyclerView;II)V

    goto :goto_0

    .line 735
    :pswitch_3
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget v2, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object v4, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lorg/telegram/messenger/support/widget/RecyclerView;IILjava/lang/Object;)V

    goto :goto_0

    .line 739
    :pswitch_4
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mLayout:Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget v2, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v3, p1, Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;->itemCount:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutManager;->onItemsMoved(Lorg/telegram/messenger/support/widget/RecyclerView;III)V

    goto :goto_0

    .line 727
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public findViewHolder(I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 687
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lorg/telegram/messenger/support/widget/RecyclerView;->findViewHolderForPosition(IZ)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 688
    .local v0, "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_1

    move-object v0, v1

    .line 699
    .end local v0    # "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_0
    :goto_0
    return-object v0

    .line 693
    .restart local v0    # "vh":Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    :cond_1
    iget-object v2, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v2, v2, Lorg/telegram/messenger/support/widget/RecyclerView;->mChildHelper:Lorg/telegram/messenger/support/widget/ChildHelper;

    iget-object v3, v0, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/support/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 697
    goto :goto_0
.end method

.method public markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .prologue
    .line 717
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lorg/telegram/messenger/support/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    .line 718
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsChanged:Z

    .line 719
    return-void
.end method

.method public offsetPositionsForAdd(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 751
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    .line 752
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 753
    return-void
.end method

.method public offsetPositionsForMove(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 757
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    .line 759
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 760
    return-void
.end method

.method public offsetPositionsForRemovingInvisible(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    const/4 v1, 0x1

    .line 704
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 705
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iput-boolean v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 706
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    iget-object v0, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mState:Lorg/telegram/messenger/support/widget/RecyclerView$State;

    # += operator for: Lorg/telegram/messenger/support/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I
    invoke-static {v0, p2}, Lorg/telegram/messenger/support/widget/RecyclerView$State;->access$1712(Lorg/telegram/messenger/support/widget/RecyclerView$State;I)I

    .line 707
    return-void
.end method

.method public offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .prologue
    .line 711
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lorg/telegram/messenger/support/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    .line 712
    iget-object v0, p0, Lorg/telegram/messenger/support/widget/RecyclerView$6;->this$0:Lorg/telegram/messenger/support/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/messenger/support/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 713
    return-void
.end method

.method public onDispatchFirstPass(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 723
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$6;->dispatchUpdate(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    .line 724
    return-void
.end method

.method public onDispatchSecondPass(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V
    .locals 0
    .param p1, "op"    # Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;

    .prologue
    .line 746
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/support/widget/RecyclerView$6;->dispatchUpdate(Lorg/telegram/messenger/support/widget/AdapterHelper$UpdateOp;)V

    .line 747
    return-void
.end method
