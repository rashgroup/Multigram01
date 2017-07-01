.class Lorg/telegram/ui/ChangeChatNameActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "ChangeChatNameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangeChatNameActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChangeChatNameActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangeChatNameActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 66
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 67
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->finishFragment()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    # getter for: Lorg/telegram/ui/ChangeChatNameActivity;->firstNameField:Landroid/widget/EditText;
    invoke-static {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->access$000(Lorg/telegram/ui/ChangeChatNameActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    # invokes: Lorg/telegram/ui/ChangeChatNameActivity;->saveName()V
    invoke-static {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->access$100(Lorg/telegram/ui/ChangeChatNameActivity;)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/ChangeChatNameActivity$1;->this$0:Lorg/telegram/ui/ChangeChatNameActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ChangeChatNameActivity;->finishFragment()V

    goto :goto_0
.end method
