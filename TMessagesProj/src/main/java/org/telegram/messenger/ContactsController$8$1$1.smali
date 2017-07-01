.class Lorg/telegram/messenger/ContactsController$8$1$1;
.super Ljava/lang/Object;
.source "ContactsController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/ContactsController$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/telegram/tgnet/TLRPC$TL_contact;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/messenger/ContactsController$8$1;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/ContactsController$8$1;)V
    .locals 0

    .prologue
    .line 1011
    iput-object p1, p0, Lorg/telegram/messenger/ContactsController$8$1$1;->this$2:Lorg/telegram/messenger/ContactsController$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 1011
    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/telegram/tgnet/TLRPC$TL_contact;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/telegram/messenger/ContactsController$8$1$1;->compare(Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/telegram/tgnet/TLRPC$TL_contact;Lorg/telegram/tgnet/TLRPC$TL_contact;)I
    .locals 2
    .param p1, "tl_contact"    # Lorg/telegram/tgnet/TLRPC$TL_contact;
    .param p2, "tl_contact2"    # Lorg/telegram/tgnet/TLRPC$TL_contact;

    .prologue
    .line 1014
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    if-le v0, v1, :cond_0

    .line 1015
    const/4 v0, 0x1

    .line 1019
    :goto_0
    return v0

    .line 1016
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    iget v1, p2, Lorg/telegram/tgnet/TLRPC$TL_contact;->user_id:I

    if-ge v0, v1, :cond_1

    .line 1017
    const/4 v0, -0x1

    goto :goto_0

    .line 1019
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
