.class Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->didPressedUrl(Lorg/telegram/messenger/MessageObject;Landroid/text/style/ClickableSpan;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

.field final synthetic val$urlFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 9174
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;->val$urlFinal:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v0, 0x1

    .line 9177
    if-nez p2, :cond_2

    .line 9178
    iget-object v1, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v1, v1, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v1}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;->val$urlFinal:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;->this$2:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1;->this$1:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->inlineReturn:J
    invoke-static {v3}, Lorg/telegram/ui/ChatActivity;->access$15200(Lorg/telegram/ui/ChatActivity;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    :goto_0
    invoke-static {v1, v2, v0}, Lorg/telegram/messenger/browser/Browser;->openUrl(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 9182
    :cond_0
    :goto_1
    return-void

    .line 9178
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 9179
    :cond_2
    if-ne p2, v0, :cond_0

    .line 9180
    iget-object v0, p0, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter$1$1;->val$urlFinal:Ljava/lang/String;

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->addToClipboard(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
