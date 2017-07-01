.class Lorg/telegram/ui/ProfileActivity$9$1$1;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$9$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ProfileActivity$9$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$9$1;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 4
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 784
    if-nez p2, :cond_0

    .line 785
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$Updates;

    .end local p1    # "response":Lorg/telegram/tgnet/TLObject;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/telegram/messenger/MessagesController;->processUpdates(Lorg/telegram/tgnet/TLRPC$Updates;Z)V

    .line 786
    new-instance v0, Lorg/telegram/ui/ProfileActivity$9$1$1$1;

    invoke-direct {v0, p0}, Lorg/telegram/ui/ProfileActivity$9$1$1$1;-><init>(Lorg/telegram/ui/ProfileActivity$9$1$1;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;J)V

    .line 800
    :goto_0
    return-void

    .line 793
    .restart local p1    # "response":Lorg/telegram/tgnet/TLObject;
    :cond_0
    new-instance v0, Lorg/telegram/ui/ProfileActivity$9$1$1$2;

    invoke-direct {v0, p0, p2}, Lorg/telegram/ui/ProfileActivity$9$1$1$2;-><init>(Lorg/telegram/ui/ProfileActivity$9$1$1;Lorg/telegram/tgnet/TLRPC$TL_error;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
