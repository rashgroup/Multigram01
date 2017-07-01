.class Lorg/telegram/ui/LaunchActivity$7$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$7;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LaunchActivity$7;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$7;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 1106
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$7$1;->this$1:Lorg/telegram/ui/LaunchActivity$7;

    iput-object p2, p0, Lorg/telegram/ui/LaunchActivity$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/LaunchActivity$7$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1109
    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$7$1;->this$1:Lorg/telegram/ui/LaunchActivity$7;

    iget-object v9, v9, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/LaunchActivity;->isFinishing()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1111
    :try_start_0
    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$7$1;->this$1:Lorg/telegram/ui/LaunchActivity$7;

    iget-object v9, v9, Lorg/telegram/ui/LaunchActivity$7;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v9}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1115
    :goto_0
    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$7$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v9, :cond_b

    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$7$1;->this$1:Lorg/telegram/ui/LaunchActivity$7;

    iget-object v9, v9, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v9}, Lorg/telegram/ui/LaunchActivity;->access$000(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 1116
    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$7$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 1117
    .local v7, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/MessagesController;->putUsers(Ljava/util/ArrayList;Z)V

    .line 1118
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/MessagesController;->putChats(Ljava/util/ArrayList;Z)V

    .line 1119
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    iget-object v10, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    iget-object v11, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1121
    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$7$1;->this$1:Lorg/telegram/ui/LaunchActivity$7;

    iget-object v9, v9, Lorg/telegram/ui/LaunchActivity$7;->val$botChat:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 1122
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    move-object v8, v9

    .line 1123
    .local v8, "user":Lorg/telegram/tgnet/TLRPC$User;
    :goto_1
    if-eqz v8, :cond_0

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v9, :cond_3

    iget-boolean v9, v8, Lorg/telegram/tgnet/TLRPC$User;->bot_nochats:Z

    if-eqz v9, :cond_3

    .line 1125
    :cond_0
    :try_start_1
    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$7$1;->this$1:Lorg/telegram/ui/LaunchActivity$7;

    iget-object v9, v9, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    const-string/jumbo v10, "BotCantJoinGroups"

    const v11, 0x7f0700de

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1187
    .end local v7    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    .end local v8    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    :goto_2
    return-void

    .line 1112
    :catch_0
    move-exception v1

    .line 1113
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1122
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v7    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 1126
    .restart local v8    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_1
    move-exception v1

    .line 1127
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1131
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1132
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v9, "onlySelect"

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1133
    const-string/jumbo v9, "dialogsType"

    const/4 v10, 0x2

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1134
    const-string/jumbo v9, "addToGroupAlertString"

    const-string/jumbo v10, "AddToTheGroupTitle"

    const v11, 0x7f07007f

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v8}, Lorg/telegram/messenger/UserObject;->getUserName(Lorg/telegram/tgnet/TLRPC$User;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "%1$s"

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    new-instance v4, Lorg/telegram/ui/DialogsActivity;

    invoke-direct {v4, v0}, Lorg/telegram/ui/DialogsActivity;-><init>(Landroid/os/Bundle;)V

    .line 1136
    .local v4, "fragment":Lorg/telegram/ui/DialogsActivity;
    new-instance v9, Lorg/telegram/ui/LaunchActivity$7$1$1;

    invoke-direct {v9, p0, v8}, Lorg/telegram/ui/LaunchActivity$7$1$1;-><init>(Lorg/telegram/ui/LaunchActivity$7$1;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v4, v9}, Lorg/telegram/ui/DialogsActivity;->setDelegate(Lorg/telegram/ui/DialogsActivity$DialogsActivityDelegate;)V

    .line 1149
    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$7$1;->this$1:Lorg/telegram/ui/LaunchActivity$7;

    iget-object v9, v9, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-virtual {v9, v4}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    goto :goto_2

    .line 1152
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v4    # "fragment":Lorg/telegram/ui/DialogsActivity;
    .end local v8    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    const/4 v5, 0x0

    .line 1153
    .local v5, "isBot":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1154
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    .line 1155
    const-string/jumbo v10, "chat_id"

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1156
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->chats:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$Chat;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Chat;->id:I

    neg-int v9, v9

    int-to-long v2, v9

    .line 1161
    .local v2, "dialog_id":J
    :goto_3
    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$7$1;->this$1:Lorg/telegram/ui/LaunchActivity$7;

    iget-object v9, v9, Lorg/telegram/ui/LaunchActivity$7;->val$botUser:Ljava/lang/String;

    if-eqz v9, :cond_5

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    iget-boolean v9, v9, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v9, :cond_5

    .line 1162
    const-string/jumbo v9, "botUser"

    iget-object v10, p0, Lorg/telegram/ui/LaunchActivity$7$1;->this$1:Lorg/telegram/ui/LaunchActivity$7;

    iget-object v10, v10, Lorg/telegram/ui/LaunchActivity$7;->val$botUser:Ljava/lang/String;

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    const/4 v5, 0x1

    .line 1165
    :cond_5
    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$7$1;->this$1:Lorg/telegram/ui/LaunchActivity$7;

    iget-object v9, v9, Lorg/telegram/ui/LaunchActivity$7;->val$messageId:Ljava/lang/Integer;

    if-eqz v9, :cond_6

    .line 1166
    const-string/jumbo v9, "message_id"

    iget-object v10, p0, Lorg/telegram/ui/LaunchActivity$7$1;->this$1:Lorg/telegram/ui/LaunchActivity$7;

    iget-object v10, v10, Lorg/telegram/ui/LaunchActivity$7;->val$messageId:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1168
    :cond_6
    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$800()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$800()Ljava/util/ArrayList;

    move-result-object v9

    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$800()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/ui/ActionBar/BaseFragment;

    move-object v6, v9

    .line 1169
    .local v6, "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :goto_4
    if-eqz v6, :cond_7

    invoke-static {v0, v6}, Lorg/telegram/messenger/MessagesController;->checkCanOpenChat(Landroid/os/Bundle;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1170
    :cond_7
    if-eqz v5, :cond_a

    if-eqz v6, :cond_a

    instance-of v9, v6, Lorg/telegram/ui/ChatActivity;

    if-eqz v9, :cond_a

    move-object v9, v6

    check-cast v9, Lorg/telegram/ui/ChatActivity;

    invoke-virtual {v9}, Lorg/telegram/ui/ChatActivity;->getDialogId()J

    move-result-wide v10

    cmp-long v9, v10, v2

    if-nez v9, :cond_a

    .line 1171
    check-cast v6, Lorg/telegram/ui/ChatActivity;

    .end local v6    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$7$1;->this$1:Lorg/telegram/ui/LaunchActivity$7;

    iget-object v9, v9, Lorg/telegram/ui/LaunchActivity$7;->val$botUser:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lorg/telegram/ui/ChatActivity;->setBotUser(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1158
    .end local v2    # "dialog_id":J
    :cond_8
    const-string/jumbo v10, "user_id"

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1159
    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$User;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$User;->id:I

    int-to-long v2, v9

    .restart local v2    # "dialog_id":J
    goto/16 :goto_3

    .line 1168
    :cond_9
    const/4 v6, 0x0

    goto :goto_4

    .line 1173
    .restart local v6    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    :cond_a
    new-instance v4, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v4, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    .line 1174
    .local v4, "fragment":Lorg/telegram/ui/ChatActivity;
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v9

    sget v10, Lorg/telegram/messenger/NotificationCenter;->closeChats:I

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1175
    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$7$1;->this$1:Lorg/telegram/ui/LaunchActivity$7;

    iget-object v9, v9, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v9}, Lorg/telegram/ui/LaunchActivity;->access$000(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v9, v4, v10, v11, v12}, Lorg/telegram/ui/ActionBar/ActionBarLayout;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;ZZZ)Z

    goto/16 :goto_2

    .line 1181
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "dialog_id":J
    .end local v4    # "fragment":Lorg/telegram/ui/ChatActivity;
    .end local v5    # "isBot":Z
    .end local v6    # "lastFragment":Lorg/telegram/ui/ActionBar/BaseFragment;
    .end local v7    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    :cond_b
    :try_start_2
    iget-object v9, p0, Lorg/telegram/ui/LaunchActivity$7$1;->this$1:Lorg/telegram/ui/LaunchActivity$7;

    iget-object v9, v9, Lorg/telegram/ui/LaunchActivity$7;->this$0:Lorg/telegram/ui/LaunchActivity;

    const-string/jumbo v10, "NoUsernameFound"

    const v11, 0x7f07034d

    invoke-static {v10, v11}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    .line 1182
    :catch_2
    move-exception v1

    .line 1183
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v9, "tmessages"

    invoke-static {v9, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method
