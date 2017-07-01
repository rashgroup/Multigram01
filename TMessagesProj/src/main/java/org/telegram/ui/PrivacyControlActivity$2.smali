.class Lorg/telegram/ui/PrivacyControlActivity$2;
.super Ljava/lang/Object;
.source "PrivacyControlActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyControlActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacyControlActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyControlActivity;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 184
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v6

    if-eq p3, v6, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v6

    if-eq p3, v6, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v6

    if-ne p3, v6, :cond_6

    .line 185
    :cond_0
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentType:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    .line 186
    .local v3, "newType":I
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->nobodyRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$300(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v6

    if-ne p3, v6, :cond_3

    .line 187
    const/4 v3, 0x1

    .line 193
    :cond_1
    :goto_0
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentType:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v6

    if-ne v3, v6, :cond_5

    .line 260
    .end local v3    # "newType":I
    :cond_2
    :goto_1
    return-void

    .line 188
    .restart local v3    # "newType":I
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->everybodyRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$400(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v6

    if-ne p3, v6, :cond_4

    .line 189
    const/4 v3, 0x0

    goto :goto_0

    .line 190
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->myContactsRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$500(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v6

    if-ne p3, v6, :cond_1

    .line 191
    const/4 v3, 0x2

    goto :goto_0

    .line 196
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # setter for: Lorg/telegram/ui/PrivacyControlActivity;->enableAnimation:Z
    invoke-static {v6, v5}, Lorg/telegram/ui/PrivacyControlActivity;->access$602(Lorg/telegram/ui/PrivacyControlActivity;Z)Z

    .line 197
    iget-object v5, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->doneButton:Landroid/view/View;
    invoke-static {v5}, Lorg/telegram/ui/PrivacyControlActivity;->access$700(Lorg/telegram/ui/PrivacyControlActivity;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 198
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    iget-object v5, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentType:I
    invoke-static {v5}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v5

    # setter for: Lorg/telegram/ui/PrivacyControlActivity;->lastCheckedType:I
    invoke-static {v4, v5}, Lorg/telegram/ui/PrivacyControlActivity;->access$802(Lorg/telegram/ui/PrivacyControlActivity;I)I

    .line 199
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # setter for: Lorg/telegram/ui/PrivacyControlActivity;->currentType:I
    invoke-static {v4, v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$002(Lorg/telegram/ui/PrivacyControlActivity;I)I

    .line 200
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # invokes: Lorg/telegram/ui/PrivacyControlActivity;->updateRows()V
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$900(Lorg/telegram/ui/PrivacyControlActivity;)V

    goto :goto_1

    .line 201
    .end local v3    # "newType":I
    :cond_6
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v6

    if-eq p3, v6, :cond_7

    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$1100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v6

    if-ne p3, v6, :cond_2

    .line 203
    :cond_7
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v6

    if-ne p3, v6, :cond_8

    .line 204
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentMinus:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$1200(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    .line 208
    .local v1, "createFromArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 209
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v0, "args":Landroid/os/Bundle;
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->neverShareRow:I
    invoke-static {v4}, Lorg/telegram/ui/PrivacyControlActivity;->access$1000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v4

    if-ne p3, v4, :cond_9

    const-string/jumbo v4, "isNeverShare"

    :goto_3
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 211
    const-string/jumbo v4, "isGroup"

    iget-object v5, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->isGroup:Z
    invoke-static {v5}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)Z

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    new-instance v2, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/GroupCreateActivity;-><init>(Landroid/os/Bundle;)V

    .line 213
    .local v2, "fragment":Lorg/telegram/ui/GroupCreateActivity;
    new-instance v4, Lorg/telegram/ui/PrivacyControlActivity$2$1;

    invoke-direct {v4, p0, p3}, Lorg/telegram/ui/PrivacyControlActivity$2$1;-><init>(Lorg/telegram/ui/PrivacyControlActivity$2;I)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/GroupCreateActivity;->setDelegate(Lorg/telegram/ui/GroupCreateActivity$GroupCreateActivityDelegate;)V

    .line 232
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/PrivacyControlActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1

    .line 206
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "createFromArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "fragment":Lorg/telegram/ui/GroupCreateActivity;
    :cond_8
    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentPlus:Ljava/util/ArrayList;
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$1300(Lorg/telegram/ui/PrivacyControlActivity;)Ljava/util/ArrayList;

    move-result-object v1

    .restart local v1    # "createFromArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    goto :goto_2

    .line 210
    .restart local v0    # "args":Landroid/os/Bundle;
    :cond_9
    const-string/jumbo v4, "isAlwaysShare"

    goto :goto_3

    .line 234
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_a
    new-instance v2, Lorg/telegram/ui/PrivacyUsersActivity;

    iget-object v6, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->isGroup:Z
    invoke-static {v6}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)Z

    move-result v6

    iget-object v7, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->alwaysShareRow:I
    invoke-static {v7}, Lorg/telegram/ui/PrivacyControlActivity;->access$1100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v7

    if-ne p3, v7, :cond_b

    move v4, v5

    :cond_b
    invoke-direct {v2, v1, v6, v4}, Lorg/telegram/ui/PrivacyUsersActivity;-><init>(Ljava/util/ArrayList;ZZ)V

    .line 235
    .local v2, "fragment":Lorg/telegram/ui/PrivacyUsersActivity;
    new-instance v4, Lorg/telegram/ui/PrivacyControlActivity$2$2;

    invoke-direct {v4, p0, p3}, Lorg/telegram/ui/PrivacyControlActivity$2$2;-><init>(Lorg/telegram/ui/PrivacyControlActivity$2;I)V

    invoke-virtual {v2, v4}, Lorg/telegram/ui/PrivacyUsersActivity;->setDelegate(Lorg/telegram/ui/PrivacyUsersActivity$PrivacyActivityDelegate;)V

    .line 257
    iget-object v4, p0, Lorg/telegram/ui/PrivacyControlActivity$2;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v4, v2}, Lorg/telegram/ui/PrivacyControlActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1
.end method
