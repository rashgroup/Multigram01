.class Lorg/telegram/ui/SessionsActivity$3$1;
.super Ljava/lang/Object;
.source "SessionsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SessionsActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SessionsActivity$3;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$3$1;->this$1:Lorg/telegram/ui/SessionsActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 196
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_auth_resetAuthorizations;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_auth_resetAuthorizations;-><init>()V

    .line 197
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_auth_resetAuthorizations;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/SessionsActivity$3$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/SessionsActivity$3$1$1;-><init>(Lorg/telegram/ui/SessionsActivity$3$1;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 222
    return-void
.end method
