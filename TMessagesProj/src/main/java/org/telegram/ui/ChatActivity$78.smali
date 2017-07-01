.class Lorg/telegram/ui/ChatActivity$78;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createDeleteMessagesAlert(Lorg/telegram/messenger/MessageObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;

.field final synthetic val$checks:[Z


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;[Z)V
    .locals 0

    .prologue
    .line 7533
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$78;->this$0:Lorg/telegram/ui/ChatActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChatActivity$78;->val$checks:[Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 7536
    move-object v0, p1

    check-cast v0, Lorg/telegram/ui/Cells/CheckBoxCell;

    .line 7537
    .local v0, "cell":Lorg/telegram/ui/Cells/CheckBoxCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/CheckBoxCell;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 7538
    .local v1, "num":Ljava/lang/Integer;
    iget-object v4, p0, Lorg/telegram/ui/ChatActivity$78;->val$checks:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$78;->val$checks:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-boolean v2, v2, v6

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    aput-boolean v2, v4, v5

    .line 7539
    iget-object v2, p0, Lorg/telegram/ui/ChatActivity$78;->val$checks:[Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-boolean v2, v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/telegram/ui/Cells/CheckBoxCell;->setChecked(ZZ)V

    .line 7540
    return-void

    .line 7538
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
