.class Lorg/telegram/messenger/MessagesController$52;
.super Ljava/lang/Object;
.source "MessagesController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/MessagesController;->loadDialogs(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/MessagesController;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lorg/telegram/messenger/MessagesController;I)V
    .locals 0

    .prologue
    .line 2751
    iput-object p1, p0, Lorg/telegram/messenger/MessagesController$52;->this$0:Lorg/telegram/messenger/MessagesController;

    iput p2, p0, Lorg/telegram/messenger/MessagesController$52;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 8
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    const/4 v3, 0x0

    .line 2754
    if-nez p2, :cond_0

    move-object v1, p1

    .line 2755
    check-cast v1, Lorg/telegram/tgnet/TLRPC$messages_Dialogs;

    .line 2756
    .local v1, "dialogsRes":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    iget-object v0, p0, Lorg/telegram/messenger/MessagesController$52;->this$0:Lorg/telegram/messenger/MessagesController;

    const/4 v2, 0x0

    iget v4, p0, Lorg/telegram/messenger/MessagesController$52;->val$count:I

    move v5, v3

    move v6, v3

    move v7, v3

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/MessagesController;->processLoadedDialogs(Lorg/telegram/tgnet/TLRPC$messages_Dialogs;Ljava/util/ArrayList;IIIZZ)V

    .line 2758
    .end local v1    # "dialogsRes":Lorg/telegram/tgnet/TLRPC$messages_Dialogs;
    :cond_0
    return-void
.end method
