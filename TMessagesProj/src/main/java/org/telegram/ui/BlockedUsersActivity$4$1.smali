.class Lorg/telegram/ui/BlockedUsersActivity$4$1;
.super Ljava/lang/Object;
.source "BlockedUsersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/BlockedUsersActivity$4;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/BlockedUsersActivity$4;


# direct methods
.method constructor <init>(Lorg/telegram/ui/BlockedUsersActivity$4;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lorg/telegram/ui/BlockedUsersActivity$4$1;->this$1:Lorg/telegram/ui/BlockedUsersActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 148
    if-nez p2, :cond_0

    .line 149
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/BlockedUsersActivity$4$1;->this$1:Lorg/telegram/ui/BlockedUsersActivity$4;

    iget-object v1, v1, Lorg/telegram/ui/BlockedUsersActivity$4;->this$0:Lorg/telegram/ui/BlockedUsersActivity;

    # getter for: Lorg/telegram/ui/BlockedUsersActivity;->selectedUserId:I
    invoke-static {v1}, Lorg/telegram/ui/BlockedUsersActivity;->access$000(Lorg/telegram/ui/BlockedUsersActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesController;->unblockUser(I)V

    .line 151
    :cond_0
    return-void
.end method
