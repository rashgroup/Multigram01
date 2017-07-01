.class public Lorg/telegram/ui/Adapters/DialogsAdapter;
.super Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;
.source "DialogsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/ui/Adapters/DialogsAdapter$Holder;
    }
.end annotation


# instance fields
.field private currentCount:I

.field private dialogsType:I

.field private mContext:Landroid/content/Context;

.field private openedDialogId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    .line 41
    iput p2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    .line 42
    return-void
.end method

.method private getDialogsArray()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dialog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lorg/telegram/ui/Apogram/DialogsLoader;

    invoke-direct {v0}, Lorg/telegram/ui/Apogram/DialogsLoader;-><init>()V

    invoke-virtual {v0}, Lorg/telegram/ui/Apogram/DialogsLoader;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    .line 57
    :cond_0
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 58
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsServerOnly:Ljava/util/ArrayList;

    goto :goto_0

    .line 59
    :cond_1
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 60
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/messenger/MessagesController;->dialogsGroupsOnly:Ljava/util/ArrayList;

    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    .line 80
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$TL_dialog;>;"
    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 81
    :cond_0
    const/4 v1, 0x0

    .line 83
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 68
    .local v0, "count":I
    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->loadingDialogs:Z

    if-eqz v1, :cond_0

    .line 69
    const/4 v1, 0x0

    .line 75
    :goto_0
    return v1

    .line 71
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-boolean v1, v1, Lorg/telegram/messenger/MessagesController;->dialogsEndReached:Z

    if-nez v1, :cond_1

    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 74
    :cond_1
    iput v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentCount:I

    move v1, v0

    .line 75
    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 95
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 127
    invoke-direct {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getDialogsArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 128
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDataSetChanged()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 49
    iget v0, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->currentCount:I

    .line 50
    .local v0, "current":I
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItemCount()I

    move-result v2

    if-ne v0, v2, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;I)V
    .locals 10
    .param p1, "viewHolder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 112
    invoke-virtual {p1}, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    if-nez v2, :cond_1

    .line 113
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    .line 114
    .local v0, "cell":Lorg/telegram/ui/Cells/DialogCell;
    invoke-virtual {p0}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq p2, v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lorg/telegram/ui/Cells/DialogCell;->useSeparator:Z

    .line 115
    invoke-virtual {p0, p2}, Lorg/telegram/ui/Adapters/DialogsAdapter;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v1

    .line 116
    .local v1, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    if-nez v2, :cond_0

    .line 117
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iget-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    iget-wide v8, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->openedDialogId:J

    cmp-long v2, v6, v8

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/DialogCell;->setDialogSelected(Z)V

    .line 121
    :cond_0
    iget v2, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->dialogsType:I

    invoke-virtual {v0, v1, p2, v2}, Lorg/telegram/ui/Cells/DialogCell;->setDialog(Lorg/telegram/tgnet/TLRPC$TL_dialog;II)V

    .line 123
    .end local v0    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    .end local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_1
    return-void

    .restart local v0    # "cell":Lorg/telegram/ui/Cells/DialogCell;
    :cond_2
    move v2, v4

    .line 114
    goto :goto_0

    .restart local v1    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    :cond_3
    move v3, v4

    .line 118
    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "view":Landroid/view/View;
    if-nez p2, :cond_1

    .line 102
    new-instance v0, Lorg/telegram/ui/Cells/DialogCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/DialogCell;-><init>(Landroid/content/Context;)V

    .line 106
    .restart local v0    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    new-instance v1, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Lorg/telegram/messenger/support/widget/RecyclerView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    new-instance v1, Lorg/telegram/ui/Adapters/DialogsAdapter$Holder;

    invoke-direct {v1, p0, v0}, Lorg/telegram/ui/Adapters/DialogsAdapter$Holder;-><init>(Lorg/telegram/ui/Adapters/DialogsAdapter;Landroid/view/View;)V

    return-object v1

    .line 103
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 104
    new-instance v0, Lorg/telegram/ui/Cells/LoadingCell;

    .end local v0    # "view":Landroid/view/View;
    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/telegram/ui/Cells/LoadingCell;-><init>(Landroid/content/Context;)V

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public onViewAttachedToWindow(Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;

    .prologue
    .line 88
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Cells/DialogCell;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p1, Lorg/telegram/messenger/support/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Cells/DialogCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/DialogCell;->checkCurrentDialogIndex()V

    .line 91
    :cond_0
    return-void
.end method

.method public setOpenedDialogId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lorg/telegram/ui/Adapters/DialogsAdapter;->openedDialogId:J

    .line 46
    return-void
.end method
