.class Lorg/telegram/messenger/ContactsController$17$2;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$17;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/messenger/ContactsController$17;

.field final synthetic val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$17;Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;)V
    .locals 0

    .prologue
    .line 1785
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$17$2;->this$1:Lorg/telegram/messenger/ContactsController$17;

    iput-object p2, p0, Lorg/telegram/messenger/ContactsController$17$2;->val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1788
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$17$2;->val$res:Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_contacts_importedContacts;->users:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$User;

    .line 1789
    .local v2, "u":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v3

    invoke-virtual {v3, v2, v5}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1790
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$17$2;->this$1:Lorg/telegram/messenger/ContactsController$17;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController$17;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1791
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_contact;-><init>()V

    .line 1792
    .local v1, "newContact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    iget v3, v2, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    .line 1793
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$17$2;->this$1:Lorg/telegram/messenger/ContactsController$17;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController$17;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1794
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$17$2;->this$1:Lorg/telegram/messenger/ContactsController$17;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController$17;->this$0:Lorg/telegram/messenger/ContactsController;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController;->contactsDict:Landroid/util/SparseArray;

    iget v4, v1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    invoke-virtual {v3, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1797
    .end local v1    # "newContact":Lorg/telegram/tgnet/TLRPC$TL_contact;
    .end local v2    # "u":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    iget-object v3, p0, Lorg/telegram/messenger/ContactsController$17$2;->this$1:Lorg/telegram/messenger/ContactsController$17;

    iget-object v3, v3, Lorg/telegram/messenger/ContactsController$17;->this$0:Lorg/telegram/messenger/ContactsController;

    const/4 v4, 0x1

    # invokes: Lorg/telegram/messenger/ContactsController;->buildContactsSectionsArrays(Z)V
    invoke-static {v3, v4}, Lorg/telegram/messenger/ContactsController;->access$1700(Lorg/telegram/messenger/ContactsController;Z)V

    .line 1798
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v3

    sget v4, Lorg/telegram/messenger/NotificationCenter;->contactsDidLoaded:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1799
    return-void
.end method
