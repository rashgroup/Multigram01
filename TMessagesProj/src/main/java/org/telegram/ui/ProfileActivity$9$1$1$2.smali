.class Lorg/telegram/ui/ProfileActivity$9$1$1$2;
.super Ljava/lang/Object;
.source "ProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ProfileActivity$9$1$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lorg/telegram/ui/ProfileActivity$9$1$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ProfileActivity$9$1$1;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 0

    .prologue
    .line 793
    iput-object p1, p0, Lorg/telegram/ui/ProfileActivity$9$1$1$2;->this$3:Lorg/telegram/ui/ProfileActivity$9$1$1;

    iput-object p2, p0, Lorg/telegram/ui/ProfileActivity$9$1$1$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 796
    iget-object v0, p0, Lorg/telegram/ui/ProfileActivity$9$1$1$2;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    iget-object v1, p0, Lorg/telegram/ui/ProfileActivity$9$1$1$2;->this$3:Lorg/telegram/ui/ProfileActivity$9$1$1;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$9$1$1;->this$2:Lorg/telegram/ui/ProfileActivity$9$1;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$9$1;->this$1:Lorg/telegram/ui/ProfileActivity$9;

    iget-object v1, v1, Lorg/telegram/ui/ProfileActivity$9;->this$0:Lorg/telegram/ui/ProfileActivity;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/telegram/ui/Components/AlertsCreator;->showAddUserAlert(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 797
    return-void
.end method
