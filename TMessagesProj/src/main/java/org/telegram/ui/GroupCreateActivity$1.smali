.class Lorg/telegram/ui/GroupCreateActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "GroupCreateActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/GroupCreateActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/GroupCreateActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/GroupCreateActivity;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 4
    .param p1, "id"    # I

    .prologue
    .line 186
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 187
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/GroupCreateActivity;->finishFragment()V

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 189
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->selectedContacts:Ljava/util/HashMap;
    invoke-static {v2}, Lorg/telegram/ui/GroupCreateActivity;->access$000(Lorg/telegram/ui/GroupCreateActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 194
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->isAlwaysShare:Z
    invoke-static {v2}, Lorg/telegram/ui/GroupCreateActivity;->access$100(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->isNeverShare:Z
    invoke-static {v2}, Lorg/telegram/ui/GroupCreateActivity;->access$200(Lorg/telegram/ui/GroupCreateActivity;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 195
    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->delegate:Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;
    invoke-static {v2}, Lorg/telegram/ui/GroupCreateActivity;->access$300(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 196
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->delegate:Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;
    invoke-static {v2}, Lorg/telegram/ui/GroupCreateActivity;->access$300(Lorg/telegram/ui/GroupCreateActivity;)Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;->didSelectUsers(Ljava/util/ArrayList;)V

    .line 198
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/GroupCreateActivity;->finishFragment()V

    goto :goto_0

    .line 200
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 201
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 202
    const-string/jumbo v2, "chatType"

    iget-object v3, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    # getter for: Lorg/telegram/ui/GroupCreateActivity;->chatType:I
    invoke-static {v3}, Lorg/telegram/ui/GroupCreateActivity;->access$400(Lorg/telegram/ui/GroupCreateActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    iget-object v2, p0, Lorg/telegram/ui/GroupCreateActivity$1;->this$0:Lorg/telegram/ui/GroupCreateActivity;

    new-instance v3, Lorg/telegram/ui/GroupCreateFinalActivity;

    invoke-direct {v3, v0}, Lorg/telegram/ui/GroupCreateFinalActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lorg/telegram/ui/GroupCreateActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0
.end method
