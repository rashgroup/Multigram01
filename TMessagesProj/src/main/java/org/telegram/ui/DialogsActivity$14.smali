.class Lorg/telegram/ui/DialogsActivity$14;
.super Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;
.source "DialogsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;

.field final synthetic val$toolBarEnabled:Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;Z)V
    .locals 0

    .prologue
    .line 982
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    iput-boolean p2, p0, Lorg/telegram/ui/DialogsActivity$14;->val$toolBarEnabled:Z

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Lorg/telegram/messenger/support/widget/RecyclerView;I)V
    .locals 1
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 985
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searching:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchWas:Z
    invoke-static {v0}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 988
    :cond_0
    return-void
.end method

.method public onScrolled(Lorg/telegram/messenger/support/widget/RecyclerView;II)V
    .locals 12
    .param p1, "recyclerView"    # Lorg/telegram/messenger/support/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .line 992
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 993
    .local v2, "firstVisibleItem":I
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/lit8 v7, v8, 0x1

    .line 994
    .local v7, "visibleItemCount":I
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    .line 996
    .local v6, "totalItemCount":I
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searching:Z
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$000(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->searchWas:Z
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$1100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 997
    if-lez v7, :cond_0

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v8

    add-int/lit8 v9, v6, -0x1

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$1500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->isMessagesSearchEndReached()Z

    move-result v8

    if-nez v8, :cond_0

    .line 998
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$1500(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadMoreSearchMessages()V

    .line 1055
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    if-lez v7, :cond_2

    .line 1003
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->layoutManager:Lorg/telegram/messenger/support/widget/LinearLayoutManager;
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/messenger/support/widget/LinearLayoutManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/messenger/support/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v8

    iget-object v9, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->getDialogsArray()Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/DialogsActivity;->access$2500(Lorg/telegram/ui/DialogsActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0xa

    if-lt v8, v9, :cond_2

    .line 1004
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    const/4 v10, -0x1

    const/16 v11, 0x64

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-boolean v8, v8, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    if-nez v8, :cond_5

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v9, v10, v11, v8}, Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V

    .line 1008
    :cond_2
    iget-boolean v8, p0, Lorg/telegram/ui/DialogsActivity$14;->val$toolBarEnabled:Z

    if-nez v8, :cond_a

    .line 1009
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->floatingButton:Landroid/widget/ImageView;
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$700(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/ImageView;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 1010
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1011
    .local v4, "topChild":Landroid/view/View;
    const/4 v1, 0x0

    .line 1012
    .local v1, "firstViewTop":I
    if-eqz v4, :cond_3

    .line 1013
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1016
    :cond_3
    const/4 v0, 0x1

    .line 1017
    .local v0, "changed":Z
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->prevPosition:I
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v8

    if-ne v8, v2, :cond_8

    .line 1018
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->prevTop:I
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$3000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v8

    sub-int v5, v8, v1

    .line 1019
    .local v5, "topDelta":I
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->prevTop:I
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$3000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v8

    if-ge v1, v8, :cond_6

    const/4 v3, 0x1

    .line 1020
    .local v3, "goingDown":Z
    :goto_2
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_7

    const/4 v0, 0x1

    .line 1024
    .end local v5    # "topDelta":I
    :goto_3
    if-eqz v0, :cond_4

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->scrollUpdated:Z
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$3100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1025
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->hideFloatingButton(Z)V
    invoke-static {v8, v3}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1027
    :cond_4
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # setter for: Lorg/telegram/ui/DialogsActivity;->prevPosition:I
    invoke-static {v8, v2}, Lorg/telegram/ui/DialogsActivity;->access$2902(Lorg/telegram/ui/DialogsActivity;I)I

    .line 1028
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # setter for: Lorg/telegram/ui/DialogsActivity;->prevTop:I
    invoke-static {v8, v1}, Lorg/telegram/ui/DialogsActivity;->access$3002(Lorg/telegram/ui/DialogsActivity;I)I

    .line 1029
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v9, 0x1

    # setter for: Lorg/telegram/ui/DialogsActivity;->scrollUpdated:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/DialogsActivity;->access$3102(Lorg/telegram/ui/DialogsActivity;Z)Z

    goto/16 :goto_0

    .line 1004
    .end local v0    # "changed":Z
    .end local v1    # "firstViewTop":I
    .end local v3    # "goingDown":Z
    .end local v4    # "topChild":Landroid/view/View;
    :cond_5
    const/4 v8, 0x0

    goto :goto_1

    .line 1019
    .restart local v0    # "changed":Z
    .restart local v1    # "firstViewTop":I
    .restart local v4    # "topChild":Landroid/view/View;
    .restart local v5    # "topDelta":I
    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 1020
    .restart local v3    # "goingDown":Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 1022
    .end local v3    # "goingDown":Z
    .end local v5    # "topDelta":I
    :cond_8
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->prevPosition:I
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v8

    if-le v2, v8, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "goingDown":Z
    :goto_4
    goto :goto_3

    .end local v3    # "goingDown":Z
    :cond_9
    const/4 v3, 0x0

    goto :goto_4

    .line 1032
    .end local v0    # "changed":Z
    .end local v1    # "firstViewTop":I
    .end local v4    # "topChild":Landroid/view/View;
    :cond_a
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->toolBar:Landroid/widget/LinearLayout;
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$900(Lorg/telegram/ui/DialogsActivity;)Landroid/widget/LinearLayout;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    .line 1033
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lorg/telegram/messenger/support/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1034
    .restart local v4    # "topChild":Landroid/view/View;
    const/4 v1, 0x0

    .line 1035
    .restart local v1    # "firstViewTop":I
    if-eqz v4, :cond_b

    .line 1036
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v1

    .line 1039
    :cond_b
    const/4 v0, 0x1

    .line 1040
    .restart local v0    # "changed":Z
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->prevPosition:I
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v8

    if-ne v8, v2, :cond_f

    .line 1041
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->prevTop:I
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$3000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v8

    sub-int v5, v8, v1

    .line 1042
    .restart local v5    # "topDelta":I
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->prevTop:I
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$3000(Lorg/telegram/ui/DialogsActivity;)I

    move-result v8

    if-ge v1, v8, :cond_d

    const/4 v3, 0x1

    .line 1043
    .restart local v3    # "goingDown":Z
    :goto_5
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_e

    const/4 v0, 0x1

    .line 1047
    .end local v5    # "topDelta":I
    :goto_6
    if-eqz v0, :cond_c

    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->scrollUpdated:Z
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$3100(Lorg/telegram/ui/DialogsActivity;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 1048
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # invokes: Lorg/telegram/ui/DialogsActivity;->hideFloatingButton(Z)V
    invoke-static {v8, v3}, Lorg/telegram/ui/DialogsActivity;->access$1300(Lorg/telegram/ui/DialogsActivity;Z)V

    .line 1050
    :cond_c
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # setter for: Lorg/telegram/ui/DialogsActivity;->prevPosition:I
    invoke-static {v8, v2}, Lorg/telegram/ui/DialogsActivity;->access$2902(Lorg/telegram/ui/DialogsActivity;I)I

    .line 1051
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # setter for: Lorg/telegram/ui/DialogsActivity;->prevTop:I
    invoke-static {v8, v1}, Lorg/telegram/ui/DialogsActivity;->access$3002(Lorg/telegram/ui/DialogsActivity;I)I

    .line 1052
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    const/4 v9, 0x1

    # setter for: Lorg/telegram/ui/DialogsActivity;->scrollUpdated:Z
    invoke-static {v8, v9}, Lorg/telegram/ui/DialogsActivity;->access$3102(Lorg/telegram/ui/DialogsActivity;Z)Z

    goto/16 :goto_0

    .line 1042
    .end local v3    # "goingDown":Z
    .restart local v5    # "topDelta":I
    :cond_d
    const/4 v3, 0x0

    goto :goto_5

    .line 1043
    .restart local v3    # "goingDown":Z
    :cond_e
    const/4 v0, 0x0

    goto :goto_6

    .line 1045
    .end local v3    # "goingDown":Z
    .end local v5    # "topDelta":I
    :cond_f
    iget-object v8, p0, Lorg/telegram/ui/DialogsActivity$14;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->prevPosition:I
    invoke-static {v8}, Lorg/telegram/ui/DialogsActivity;->access$2900(Lorg/telegram/ui/DialogsActivity;)I

    move-result v8

    if-le v2, v8, :cond_10

    const/4 v3, 0x1

    .restart local v3    # "goingDown":Z
    :goto_7
    goto :goto_6

    .end local v3    # "goingDown":Z
    :cond_10
    const/4 v3, 0x0

    goto :goto_7
.end method
