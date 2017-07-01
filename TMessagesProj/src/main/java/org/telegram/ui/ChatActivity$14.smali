.class Lorg/telegram/ui/ChatActivity$14;
.super Lorg/telegram/ui/Components/RecyclerListView;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChatActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChatActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChatActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 1664
    iput-object p1, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    invoke-direct {p0, p2}, Lorg/telegram/ui/Components/RecyclerListView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v7, 0x0

    .line 1667
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Components/RecyclerListView;->onLayout(ZIIII)V

    .line 1668
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # setter for: Lorg/telegram/ui/ChatActivity;->forceScrollToTop:Z
    invoke-static {v5, v7}, Lorg/telegram/ui/ChatActivity;->access$5802(Lorg/telegram/ui/ChatActivity;Z)Z

    .line 1669
    iget-object v5, p0, Lorg/telegram/ui/ChatActivity$14;->this$0:Lorg/telegram/ui/ChatActivity;

    # getter for: Lorg/telegram/ui/ChatActivity;->chatAdapter:Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity;->access$5900(Lorg/telegram/ui/ChatActivity;)Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;

    move-result-object v5

    # getter for: Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->isBot:Z
    invoke-static {v5}, Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;->access$6000(Lorg/telegram/ui/ChatActivity$ChatActivityAdapter;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1670
    invoke-virtual {p0}, Lorg/telegram/ui/ChatActivity$14;->getChildCount()I

    move-result v2

    .line 1671
    .local v2, "childCount":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1672
    invoke-virtual {p0, v0}, Lorg/telegram/ui/ChatActivity$14;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1673
    .local v1, "child":Landroid/view/View;
    instance-of v5, v1, Lorg/telegram/ui/Cells/BotHelpCell;

    if-eqz v5, :cond_1

    .line 1674
    sub-int v3, p5, p3

    .line 1675
    .local v3, "height":I
    div-int/lit8 v5, v3, 0x2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 1676
    .local v4, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    if-le v5, v4, :cond_0

    .line 1677
    sub-int v5, p4, p2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v1, v7, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 1683
    .end local v0    # "a":I
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "childCount":I
    .end local v3    # "height":I
    .end local v4    # "top":I
    :cond_0
    return-void

    .line 1671
    .restart local v0    # "a":I
    .restart local v1    # "child":Landroid/view/View;
    .restart local v2    # "childCount":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
