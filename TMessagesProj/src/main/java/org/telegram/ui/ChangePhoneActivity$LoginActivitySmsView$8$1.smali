.class Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;
.super Ljava/lang/Object;
.source "ChangePhoneActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 1302
    iput-object p1, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iput-object p2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 1305
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChangePhoneActivity;->needHideProgress()V

    .line 1306
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextPressed:Z
    invoke-static {v2, v7}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2002(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Z)Z

    .line 1307
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v2, :cond_1

    .line 1308
    iget-object v0, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v0, Lorg/telegram/tgnet/TLRPC$User;

    .line 1309
    .local v0, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyTimer()V
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3700(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    .line 1310
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->destroyCodeTimer()V
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3000(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    .line 1311
    invoke-static {v0}, Lorg/telegram/messenger/UserConfig;->setCurrentUser(Lorg/telegram/tgnet/TLRPC$User;)V

    .line 1312
    invoke-static {v5}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1314
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1315
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v5, v5}, Lorg/telegram/messenger/MessagesStorage;->putUsersAndChats(Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V

    .line 1316
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-virtual {v2, v0, v7}, Lorg/telegram/messenger/MessagesController;->putUser(Lorg/telegram/tgnet/TLRPC$User;Z)Z

    .line 1317
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    invoke-virtual {v2}, Lorg/telegram/ui/ChangePhoneActivity;->finishFragment()V

    .line 1345
    .end local v0    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v1    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    :cond_0
    :goto_0
    return-void

    .line 1319
    :cond_1
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->lastError:Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2502(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Ljava/lang/String;)Ljava/lang/String;

    .line 1320
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-eq v2, v8, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-eq v2, v4, :cond_3

    :cond_2
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-eq v2, v8, :cond_3

    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->nextType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$2100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 1321
    :cond_3
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # invokes: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->createTimer()V
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$4100(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)V

    .line 1323
    :cond_4
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 1324
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForSms(Z)V

    .line 1325
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveSmsCode:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 1330
    :cond_5
    :goto_1
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # setter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->waitingForEvent:Z
    invoke-static {v2, v5}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3902(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;Z)Z

    .line 1331
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-eq v2, v6, :cond_0

    .line 1332
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PHONE_NUMBER_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1333
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    const-string/jumbo v3, "InvalidPhoneNumber"

    const v4, 0x7f070281

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChangePhoneActivity;->needShowAlert(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1326
    :cond_6
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    # getter for: Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->currentType:I
    invoke-static {v2}, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->access$3800(Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;)I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 1327
    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->setWaitingForCall(Z)V

    .line 1328
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v2

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v3, v3, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    sget v4, Lorg/telegram/messenger/NotificationCenter;->didReceiveCall:I

    invoke-virtual {v2, v3, v4}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    goto :goto_1

    .line 1334
    :cond_7
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PHONE_CODE_EMPTY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PHONE_CODE_INVALID"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1335
    :cond_8
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    const-string/jumbo v3, "InvalidCode"

    const v4, 0x7f07027d

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChangePhoneActivity;->needShowAlert(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1336
    :cond_9
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "PHONE_CODE_EXPIRED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1337
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    const-string/jumbo v3, "CodeExpired"

    const v4, 0x7f070171

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChangePhoneActivity;->needShowAlert(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1338
    :cond_a
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    const-string/jumbo v3, "FLOOD_WAIT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1339
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    const-string/jumbo v3, "FloodWait"

    const v4, 0x7f0701fb

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChangePhoneActivity;->needShowAlert(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1341
    :cond_b
    iget-object v2, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->this$2:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8;->this$1:Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;

    iget-object v2, v2, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView;->this$0:Lorg/telegram/ui/ChangePhoneActivity;

    iget-object v3, p0, Lorg/telegram/ui/ChangePhoneActivity$LoginActivitySmsView$8$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$TL_error;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/telegram/ui/ChangePhoneActivity;->needShowAlert(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
