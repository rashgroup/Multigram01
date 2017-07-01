.class Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;
.super Ljava/lang/Object;
.source "MentionsAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 286
    iput-object p1, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iput-object p2, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 289
    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextUsername:Ljava/lang/String;
    invoke-static {v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$700(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->val$username:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->contextUsernameReqid:I
    invoke-static {v6, v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$802(Lorg/telegram/ui/Adapters/MentionsAdapter;I)I

    .line 293
    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v6, v10}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$002(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$User;

    .line 294
    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
    invoke-static {v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$900(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 295
    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v6, :cond_2

    .line 296
    iget-object v4, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;

    .line 297
    .local v4, "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 298
    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/tgnet/TLRPC$User;

    .line 299
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-boolean v6, v5, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v6, :cond_2

    iget-object v6, v5, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_placeholder:Ljava/lang/String;

    if-eqz v6, :cond_2

    .line 300
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v6

    invoke-virtual {v6, v5, v8}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 301
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;->users:Ljava/util/ArrayList;

    invoke-virtual {v6, v7, v10, v9, v9}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 302
    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v6, v5}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$002(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$User;

    .line 303
    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    iget-boolean v6, v6, Lorg/telegram/tgnet/TLRPC$User;->bot_inline_geo:Z

    if-eqz v6, :cond_2

    .line 304
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v7, "Notifications"

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 305
    .local v3, "preferences":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "inlinegeo_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    iget v7, v7, Lorg/telegram/tgnet/TLRPC$User;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 306
    .local v0, "allowGeo":Z
    if-nez v0, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 307
    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v2

    .line 308
    .local v2, "foundContextBotFinal":Lorg/telegram/tgnet/TLRPC$User;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v6

    invoke-virtual {v6}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 309
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string/jumbo v6, "ShareYouLocationTitle"

    const v7, 0x7f070479

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 310
    const-string/jumbo v6, "ShareYouLocationInline"

    const v7, 0x7f070478

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 311
    const-string/jumbo v6, "OK"

    const v7, 0x7f07039f

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1$1;

    invoke-direct {v7, p0, v2}, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1$1;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;Lorg/telegram/tgnet/TLRPC$User;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 321
    const-string/jumbo v6, "Cancel"

    const v7, 0x7f0700f2

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1$2;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1$2;-><init>(Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;)V

    invoke-virtual {v1, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 327
    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->parentFragment:Lorg/telegram/ui/ActionBar/BaseFragment;
    invoke-static {v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/ActionBar/BaseFragment;

    move-result-object v6

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/telegram/ui/ActionBar/BaseFragment;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 335
    .end local v0    # "allowGeo":Z
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "foundContextBotFinal":Lorg/telegram/tgnet/TLRPC$User;
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    .end local v4    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    :goto_1
    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    if-nez v6, :cond_4

    .line 336
    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # setter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->noUserName:Z
    invoke-static {v6, v9}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$602(Lorg/telegram/ui/Adapters/MentionsAdapter;Z)Z

    goto/16 :goto_0

    .line 329
    .restart local v0    # "allowGeo":Z
    .restart local v3    # "preferences":Landroid/content/SharedPreferences;
    .restart local v4    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    .restart local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_3
    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # invokes: Lorg/telegram/ui/Adapters/MentionsAdapter;->checkLocationPermissionsOrStart()V
    invoke-static {v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1100(Lorg/telegram/ui/Adapters/MentionsAdapter;)V

    goto :goto_1

    .line 338
    .end local v0    # "allowGeo":Z
    .end local v3    # "preferences":Landroid/content/SharedPreferences;
    .end local v4    # "res":Lorg/telegram/tgnet/TLRPC$TL_contacts_resolvedPeer;
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4
    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    invoke-static {v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 339
    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->delegate:Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;
    invoke-static {v6}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$1200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;

    move-result-object v6

    invoke-interface {v6, v9}, Lorg/telegram/ui/Adapters/MentionsAdapter$MentionsAdapterDelegate;->onContextSearch(Z)V

    .line 341
    :cond_5
    iget-object v6, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v6, v6, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    iget-object v7, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v7, v7, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->foundContextBot:Lorg/telegram/tgnet/TLRPC$User;
    invoke-static {v7}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$000(Lorg/telegram/ui/Adapters/MentionsAdapter;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v7

    iget-object v8, p0, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1$1;->this$2:Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$3$1;->this$1:Lorg/telegram/ui/Adapters/MentionsAdapter$3;

    iget-object v8, v8, Lorg/telegram/ui/Adapters/MentionsAdapter$3;->this$0:Lorg/telegram/ui/Adapters/MentionsAdapter;

    # getter for: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchingContextQuery:Ljava/lang/String;
    invoke-static {v8}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$200(Lorg/telegram/ui/Adapters/MentionsAdapter;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, ""

    # invokes: Lorg/telegram/ui/Adapters/MentionsAdapter;->searchForContextBotResults(Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8, v9}, Lorg/telegram/ui/Adapters/MentionsAdapter;->access$300(Lorg/telegram/ui/Adapters/MentionsAdapter;Lorg/telegram/tgnet/TLRPC$User;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
