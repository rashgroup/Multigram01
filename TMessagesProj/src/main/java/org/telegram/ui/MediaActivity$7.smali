.class Lorg/telegram/ui/MediaActivity$7;
.super Ljava/lang/Object;
.source "MediaActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity;)V
    .locals 0

    .prologue
    .line 675
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$7;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 678
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$7;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$7;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    :cond_0
    instance-of v3, p2, Lorg/telegram/ui/Cells/SharedDocumentCell;

    if-eqz v3, :cond_2

    move-object v0, p2

    .line 679
    check-cast v0, Lorg/telegram/ui/Cells/SharedDocumentCell;

    .line 680
    .local v0, "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedDocumentCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 681
    .local v1, "message":Lorg/telegram/messenger/MessageObject;
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$7;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    invoke-static {v3, v1, p2, v2}, Lorg/telegram/ui/MediaActivity;->access$3000(Lorg/telegram/ui/MediaActivity;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result v2

    .line 687
    .end local v0    # "cell":Lorg/telegram/ui/Cells/SharedDocumentCell;
    .end local v1    # "message":Lorg/telegram/messenger/MessageObject;
    :cond_1
    :goto_0
    return v2

    .line 682
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$7;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v3}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    instance-of v3, p2, Lorg/telegram/ui/Cells/SharedLinkCell;

    if-eqz v3, :cond_1

    move-object v0, p2

    .line 683
    check-cast v0, Lorg/telegram/ui/Cells/SharedLinkCell;

    .line 684
    .local v0, "cell":Lorg/telegram/ui/Cells/SharedLinkCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/SharedLinkCell;->getMessage()Lorg/telegram/messenger/MessageObject;

    move-result-object v1

    .line 685
    .restart local v1    # "message":Lorg/telegram/messenger/MessageObject;
    iget-object v3, p0, Lorg/telegram/ui/MediaActivity$7;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->onItemLongClick(Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z
    invoke-static {v3, v1, p2, v2}, Lorg/telegram/ui/MediaActivity;->access$3000(Lorg/telegram/ui/MediaActivity;Lorg/telegram/messenger/MessageObject;Landroid/view/View;I)Z

    move-result v2

    goto :goto_0
.end method
