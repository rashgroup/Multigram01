.class Lorg/telegram/ui/ChannelUsersActivity$2;
.super Ljava/lang/Object;
.source "ChannelUsersActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChannelUsersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/ChannelUsersActivity;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChannelUsersActivity;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    iput-object p2, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 12
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
    .line 151
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 152
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 153
    if-nez p3, :cond_3

    .line 154
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v1, "args":Landroid/os/Bundle;
    const-string/jumbo v9, "onlyUsers"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    const-string/jumbo v9, "destroyAfterSelect"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 157
    const-string/jumbo v9, "returnAsResult"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    const-string/jumbo v9, "needForwardCount"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 159
    const-string/jumbo v9, "allowUsernameSearch"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    const-string/jumbo v9, "selectAlertString"

    const-string/jumbo v10, "ChannelAddTo"

    const v11, 0x7f070102

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    new-instance v6, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v6, v1}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    .line 162
    .local v6, "fragment":Lorg/telegram/ui/ContactsActivity;
    new-instance v9, Lorg/telegram/ui/ChannelUsersActivity$2$1;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChannelUsersActivity$2$1;-><init>(Lorg/telegram/ui/ChannelUsersActivity$2;)V

    invoke-virtual {v6, v9}, Lorg/telegram/ui/ContactsActivity;->setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V

    .line 168
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v9, v6}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 225
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v6    # "fragment":Lorg/telegram/ui/ContactsActivity;
    :cond_0
    :goto_0
    const/4 v8, 0x0

    .line 226
    .local v8, "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    if-lt p3, v9, :cond_1

    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v10}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v10

    add-int/2addr v9, v10

    if-ge p3, v9, :cond_1

    .line 227
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v10}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v10

    sub-int v10, p3, v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    check-cast v8, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;

    .line 229
    .restart local v8    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_1
    if-eqz v8, :cond_2

    .line 230
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 231
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string/jumbo v9, "user_id"

    iget v10, v8, Lorg/telegram/tgnet/TLRPC$ChannelParticipant;->user_id:I

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    new-instance v10, Lorg/telegram/ui/ProfileActivity;

    invoke-direct {v10, v1}, Lorg/telegram/ui/ProfileActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 234
    .end local v1    # "args":Landroid/os/Bundle;
    .end local v8    # "participant":Lorg/telegram/tgnet/TLRPC$ChannelParticipant;
    :cond_2
    :goto_1
    return-void

    .line 169
    :cond_3
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isPublic:Z
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$300(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x1

    if-ne p3, v9, :cond_0

    .line 170
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    new-instance v10, Lorg/telegram/ui/GroupInviteActivity;

    iget-object v11, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->chatId:I
    invoke-static {v11}, Lorg/telegram/ui/ChannelUsersActivity;->access$200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v11

    invoke-direct {v10, v11}, Lorg/telegram/ui/GroupInviteActivity;-><init>(I)V

    invoke-virtual {v9, v10}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_0

    .line 174
    :cond_4
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->type:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$000(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 175
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isAdmin:Z
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$100(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 176
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->isMegagroup:Z
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$400(Lorg/telegram/ui/ChannelUsersActivity;)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    if-eq p3, v9, :cond_5

    const/4 v9, 0x2

    if-ne p3, v9, :cond_c

    .line 177
    :cond_5
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->chatId:I
    invoke-static {v10}, Lorg/telegram/ui/ChannelUsersActivity;->access$200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v3

    .line 178
    .local v3, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v3, :cond_2

    .line 181
    const/4 v2, 0x0

    .line 182
    .local v2, "changed":Z
    const/4 v9, 0x1

    if-ne p3, v9, :cond_a

    iget-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-nez v9, :cond_a

    .line 183
    const/4 v9, 0x1

    iput-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 184
    const/4 v2, 0x1

    .line 189
    :cond_6
    :goto_2
    if-eqz v2, :cond_2

    .line 190
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->chatId:I
    invoke-static {v10}, Lorg/telegram/ui/ChannelUsersActivity;->access$200(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v10

    iget-boolean v11, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/MessagesController;->toogleChannelInvites(IZ)V

    .line 191
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getChildCount()I

    move-result v5

    .line 192
    .local v5, "count":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_3
    if-ge v0, v5, :cond_2

    .line 193
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 194
    .local v4, "child":Landroid/view/View;
    instance-of v9, v4, Lorg/telegram/ui/Cells/RadioCell;

    if-eqz v9, :cond_9

    .line 195
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 196
    .local v7, "num":I
    check-cast v4, Lorg/telegram/ui/Cells/RadioCell;

    .end local v4    # "child":Landroid/view/View;
    if-nez v7, :cond_7

    iget-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-nez v9, :cond_8

    :cond_7
    const/4 v9, 0x1

    if-ne v7, v9, :cond_b

    iget-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-nez v9, :cond_b

    :cond_8
    const/4 v9, 0x1

    :goto_4
    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Lorg/telegram/ui/Cells/RadioCell;->setChecked(ZZ)V

    .line 192
    .end local v7    # "num":I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 185
    .end local v0    # "a":I
    .end local v5    # "count":I
    :cond_a
    const/4 v9, 0x2

    if-ne p3, v9, :cond_6

    iget-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    if-eqz v9, :cond_6

    .line 186
    const/4 v9, 0x0

    iput-boolean v9, v3, Lorg/telegram/tgnet/TLRPC$Chat;->democracy:Z

    .line 187
    const/4 v2, 0x1

    goto :goto_2

    .line 196
    .restart local v0    # "a":I
    .restart local v5    # "count":I
    .restart local v7    # "num":I
    :cond_b
    const/4 v9, 0x0

    goto :goto_4

    .line 202
    .end local v0    # "a":I
    .end local v2    # "changed":Z
    .end local v3    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .end local v5    # "count":I
    .end local v7    # "num":I
    :cond_c
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participantsStartRow:I
    invoke-static {v9}, Lorg/telegram/ui/ChannelUsersActivity;->access$500(Lorg/telegram/ui/ChannelUsersActivity;)I

    move-result v9

    iget-object v10, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    # getter for: Lorg/telegram/ui/ChannelUsersActivity;->participants:Ljava/util/ArrayList;
    invoke-static {v10}, Lorg/telegram/ui/ChannelUsersActivity;->access$600(Lorg/telegram/ui/ChannelUsersActivity;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/2addr v9, v10

    if-ne p3, v9, :cond_0

    .line 203
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 204
    .restart local v1    # "args":Landroid/os/Bundle;
    const-string/jumbo v9, "onlyUsers"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 205
    const-string/jumbo v9, "destroyAfterSelect"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 206
    const-string/jumbo v9, "returnAsResult"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    const-string/jumbo v9, "needForwardCount"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 208
    const-string/jumbo v9, "allowUsernameSearch"

    const/4 v10, 0x1

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    const-string/jumbo v9, "selectAlertString"

    const-string/jumbo v10, "ChannelAddUserAdminAlert"

    const v11, 0x7f070103

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v6, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v6, v1}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    .line 214
    .restart local v6    # "fragment":Lorg/telegram/ui/ContactsActivity;
    new-instance v9, Lorg/telegram/ui/ChannelUsersActivity$2$2;

    invoke-direct {v9, p0}, Lorg/telegram/ui/ChannelUsersActivity$2$2;-><init>(Lorg/telegram/ui/ChannelUsersActivity$2;)V

    invoke-virtual {v6, v9}, Lorg/telegram/ui/ContactsActivity;->setDelegate(Lorg/telegram/ui/ContactsActivity$ContactsActivityDelegate;)V

    .line 220
    iget-object v9, p0, Lorg/telegram/ui/ChannelUsersActivity$2;->this$0:Lorg/telegram/ui/ChannelUsersActivity;

    invoke-virtual {v9, v6}, Lorg/telegram/ui/ChannelUsersActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto/16 :goto_1
.end method
