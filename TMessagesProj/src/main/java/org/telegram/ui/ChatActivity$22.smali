.class Lorg/telegram/ui/ChatActivity$22;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;)V
    .locals 0

    .prologue
    .line 1981
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 1984
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->horizontalListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$7100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->horizontalListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$7100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v8

    if-nez v8, :cond_1

    .line 2036
    :cond_0
    :goto_0
    return-void

    .line 1987
    :cond_1
    const-wide/16 v4, 0x0

    .line 1988
    .local v4, "dialog_id":J
    const/4 v7, 0x0

    .line 1989
    .local v7, "message_id":I
    const/4 v2, 0x0

    .line 1990
    .local v2, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->horizontalListView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$7100(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/Components/RecyclerListView;->getAdapter()Lorg/telegram/messenger/support/widget/RecyclerView$Adapter;

    move-result-object v8

    iget-object v9, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->categoryAdapterRecycler:Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;
    invoke-static {v9}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;

    move-result-object v9

    if-ne v8, v9, :cond_2

    .line 1991
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->categoryAdapterRecycler:Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;
    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$7200(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;

    move-result-object v8

    invoke-virtual {v8, p2}, Lorg/telegram/ui/ChatActivity$CategoryAdapterRecycler;->getItem(I)Lorg/telegram/tgnet/TLRPC$TL_dialog;

    move-result-object v2

    .line 1993
    :cond_2
    if-eqz v2, :cond_0

    .line 1997
    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 1998
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    .line 2002
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2003
    .local v0, "args":Landroid/os/Bundle;
    long-to-int v6, v4

    .line 2004
    .local v6, "lower_part":I
    const/16 v8, 0x20

    shr-long v8, v4, v8

    long-to-int v3, v8

    .line 2005
    .local v3, "high_id":I
    if-eqz v6, :cond_8

    .line 2006
    const/4 v8, 0x1

    if-ne v3, v8, :cond_5

    .line 2007
    const-string/jumbo v8, "chat_id"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2025
    :cond_3
    :goto_1
    if-eqz v7, :cond_9

    .line 2026
    const-string/jumbo v8, "message_id"

    invoke-virtual {v0, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2033
    :cond_4
    :goto_2
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-static {v0, v8}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2034
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    new-instance v9, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 2009
    :cond_5
    if-lez v6, :cond_6

    .line 2010
    const-string/jumbo v8, "user_id"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 2011
    :cond_6
    if-gez v6, :cond_3

    .line 2012
    if-eqz v7, :cond_7

    .line 2013
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    neg-int v9, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v1

    .line 2014
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v1, :cond_7

    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    if-eqz v8, :cond_7

    .line 2015
    const-string/jumbo v8, "migrated_to"

    invoke-virtual {v0, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2016
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$Chat;->migrated_to:Lorg/telegram/tgnet/TLRPC$InputChannel;

    iget v8, v8, Lorg/telegram/tgnet/TLRPC$InputChannel;->channel_id:I

    neg-int v6, v8

    .line 2019
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_7
    const-string/jumbo v8, "chat_id"

    neg-int v9, v6

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 2023
    :cond_8
    const-string/jumbo v8, "enc_id"

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 2028
    :cond_9
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$7300(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 2029
    iget-object v8, p0, Lorg/telegram/ui/ChatActivity$22;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->actionBar:Lorg/telegram/ui/ActionBar/ActionBar;
    invoke-static {v8}, Lorg/telegram/ui/ChatActivity;->access$7400(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ActionBar/ActionBar;

    move-result-object v8

    invoke-virtual {v8}, Lorg/telegram/ui/ActionBar/ActionBar;->closeSearchField()V

    goto :goto_2
.end method
