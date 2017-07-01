.class Lorg/telegram/messenger/ContactsController$18$2;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$18;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$18;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$18;)V
    .locals 0

    .prologue
    .line 1849
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$18$2;->this$1:Lorg/telegram/messenger/ContactsController$18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1852
    const/4 v2, 0x0

    .line 1853
    .local v2, "remove":Z
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$18$2;->this$1:Lorg/telegram/messenger/ContactsController$18;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$18;->val$users:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$User;

    .line 1854
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$18$2;->this$1:Lorg/telegram/messenger/ContactsController$18;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$18;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .line 1855
    .local v0, "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    if-eqz v0, :cond_0

    .line 1856
    const/4 v2, 0x1

    .line 1857
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$18$2;->this$1:Lorg/telegram/messenger/ContactsController$18;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$18;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1858
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$18$2;->this$1:Lorg/telegram/messenger/ContactsController$18;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$18;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v5, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    .line 1861
    .end local v0    # "contact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    if-eqz v2, :cond_2

    .line 1862
    iget-object v4, p0, Lorg/telegram/messenger/ContactsController$18$2;->this$1:Lorg/telegram/messenger/ContactsController$18;

    iget-object v4, v4, Lorg/telegram/messenger/ContactsController$18;->this$0:Lorg/telegram/messenger/ContactsController;

    # invokes: Lorg/telegram/messenger/ContactsController;->buildContactsSectionsArrays(Z)V
    invoke-static {v4, v8}, Lorg/telegram/messenger/ContactsController;->access$1700(Lorg/telegram/messenger/ContactsController;Z)V

    .line 1864
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->updateInterfaces:I

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1865
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    new-array v6, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1866
    return-void
.end method
