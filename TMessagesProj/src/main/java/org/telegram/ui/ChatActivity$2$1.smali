.class Lorg/telegram/ui/ChatActivity$2$1;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/ChatActivity$2;

.field final synthetic val$view1:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity$2;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 423
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$2$1;->this$1:Lorg/telegram/ui/ChatActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$2$1;->val$view1:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 426
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$2$1;->this$1:Lorg/telegram/ui/ChatActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$2$1;->val$view1:Landroid/view/View;

    # invokes: Lorg/telegram/ui/ChatActivity;->batchDelete(Landroid/view/View;)V
    invoke-static {v3, v4}, Lorg/telegram/ui/ChatActivity;->access$900(Lorg/telegram/ui/ChatActivity;Landroid/view/View;)V

    .line 427
    iget-object v3, p0, Lorg/telegram/ui/ChatActivity$2$1;->this$1:Lorg/telegram/ui/ChatActivity$2;

    iget-object v3, v3, Lorg/telegram/ui/ChatActivity$2;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/ChatActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "BatchDeleteMessagesAreDeleted"

    const v5, 0x7f0700d6

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 428
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 429
    .local v1, "toastLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 430
    .local v2, "toastTV":Landroid/widget/TextView;
    const-string/jumbo v3, "fonts/rmedium.ttf"

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 431
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 432
    return-void
.end method
