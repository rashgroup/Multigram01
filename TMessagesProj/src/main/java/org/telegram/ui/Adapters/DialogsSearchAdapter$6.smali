.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->updateSearchResults(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

.field final synthetic val$encUsers:Ljava/util/ArrayList;

.field final synthetic val$names:Ljava/util/ArrayList;

.field final synthetic val$result:Ljava/util/ArrayList;

.field final synthetic val$searchId:I


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 751
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iput p2, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$searchId:I

    iput-object p3, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$result:Ljava/util/ArrayList;

    iput-object p4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$encUsers:Ljava/util/ArrayList;

    iput-object p5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$names:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 754
    iget v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$searchId:I

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->lastSearchId:I
    invoke-static {v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$800(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 774
    :goto_0
    return-void

    .line 757
    :cond_0
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 758
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$result:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLObject;

    .line 759
    .local v2, "obj":Lorg/telegram/tgnet/TLObject;
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$User;

    if-eqz v4, :cond_2

    move-object v3, v2

    .line 760
    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 761
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v3, v6}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 757
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 762
    :cond_2
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$Chat;

    if-eqz v4, :cond_3

    move-object v1, v2

    .line 763
    check-cast v1, Lorg/telegram/tgnet/TLRPC$Chat;

    .line 764
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Lorg/telegram/messenger/MessagesController;->putChat(Lorg/telegram/tgnet/TLRPC$Chat;Z)V

    goto :goto_2

    .line 765
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3
    instance-of v4, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    if-eqz v4, :cond_1

    move-object v1, v2

    .line 766
    check-cast v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 767
    .local v1, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Lorg/telegram/messenger/MessagesController;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Z)V

    goto :goto_2

    .line 770
    .end local v1    # "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v2    # "obj":Lorg/telegram/tgnet/TLObject;
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$encUsers:Ljava/util/ArrayList;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 771
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$result:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResult:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1102(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 772
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v5, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->val$names:Ljava/util/ArrayList;

    # setter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchResultNames:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1202(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 773
    iget-object v4, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$6;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
