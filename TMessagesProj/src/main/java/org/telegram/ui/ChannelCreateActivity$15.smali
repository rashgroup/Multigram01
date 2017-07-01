.class Lorg/telegram/ui/ChannelCreateActivity$15;
.super Ljava/lang/Object;
.source "ChannelCreateActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelCreateActivity;)V
    .locals 0

    .prologue
    .line 827
    iput-object p1, p0, Lorg/telegram/ui/ChannelCreateActivity$15;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 840
    invoke-virtual {p1}, Landroid/widget/AbsListView;->isFastScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    invoke-static {p1}, Lorg/telegram/messenger/AndroidUtilities;->clearDrawableAnimation(Landroid/view/View;)V

    .line 843
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "absListView"    # Landroid/widget/AbsListView;
    .param p2, "i"    # I

    .prologue
    const/4 v0, 0x1

    .line 830
    if-ne p2, v0, :cond_0

    .line 831
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$15;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->nameTextView:Landroid/widget/EditText;
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$300(Lorg/telegram/ui/ChannelCreateActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->hideKeyboard(Landroid/view/View;)V

    .line 833
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$15;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$3200(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 834
    iget-object v1, p0, Lorg/telegram/ui/ChannelCreateActivity$15;->this$0:Lorg/telegram/ui/ChannelCreateActivity;

    # getter for: Lorg/telegram/ui/ChannelCreateActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/ContactsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/ChannelCreateActivity;->access$3200(Lorg/telegram/ui/ChannelCreateActivity;)Lorg/telegram/ui/Adapters/ContactsAdapter;

    move-result-object v1

    if-eqz p2, :cond_2

    :goto_0
    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/ContactsAdapter;->setIsScrolling(Z)V

    .line 836
    :cond_1
    return-void

    .line 834
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
