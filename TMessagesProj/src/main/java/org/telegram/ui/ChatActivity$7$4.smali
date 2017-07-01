.class Lorg/telegram/ui/ChatActivity$7$4;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$7;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$7;)V
    .locals 0

    .prologue
    .line 1064
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$7$4;->this$1:Lorg/telegram/ui/ChatActivity$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1067
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$7$4;->this$1:Lorg/telegram/ui/ChatActivity$7;

    iget-object v1, v0, Lorg/telegram/ui/ChatActivity$7;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$7$4;->this$1:Lorg/telegram/ui/ChatActivity$7;

    iget-object v0, v0, Lorg/telegram/ui/ChatActivity$7;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->batchDelete:Z
    invoke-static {v0}, Lorg/telegram/ui/ChatActivity;->access$500(Lorg/telegram/ui/ChatActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Lorg/telegram/ui/ChatActivity;->batchDelete:Z
    invoke-static {v1, v0}, Lorg/telegram/ui/ChatActivity;->access$502(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 1068
    return-void

    .line 1067
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
