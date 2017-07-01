.class Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "ChatAttachAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Components/ChatAttachAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Components/ChatAttachAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 969
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    .line 970
    iput-object p2, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->mContext:Landroid/content/Context;

    .line 971
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .prologue
    .line 1026
    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1031
    packed-switch p1, :pswitch_data_0

    .line 1037
    const/4 v0, 0x2

    :goto_0
    return v0

    .line 1033
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1035
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1031
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x4

    .line 1007
    const/4 v3, 0x1

    if-le p2, v3, :cond_1

    .line 1008
    add-int/lit8 p2, p2, -0x2

    .line 1009
    mul-int/lit8 p2, p2, 0x4

    .line 1010
    iget-object v2, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    .line 1011
    .local v2, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v6, :cond_1

    .line 1012
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    .line 1013
    .local v1, "child":Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;
    add-int v3, p2, v0

    sget-object v4, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 1014
    invoke-virtual {v1, v6}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->setVisibility(I)V

    .line 1011
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1016
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->setVisibility(I)V

    .line 1017
    add-int v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->setTag(Ljava/lang/Object;)V

    .line 1018
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    sget-object v3, Lorg/telegram/messenger/query/SearchQuery;->inlineBots:Ljava/util/ArrayList;

    add-int v5, p2, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_topPeer;->peer:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;->setUser(Lorg/telegram/tgnet/TLRPC$User;)V

    goto :goto_1

    .line 1022
    .end local v0    # "a":I
    .end local v1    # "child":Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;
    .end local v2    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 976
    packed-switch p2, :pswitch_data_0

    .line 984
    new-instance v1, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter$1;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter$1;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;Landroid/content/Context;)V

    .line 995
    .local v1, "frameLayout":Landroid/widget/FrameLayout;
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 996
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v5}, Lorg/telegram/ui/Components/ChatAttachAlert$AttachBotButton;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 995
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    .end local v0    # "a":I
    .end local v1    # "frameLayout":Landroid/widget/FrameLayout;
    :pswitch_0
    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    # getter for: Lorg/telegram/ui/Components/ChatAttachAlert;->attachView:Landroid/view/ViewGroup;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatAttachAlert;->access$4300(Lorg/telegram/ui/Components/ChatAttachAlert;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 1002
    .local v2, "view":Landroid/view/View;
    :goto_1
    new-instance v3, Lorg/telegram/ui/Components/ChatAttachAlert$Holder;

    iget-object v4, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->this$0:Lorg/telegram/ui/Components/ChatAttachAlert;

    invoke-direct {v3, v4, v2}, Lorg/telegram/ui/Components/ChatAttachAlert$Holder;-><init>(Lorg/telegram/ui/Components/ChatAttachAlert;Landroid/view/View;)V

    return-object v3

    .line 981
    .end local v2    # "view":Landroid/view/View;
    :pswitch_1
    new-instance v2, Lorg/telegram/ui/Cells/ShadowSectionCell;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatAttachAlert$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/telegram/ui/Cells/ShadowSectionCell;-><init>(Landroid/content/Context;)V

    .line 982
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_1

    .line 998
    .end local v2    # "view":Landroid/view/View;
    .restart local v0    # "a":I
    .restart local v1    # "frameLayout":Landroid/widget/FrameLayout;
    :cond_0
    move-object v2, v1

    .line 999
    .restart local v2    # "view":Landroid/view/View;
    new-instance v3, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v4, -0x1

    const/high16 v5, 0x42c80000    # 100.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 976
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
