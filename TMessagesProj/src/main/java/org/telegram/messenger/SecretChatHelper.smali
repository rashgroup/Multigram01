.class public Lorg/telegram/messenger/SecretChatHelper;
.super Ljava/lang/Object;
.source "SecretChatHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;
    }
.end annotation


# static fields
.field public static final CURRENT_SECRET_CHAT_LAYER:I = 0x2e

.field private static volatile Instance:Lorg/telegram/messenger/SecretChatHelper;


# instance fields
.field private acceptingChats:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;"
        }
    .end annotation
.end field

.field public delayedEncryptedChatUpdates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Update;",
            ">;"
        }
    .end annotation
.end field

.field private pendingEncMessagesToDelete:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private secretHolesQueue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private sendingNotifyLayer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startingSecretChat:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/SecretChatHelper;->Instance:Lorg/telegram/messenger/SecretChatHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    return-void
.end method

.method static synthetic access$000(Lorg/telegram/messenger/SecretChatHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/SecretChatHelper;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$EncryptedFile;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/SecretChatHelper;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$EncryptedFile;
    .param p3, "x3"    # Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SecretChatHelper;->updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$EncryptedFile;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/telegram/messenger/SecretChatHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/SecretChatHelper;

    .prologue
    .line 33
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$302(Lorg/telegram/messenger/SecretChatHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/SecretChatHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    return p1
.end method

.method private applyPeerLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V
    .locals 9
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "newPeerLayer"    # I

    .prologue
    const/16 v8, 0x2e

    const/16 v5, 0x10

    .line 845
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    .line 846
    .local v0, "currentPeerLayer":I
    if-gt p2, v0, :cond_0

    .line 872
    :goto_0
    return-void

    .line 849
    :cond_0
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    array-length v4, v4

    if-ne v4, v5, :cond_1

    if-lt v0, v8, :cond_1

    .line 851
    :try_start_0
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    const/4 v5, 0x0

    iget-object v6, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v6, v6

    invoke-static {v4, v5, v6}, Lorg/telegram/messenger/Utilities;->computeSHA256([BII)[B

    move-result-object v3

    .line 852
    .local v3, "sha256":[B
    const/16 v4, 0x24

    new-array v2, v4, [B

    .line 853
    .local v2, "key_hash":[B
    iget-object v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x10

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 854
    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x14

    invoke-static {v3, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 855
    iput-object v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_hash:[B

    .line 856
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    .end local v2    # "key_hash":[B
    .end local v3    # "sha256":[B
    :cond_1
    :goto_1
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4, p2}, Lorg/telegram/messenger/AndroidUtilities;->setPeerLayerVersion(II)I

    move-result v4

    iput v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    .line 862
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 863
    if-ge v0, v8, :cond_2

    .line 864
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 866
    :cond_2
    new-instance v4, Lorg/telegram/messenger/SecretChatHelper$5;

    invoke-direct {v4, p0, p1}, Lorg/telegram/messenger/SecretChatHelper$5;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 857
    :catch_0
    move-exception v1

    .line 858
    .local v1, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;
    .locals 7
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "decryptedMessage"    # Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 122
    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 124
    .local v6, "newMsg":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 125
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 126
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v0

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 127
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v0

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 128
    iput-boolean v3, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    .line 129
    iput-boolean v3, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->out:Z

    .line 130
    const/16 v0, 0x100

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 131
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v4, v0

    const/16 v0, 0x20

    shl-long/2addr v4, v0

    iput-wide v4, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    .line 132
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    iput-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 133
    iput v3, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->send_state:I

    .line 134
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    if-ne v0, v4, :cond_1

    .line 135
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 139
    :goto_0
    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-nez v0, :cond_0

    instance-of v0, p2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v0, :cond_2

    .line 140
    :cond_0
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v0

    iput v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 144
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v4

    iput-wide v4, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->random_id:J

    .line 145
    invoke-static {v2}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v1, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    move v4, v3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 151
    return-object v6

    .line 137
    .end local v1    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_1
    iget-object v0, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_0

    .line 142
    :cond_2
    iput v2, v6, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    goto :goto_1
.end method

.method public static getInstance()Lorg/telegram/messenger/SecretChatHelper;
    .locals 4

    .prologue
    .line 79
    sget-object v0, Lorg/telegram/messenger/SecretChatHelper;->Instance:Lorg/telegram/messenger/SecretChatHelper;

    .line 80
    .local v0, "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    if-nez v0, :cond_1

    .line 81
    const-class v3, Lorg/telegram/messenger/SecretChatHelper;

    monitor-enter v3

    .line 82
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/SecretChatHelper;->Instance:Lorg/telegram/messenger/SecretChatHelper;

    .line 83
    if-nez v0, :cond_0

    .line 84
    new-instance v1, Lorg/telegram/messenger/SecretChatHelper;

    invoke-direct {v1}, Lorg/telegram/messenger/SecretChatHelper;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    .local v1, "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/SecretChatHelper;->Instance:Lorg/telegram/messenger/SecretChatHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 86
    .end local v1    # "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 88
    :cond_1
    return-object v0

    .line 86
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/SecretChatHelper;
    goto :goto_0
.end method

.method public static isSecretInvisibleMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 632
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSecretVisibleMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z
    .locals 1
    .param p0, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 628
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$EncryptedFile;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Ljava/lang/String;)V
    .locals 15
    .param p1, "newMsgObj"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "file"    # Lorg/telegram/tgnet/TLRPC$EncryptedFile;
    .param p3, "decryptedMessage"    # Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    .param p4, "originalPath"    # Ljava/lang/String;

    .prologue
    .line 560
    move-object/from16 v0, p1

    iget-object v13, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 561
    .local v13, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz p2, :cond_0

    .line 562
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v2, :cond_1

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v2, :cond_1

    .line 563
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iget-object v4, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 564
    .local v14, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 565
    .local v11, "fileName":Ljava/lang/String;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;-><init>()V

    iput-object v2, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 566
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    .line 567
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    .line 568
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 569
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 570
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    .line 571
    iget-object v2, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->key_fingerprint:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 572
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 573
    .local v12, "fileName2":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v2

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 574
    .local v8, "cacheFile":Ljava/io/File;
    invoke-static {v14}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v9

    .line 575
    .local v9, "cacheFile2":Ljava/io/File;
    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 576
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v2

    iget-object v4, v14, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const/4 v5, 0x1

    invoke-virtual {v2, v11, v12, v4, v5}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Z)V

    .line 577
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 578
    .local v3, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 625
    .end local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v8    # "cacheFile":Ljava/io/File;
    .end local v9    # "cacheFile2":Ljava/io/File;
    .end local v11    # "fileName":Ljava/lang/String;
    .end local v12    # "fileName2":Ljava/lang/String;
    .end local v14    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v2, :cond_0

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v2, :cond_0

    .line 583
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v10, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 584
    .local v10, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 585
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 586
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 587
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v4, v10, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 588
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    .line 589
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 590
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 591
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 592
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 593
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v10, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 594
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v4, v2, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 595
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$Document;->caption:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v10, Lorg/telegram/tgnet/TLRPC$Document;->caption:Ljava/lang/String;

    :goto_1
    iput-object v2, v4, Lorg/telegram/tgnet/TLRPC$Document;->caption:Ljava/lang/String;

    .line 597
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 598
    new-instance v8, Ljava/io/File;

    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 599
    .restart local v8    # "cacheFile":Ljava/io/File;
    iget-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v2}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v9

    .line 600
    .restart local v9    # "cacheFile2":Ljava/io/File;
    invoke-virtual {v8, v9}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 601
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 602
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 603
    const-string/jumbo v2, ""

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 617
    .end local v8    # "cacheFile":Ljava/io/File;
    .end local v9    # "cacheFile2":Ljava/io/File;
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .restart local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    goto/16 :goto_0

    .line 595
    .end local v3    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_3
    const-string/jumbo v2, ""

    goto :goto_1
.end method


# virtual methods
.method public acceptSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 3
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 1620
    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1726
    :goto_0
    return-void

    .line 1623
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;

    iget v2, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    .line 1625
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;
    const/16 v1, 0x100

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    .line 1626
    sget v1, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    .line 1627
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$13;

    invoke-direct {v2, p0, p1}, Lorg/telegram/messenger/SecretChatHelper$13;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    goto :goto_0
.end method

.method public checkSecretHoles(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;)V
    .locals 13
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1356
    .local p2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 1357
    .local v10, "holes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;>;"
    if-nez v10, :cond_1

    .line 1396
    :cond_0
    :goto_0
    return-void

    .line 1360
    :cond_1
    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$8;

    invoke-direct {v0, p0}, Lorg/telegram/messenger/SecretChatHelper$8;-><init>(Lorg/telegram/messenger/SecretChatHelper;)V

    invoke-static {v10, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1372
    const/4 v12, 0x0

    .line 1373
    .local v12, "update":Z
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 1374
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;

    .line 1375
    .local v9, "holder":Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;
    iget-object v0, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    if-eq v0, v1, :cond_2

    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iget-object v1, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    add-int/lit8 v1, v1, -0x2

    if-ne v0, v1, :cond_4

    .line 1376
    :cond_2
    iget-object v0, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->layer:I

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->applyPeerLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    .line 1377
    iget-object v0, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iput v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 1378
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1379
    add-int/lit8 v8, v8, -0x1

    .line 1380
    const/4 v12, 0x1

    .line 1382
    iget-object v2, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    iget v3, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->date:I

    iget-wide v4, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->random_id:J

    iget-object v0, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->message:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    iget-boolean v7, v9, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->new_key_used:Z

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lorg/telegram/messenger/SecretChatHelper;->processDecryptedObject(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedFile;IJLorg/telegram/tgnet/TLObject;Z)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v11

    .line 1383
    .local v11, "message":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v11, :cond_3

    .line 1384
    invoke-virtual {p2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1390
    .end local v9    # "holder":Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;
    .end local v11    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1391
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    :cond_5
    if-eqz v12, :cond_0

    .line 1394
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatSeq(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->acceptingChats:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 94
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 95
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 96
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    .line 99
    return-void
.end method

.method public declineSecretChat(I)V
    .locals 3
    .param p1, "chat_id"    # I

    .prologue
    .line 1609
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_discardEncryption;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_discardEncryption;-><init>()V

    .line 1610
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_discardEncryption;
    iput p1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_discardEncryption;->chat_id:I

    .line 1611
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$12;

    invoke-direct {v2, p0}, Lorg/telegram/messenger/SecretChatHelper$12;-><init>(Lorg/telegram/messenger/SecretChatHelper;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 1617
    return-void
.end method

.method protected decryptMessage(Lorg/telegram/tgnet/TLRPC$EncryptedMessage;)Ljava/util/ArrayList;
    .locals 27
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$EncryptedMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedMessage;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1399
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    move-object/from16 v0, p1

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->chat_id:I

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChatDB(I)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v11

    .line 1400
    .local v11, "chat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v11, :cond_0

    instance-of v2, v11, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    if-eqz v2, :cond_1

    .line 1401
    :cond_0
    const/16 v24, 0x0

    .line 1516
    :goto_0
    return-object v24

    .line 1405
    :cond_1
    :try_start_0
    new-instance v17, Lorg/telegram/tgnet/NativeByteBuffer;

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->bytes:[B

    array-length v2, v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;-><init>(I)V

    .line 1406
    .local v17, "is":Lorg/telegram/tgnet/NativeByteBuffer;
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->bytes:[B

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->writeBytes([B)V

    .line 1407
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->position(I)V

    .line 1408
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt64(Z)J

    move-result-wide v14

    .line 1409
    .local v14, "fingerprint":J
    const/16 v19, 0x0

    .line 1410
    .local v19, "keyToDecrypt":[B
    const/4 v9, 0x0

    .line 1411
    .local v9, "new_key_used":Z
    iget-wide v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    cmp-long v2, v2, v14

    if-nez v2, :cond_4

    .line 1412
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    move-object/from16 v19, v0

    .line 1418
    :cond_2
    :goto_1
    if-eqz v19, :cond_11

    .line 1419
    const/16 v2, 0x10

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readData(IZ)[B

    move-result-object v22

    .line 1420
    .local v22, "messageKey":[B
    const/4 v2, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1, v2}, Lorg/telegram/messenger/MessageKeyData;->generateMessageKeyData([B[BZ)Lorg/telegram/messenger/MessageKeyData;

    move-result-object v18

    .line 1422
    .local v18, "keyData":Lorg/telegram/messenger/MessageKeyData;
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    move-object/from16 v0, v18

    iget-object v3, v0, Lorg/telegram/messenger/MessageKeyData;->aesKey:[B

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/messenger/MessageKeyData;->aesIv:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x18

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v26

    add-int/lit8 v8, v26, -0x18

    invoke-static/range {v2 .. v8}, Lorg/telegram/messenger/Utilities;->aesIgeEncryption(Ljava/nio/ByteBuffer;[B[BZZII)V

    .line 1424
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v21

    .line 1425
    .local v21, "len":I
    if-ltz v21, :cond_3

    invoke-virtual/range {v17 .. v17}, Lorg/telegram/tgnet/NativeByteBuffer;->limit()I

    move-result v2

    add-int/lit8 v2, v2, -0x1c

    move/from16 v0, v21

    if-le v0, v2, :cond_5

    .line 1426
    :cond_3
    const/16 v24, 0x0

    goto :goto_0

    .line 1413
    .end local v18    # "keyData":Lorg/telegram/messenger/MessageKeyData;
    .end local v21    # "len":I
    .end local v22    # "messageKey":[B
    :cond_4
    iget-wide v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-wide v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    cmp-long v2, v2, v14

    if-nez v2, :cond_2

    .line 1414
    iget-object v0, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    move-object/from16 v19, v0

    .line 1415
    const/4 v9, 0x1

    goto :goto_1

    .line 1428
    .restart local v18    # "keyData":Lorg/telegram/messenger/MessageKeyData;
    .restart local v21    # "len":I
    .restart local v22    # "messageKey":[B
    :cond_5
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x18

    add-int/lit8 v4, v21, 0x4

    add-int/lit8 v4, v4, 0x18

    move-object/from16 v0, v17

    iget-object v5, v0, Lorg/telegram/tgnet/NativeByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v3, v4}, Lorg/telegram/messenger/Utilities;->computeSHA1(Ljava/nio/ByteBuffer;II)[B

    move-result-object v23

    .line 1429
    .local v23, "messageKeyFull":[B
    const/4 v2, 0x0

    move-object/from16 v0, v23

    array-length v3, v0

    add-int/lit8 v3, v3, -0x10

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v2, v1, v3}, Lorg/telegram/messenger/Utilities;->arraysEquals([BI[BI)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1430
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1433
    :cond_6
    invoke-static {}, Lorg/telegram/tgnet/TLClassStore;->Instance()Lorg/telegram/tgnet/TLClassStore;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lorg/telegram/tgnet/NativeByteBuffer;->readInt32(Z)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3, v4}, Lorg/telegram/tgnet/TLClassStore;->TLdeserialize(Lorg/telegram/tgnet/NativeByteBuffer;IZ)Lorg/telegram/tgnet/TLObject;

    move-result-object v8

    .line 1435
    .local v8, "object":Lorg/telegram/tgnet/TLObject;
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1436
    if-nez v9, :cond_7

    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_7

    .line 1437
    iget-short v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 1439
    :cond_7
    instance-of v2, v8, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    if-eqz v2, :cond_f

    .line 1440
    move-object v0, v8

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    move-object/from16 v20, v0

    .line 1441
    .local v20, "layer":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    if-nez v2, :cond_8

    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    if-nez v2, :cond_8

    .line 1442
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v3

    if-ne v2, v3, :cond_9

    .line 1443
    const/4 v2, 0x1

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 1448
    :cond_8
    :goto_2
    move-object/from16 v0, v20

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->random_bytes:[B

    array-length v2, v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_a

    .line 1449
    const-string/jumbo v2, "tmessages"

    const-string/jumbo v3, "got random bytes less than needed"

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1450
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1445
    :cond_9
    const/4 v2, 0x1

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1512
    .end local v8    # "object":Lorg/telegram/tgnet/TLObject;
    .end local v9    # "new_key_used":Z
    .end local v14    # "fingerprint":J
    .end local v17    # "is":Lorg/telegram/tgnet/NativeByteBuffer;
    .end local v18    # "keyData":Lorg/telegram/messenger/MessageKeyData;
    .end local v19    # "keyToDecrypt":[B
    .end local v20    # "layer":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;
    .end local v21    # "len":I
    .end local v22    # "messageKey":[B
    .end local v23    # "messageKeyFull":[B
    :catch_0
    move-exception v13

    .line 1513
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v13}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1516
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_3
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1452
    .restart local v8    # "object":Lorg/telegram/tgnet/TLObject;
    .restart local v9    # "new_key_used":Z
    .restart local v14    # "fingerprint":J
    .restart local v17    # "is":Lorg/telegram/tgnet/NativeByteBuffer;
    .restart local v18    # "keyData":Lorg/telegram/messenger/MessageKeyData;
    .restart local v19    # "keyToDecrypt":[B
    .restart local v20    # "layer":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;
    .restart local v21    # "len":I
    .restart local v22    # "messageKey":[B
    .restart local v23    # "messageKeyFull":[B
    :cond_a
    :try_start_1
    const-string/jumbo v2, "tmessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "current chat in_seq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " out_seq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1453
    const-string/jumbo v2, "tmessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "got message with in_seq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->in_seq_no:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " out_seq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1454
    move-object/from16 v0, v20

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    if-ge v2, v3, :cond_b

    .line 1455
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1457
    :cond_b
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    if-eq v2, v3, :cond_e

    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    move-object/from16 v0, v20

    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    add-int/lit8 v3, v3, -0x2

    if-eq v2, v3, :cond_e

    .line 1458
    const-string/jumbo v2, "tmessages"

    const-string/jumbo v3, "got hole"

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    .line 1460
    .local v10, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;>;"
    if-nez v10, :cond_c

    .line 1461
    new-instance v10, Ljava/util/ArrayList;

    .end local v10    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;>;"
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1462
    .restart local v10    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1464
    :cond_c
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_d

    .line 1465
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/telegram/messenger/SecretChatHelper;->secretHolesQueue:Ljava/util/HashMap;

    iget v3, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1466
    new-instance v25, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    invoke-direct/range {v25 .. v25}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;-><init>()V

    .line 1467
    .local v25, "newChat":Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move-object/from16 v0, v25

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->id:I

    .line 1468
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    move-object/from16 v0, v25

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->user_id:I

    .line 1469
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    move-object/from16 v0, v25

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->auth_key:[B

    .line 1470
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    move-object/from16 v0, v25

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_create_date:I

    .line 1471
    iget-short v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    move-object/from16 v0, v25

    iput-short v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_use_count_in:S

    .line 1472
    iget-short v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    move-object/from16 v0, v25

    iput-short v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_use_count_out:S

    .line 1473
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    move-object/from16 v0, v25

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->seq_in:I

    .line 1474
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    move-object/from16 v0, v25

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->seq_out:I

    .line 1475
    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v2, v0, v1}, Lorg/telegram/messenger/SecretChatHelper$9;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1483
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    .line 1484
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1487
    .end local v25    # "newChat":Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;
    :cond_d
    new-instance v16, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;-><init>()V

    .line 1488
    .local v16, "holder":Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->layer:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;

    .line 1489
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    move-object/from16 v0, v16

    iput-object v2, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    .line 1490
    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->random_id:J

    move-object/from16 v0, v16

    iput-wide v2, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->random_id:J

    .line 1491
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->date:I

    move-object/from16 v0, v16

    iput v2, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->date:I

    .line 1492
    move-object/from16 v0, v16

    iput-boolean v9, v0, Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;->new_key_used:Z

    .line 1493
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1494
    const/16 v24, 0x0

    goto/16 :goto_0

    .line 1496
    .end local v10    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;>;"
    .end local v16    # "holder":Lorg/telegram/messenger/SecretChatHelper$TL_decryptedMessageHolder;
    :cond_e
    move-object/from16 v0, v20

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->layer:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2}, Lorg/telegram/messenger/SecretChatHelper;->applyPeerLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    .line 1497
    move-object/from16 v0, v20

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->out_seq_no:I

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 1498
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatSeq(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1499
    move-object/from16 v0, v20

    iget-object v8, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;->message:Lorg/telegram/tgnet/TLRPC$DecryptedMessage;

    .line 1501
    .end local v20    # "layer":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageLayer;
    :cond_f
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 1502
    .local v24, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->file:Lorg/telegram/tgnet/TLRPC$EncryptedFile;

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->date:I

    move-object/from16 v0, p1

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedMessage;->random_id:J

    move-object/from16 v2, p0

    move-object v3, v11

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/SecretChatHelper;->processDecryptedObject(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedFile;IJLorg/telegram/tgnet/TLObject;Z)Lorg/telegram/tgnet/TLRPC$Message;

    move-result-object v12

    .line 1503
    .local v12, "decryptedMessage":Lorg/telegram/tgnet/TLRPC$Message;
    if-eqz v12, :cond_10

    .line 1504
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1506
    :cond_10
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Lorg/telegram/messenger/SecretChatHelper;->checkSecretHoles(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1509
    .end local v8    # "object":Lorg/telegram/tgnet/TLObject;
    .end local v12    # "decryptedMessage":Lorg/telegram/tgnet/TLRPC$Message;
    .end local v18    # "keyData":Lorg/telegram/messenger/MessageKeyData;
    .end local v21    # "len":I
    .end local v22    # "messageKey":[B
    .end local v23    # "messageKeyFull":[B
    .end local v24    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    :cond_11
    invoke-virtual/range {v17 .. v17}, Lorg/telegram/tgnet/NativeByteBuffer;->reuse()V

    .line 1510
    const-string/jumbo v2, "tmessages"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "fingerprint mismatch "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method protected performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V
    .locals 9
    .param p1, "req"    # Lorg/telegram/tgnet/TLRPC$DecryptedMessage;
    .param p2, "newMsgObj"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p3, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p4, "encryptedFile"    # Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    .param p5, "originalPath"    # Ljava/lang/String;
    .param p6, "newMsg"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 636
    if-eqz p1, :cond_0

    iget-object v0, p3, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v0, :cond_0

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-nez v0, :cond_0

    instance-of v0, p3, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v0, :cond_1

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/telegram/messenger/SendMessagesHelper;->putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 640
    sget-object v8, Lorg/telegram/messenger/Utilities;->stageQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v0, Lorg/telegram/messenger/SecretChatHelper$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move-object v6, p6

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/SecretChatHelper$4;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public processAcceptedSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 13
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    .line 1545
    new-instance v9, Ljava/math/BigInteger;

    const/4 v10, 0x1

    sget-object v11, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v9, v10, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1546
    .local v9, "p":Ljava/math/BigInteger;
    new-instance v5, Ljava/math/BigInteger;

    const/4 v10, 0x1

    iget-object v11, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a_or_b:[B

    invoke-direct {v5, v10, v11}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1548
    .local v5, "i_authKey":Ljava/math/BigInteger;
    invoke-static {v5, v9}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1549
    iget v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {p0, v10}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    .line 1606
    :goto_0
    return-void

    .line 1553
    :cond_0
    new-instance v10, Ljava/math/BigInteger;

    const/4 v11, 0x1

    iget-object v12, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    invoke-direct {v10, v11, v12}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v5, v10, v9}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 1555
    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 1556
    .local v1, "authKey":[B
    array-length v10, v1

    const/16 v11, 0x100

    if-le v10, v11, :cond_2

    .line 1557
    const/16 v10, 0x100

    new-array v4, v10, [B

    .line 1558
    .local v4, "correctedAuth":[B
    array-length v10, v1

    add-int/lit16 v10, v10, -0x100

    const/4 v11, 0x0

    const/16 v12, 0x100

    invoke-static {v1, v10, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1559
    move-object v1, v4

    .line 1568
    .end local v4    # "correctedAuth":[B
    :cond_1
    :goto_1
    invoke-static {v1}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v2

    .line 1569
    .local v2, "authKeyHash":[B
    const/16 v10, 0x8

    new-array v3, v10, [B

    .line 1570
    .local v3, "authKeyId":[B
    array-length v10, v2

    add-int/lit8 v10, v10, -0x8

    const/4 v11, 0x0

    const/16 v12, 0x8

    invoke-static {v2, v10, v3, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1571
    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v6

    .line 1572
    .local v6, "fingerprint":J
    iget-wide v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    cmp-long v10, v10, v6

    if-nez v10, :cond_4

    .line 1573
    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 1574
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v10

    invoke-virtual {v10}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v10

    iput v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 1575
    const/4 v10, 0x0

    iput v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 1576
    const/4 v10, 0x1

    iput v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 1577
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    invoke-virtual {v10, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1578
    new-instance v10, Lorg/telegram/messenger/SecretChatHelper$10;

    invoke-direct {v10, p0, p1}, Lorg/telegram/messenger/SecretChatHelper$10;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1560
    .end local v2    # "authKeyHash":[B
    .end local v3    # "authKeyId":[B
    .end local v6    # "fingerprint":J
    :cond_2
    array-length v10, v1

    const/16 v11, 0x100

    if-ge v10, v11, :cond_1

    .line 1561
    const/16 v10, 0x100

    new-array v4, v10, [B

    .line 1562
    .restart local v4    # "correctedAuth":[B
    const/4 v10, 0x0

    array-length v11, v1

    rsub-int v11, v11, 0x100

    array-length v12, v1

    invoke-static {v1, v10, v4, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1563
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    array-length v10, v1

    rsub-int v10, v10, 0x100

    if-ge v0, v10, :cond_3

    .line 1564
    const/4 v10, 0x0

    aput-byte v10, v1, v0

    .line 1563
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1566
    :cond_3
    move-object v1, v4

    goto :goto_1

    .line 1587
    .end local v0    # "a":I
    .end local v4    # "correctedAuth":[B
    .restart local v2    # "authKeyHash":[B
    .restart local v3    # "authKeyId":[B
    .restart local v6    # "fingerprint":J
    :cond_4
    new-instance v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    invoke-direct {v8}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;-><init>()V

    .line 1588
    .local v8, "newChat":Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;
    iget v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    iput v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->id:I

    .line 1589
    iget v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    iput v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->user_id:I

    .line 1590
    iget-object v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iput-object v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->auth_key:[B

    .line 1591
    iget v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    iput v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_create_date:I

    .line 1592
    iget-short v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    iput-short v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_use_count_in:S

    .line 1593
    iget-short v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    iput-short v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_use_count_out:S

    .line 1594
    iget v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iput v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->seq_in:I

    .line 1595
    iget v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    iput v10, v8, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->seq_out:I

    .line 1596
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v10

    invoke-virtual {v10, v8}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1597
    new-instance v10, Lorg/telegram/messenger/SecretChatHelper$11;

    invoke-direct {v10, p0, v8}, Lorg/telegram/messenger/SecretChatHelper$11;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V

    invoke-static {v10}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1604
    iget v10, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {p0, v10}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    goto/16 :goto_0
.end method

.method public processDecryptedObject(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedFile;IJLorg/telegram/tgnet/TLObject;Z)Lorg/telegram/tgnet/TLRPC$Message;
    .locals 40
    .param p1, "chat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "file"    # Lorg/telegram/tgnet/TLRPC$EncryptedFile;
    .param p3, "date"    # I
    .param p4, "random_id"    # J
    .param p6, "object"    # Lorg/telegram/tgnet/TLObject;
    .param p7, "new_key_used"    # Z

    .prologue
    .line 875
    if-eqz p6, :cond_48

    .line 876
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    move/from16 v24, v0

    .line 877
    .local v24, "from_id":I
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move/from16 v0, v24

    if-ne v0, v4, :cond_0

    .line 878
    move-object/from16 v0, p1

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    move/from16 v24, v0

    .line 881
    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v5, 0x14

    if-lt v4, v5, :cond_1

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    move-object/from16 v0, p1

    iget-short v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    const/16 v5, 0x78

    if-lt v4, v5, :cond_1

    .line 882
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/SecretChatHelper;->requestNewSecretChatKey(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 885
    :cond_1
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-nez v4, :cond_7

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_7

    if-nez p7, :cond_7

    .line 886
    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 887
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 888
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 902
    :cond_2
    :goto_0
    move-object/from16 v0, p6

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v4, :cond_27

    move-object/from16 v18, p6

    .line 903
    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 905
    .local v18, "decryptedMessage":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v5, 0x11

    if-lt v4, v5, :cond_8

    .line 906
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .line 907
    .local v30, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_message;
    move-object/from16 v0, v18

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    move-object/from16 v0, v30

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    .line 908
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->entities:Ljava/util/ArrayList;

    .line 913
    :goto_1
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->message:Ljava/lang/String;

    .line 914
    move/from16 v0, p3

    move-object/from16 v1, v30

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    .line 915
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v30

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->id:I

    move-object/from16 v0, v30

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->local_id:I

    .line 916
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 917
    move/from16 v0, v24

    move-object/from16 v1, v30

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_message;->from_id:I

    .line 918
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 919
    move-wide/from16 v0, p4

    move-object/from16 v2, v30

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$TL_message;->random_id:J

    .line 920
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 921
    const/4 v4, 0x1

    move-object/from16 v0, v30

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->unread:Z

    .line 922
    const/16 v4, 0x300

    move-object/from16 v0, v30

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 923
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 924
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->via_bot_name:Ljava/lang/String;

    .line 925
    move-object/from16 v0, v30

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, v30

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 927
    :cond_3
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v4, v4

    const/16 v7, 0x20

    shl-long/2addr v4, v7

    move-object/from16 v0, v30

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->dialog_id:J

    .line 928
    move-object/from16 v0, v18

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_4

    .line 929
    move-object/from16 v0, v18

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    move-object/from16 v0, v30

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->reply_to_random_id:J

    .line 930
    move-object/from16 v0, v30

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v30

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->flags:I

    .line 932
    :cond_4
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    if-eqz v4, :cond_5

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;

    if-eqz v4, :cond_9

    .line 933
    :cond_5
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1352
    .end local v18    # "decryptedMessage":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    .end local v24    # "from_id":I
    .end local v30    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_message;
    :cond_6
    :goto_2
    return-object v30

    .line 889
    .restart local v24    # "from_id":I
    :cond_7
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_2

    if-eqz p7, :cond_2

    .line 890
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    .line 891
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 892
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, p1

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 893
    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 894
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 895
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-short v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 896
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-short v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 897
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 899
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto/16 :goto_0

    .line 910
    .restart local v18    # "decryptedMessage":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_8
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 911
    .restart local v30    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_message;
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    move-object/from16 v0, v30

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    goto/16 :goto_1

    .line 934
    :cond_9
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;

    if-eqz v4, :cond_a

    .line 935
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 936
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 937
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->url:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    goto/16 :goto_2

    .line 938
    :cond_a
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;

    if-eqz v4, :cond_b

    .line 939
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 940
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->last_name:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    .line 941
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->first_name:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    .line 942
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->phone_number:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    .line 943
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->user_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    goto/16 :goto_2

    .line 944
    :cond_b
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;

    if-eqz v4, :cond_c

    .line 945
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 946
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 947
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 948
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    goto/16 :goto_2

    .line 949
    :cond_c
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    if-eqz v4, :cond_11

    .line 950
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    if-eqz v4, :cond_d

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_d

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    if-eqz v4, :cond_d

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_e

    .line 951
    :cond_d
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 953
    :cond_e
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 954
    move-object/from16 v0, v30

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    if-eqz v4, :cond_10

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    :goto_3
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 955
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 956
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, v30

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->date:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Photo;->date:I

    .line 957
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    move-object/from16 v38, v0

    .line 958
    .local v38, "thumb":[B
    if-eqz v38, :cond_f

    move-object/from16 v0, v38

    array-length v4, v0

    if-eqz v4, :cond_f

    move-object/from16 v0, v38

    array-length v4, v0

    const/16 v5, 0x1770

    if-gt v4, v5, :cond_f

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    const/16 v5, 0x64

    if-gt v4, v5, :cond_f

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    const/16 v5, 0x64

    if-gt v4, v5, :cond_f

    .line 959
    new-instance v37, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct/range {v37 .. v37}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    .line 960
    .local v37, "small":Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    move-object/from16 v0, v37

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;->w:I

    .line 961
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    move-object/from16 v0, v37

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;->h:I

    .line 962
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;->bytes:[B

    .line 963
    const-string/jumbo v4, "s"

    move-object/from16 v0, v37

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;->type:Ljava/lang/String;

    .line 964
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    move-object/from16 v0, v37

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 965
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 968
    .end local v37    # "small":Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;
    :cond_f
    new-instance v16, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    invoke-direct/range {v16 .. v16}, Lorg/telegram/tgnet/TLRPC$TL_photoSize;-><init>()V

    .line 969
    .local v16, "big":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    move-object/from16 v0, v16

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->w:I

    .line 970
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    move-object/from16 v0, v16

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->h:I

    .line 971
    const-string/jumbo v4, "x"

    move-object/from16 v0, v16

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->type:Ljava/lang/String;

    .line 972
    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    move-object/from16 v0, v16

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->size:I

    .line 973
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_fileEncryptedLocation;-><init>()V

    move-object/from16 v0, v16

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 974
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    .line 975
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    .line 976
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    .line 977
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    .line 978
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    .line 979
    move-object/from16 v0, v16

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->key_fingerprint:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    .line 980
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 954
    .end local v16    # "big":Lorg/telegram/tgnet/TLRPC$TL_photoSize;
    .end local v38    # "thumb":[B
    :cond_10
    const-string/jumbo v4, ""

    goto/16 :goto_3

    .line 981
    :cond_11
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    if-eqz v4, :cond_17

    .line 982
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    if-eqz v4, :cond_12

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_12

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    if-eqz v4, :cond_12

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_13

    .line 983
    :cond_12
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 985
    :cond_13
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 986
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 987
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 988
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 989
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 990
    move-object/from16 v0, v30

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    if-eqz v4, :cond_15

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    :goto_4
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 991
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v0, p3

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 992
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 993
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 994
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 995
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 996
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v4, :cond_14

    .line 997
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v5, "video/mp4"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 999
    :cond_14
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    move-object/from16 v38, v0

    .line 1000
    .restart local v38    # "thumb":[B
    if-eqz v38, :cond_16

    move-object/from16 v0, v38

    array-length v4, v0

    if-eqz v4, :cond_16

    move-object/from16 v0, v38

    array-length v4, v0

    const/16 v5, 0x1770

    if-gt v4, v5, :cond_16

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    const/16 v5, 0x64

    if-gt v4, v5, :cond_16

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    const/16 v5, 0x64

    if-gt v4, v5, :cond_16

    .line 1001
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1002
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, v38

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 1003
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 1004
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 1005
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 1006
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1011
    :goto_5
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 1012
    .local v12, "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->w:I

    .line 1013
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->h:I

    .line 1014
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    iput v4, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;->duration:I

    .line 1015
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1016
    move-object/from16 v0, v30

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    if-eqz v4, :cond_6

    .line 1017
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v30

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v30

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    goto/16 :goto_2

    .line 990
    .end local v12    # "attributeVideo":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;
    .end local v38    # "thumb":[B
    :cond_15
    const-string/jumbo v4, ""

    goto/16 :goto_4

    .line 1008
    .restart local v38    # "thumb":[B
    :cond_16
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1009
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_5

    .line 1019
    .end local v38    # "thumb":[B
    :cond_17
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    if-eqz v4, :cond_1f

    .line 1020
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    if-eqz v4, :cond_18

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_18

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    if-eqz v4, :cond_18

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_19

    .line 1021
    :cond_18
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1023
    :cond_19
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1024
    move-object/from16 v0, v30

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    if-eqz v4, :cond_1b

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    :goto_6
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 1025
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1026
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 1027
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 1028
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v0, p3

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 1029
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    if-eqz v4, :cond_1c

    .line 1030
    new-instance v19, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct/range {v19 .. v19}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 1031
    .local v19, "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->file_name:Ljava/lang/String;

    move-object/from16 v0, v19

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 1032
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    .end local v19    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :goto_7
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 1037
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    if-eqz v4, :cond_1d

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    move-object/from16 v0, p2

    iget v7, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_8
    iput v4, v5, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 1038
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 1039
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 1040
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v4, :cond_1a

    .line 1041
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v5, ""

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 1043
    :cond_1a
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    move-object/from16 v38, v0

    .line 1044
    .restart local v38    # "thumb":[B
    if-eqz v38, :cond_1e

    move-object/from16 v0, v38

    array-length v4, v0

    if-eqz v4, :cond_1e

    move-object/from16 v0, v38

    array-length v4, v0

    const/16 v5, 0x1770

    if-gt v4, v5, :cond_1e

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    const/16 v5, 0x64

    if-gt v4, v5, :cond_1e

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    const/16 v5, 0x64

    if-gt v4, v5, :cond_1e

    .line 1045
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1046
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, v38

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 1047
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 1048
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 1049
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 1050
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1055
    :goto_9
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 1056
    invoke-static/range {v30 .. v30}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1057
    const/4 v4, 0x1

    move-object/from16 v0, v30

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media_unread:Z

    goto/16 :goto_2

    .line 1024
    .end local v38    # "thumb":[B
    :cond_1b
    const-string/jumbo v4, ""

    goto/16 :goto_6

    .line 1034
    :cond_1c
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    goto/16 :goto_7

    .line 1037
    :cond_1d
    move-object/from16 v0, p2

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    goto/16 :goto_8

    .line 1052
    .restart local v38    # "thumb":[B
    :cond_1e
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1053
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    goto :goto_9

    .line 1059
    .end local v38    # "thumb":[B
    :cond_1f
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    if-eqz v4, :cond_20

    .line 1060
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1061
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v5, ""

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 1062
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1063
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 1064
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 1065
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->date:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 1066
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    .line 1067
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 1068
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->dc_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 1069
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 1070
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1071
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 1072
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v5, ""

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    goto/16 :goto_2

    .line 1074
    :cond_20
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;

    if-eqz v4, :cond_25

    .line 1075
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    if-eqz v4, :cond_21

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_21

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    if-eqz v4, :cond_21

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    array-length v4, v4

    const/16 v5, 0x20

    if-eq v4, v5, :cond_22

    .line 1076
    :cond_21
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1078
    :cond_22
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1079
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_documentEncrypted;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1080
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->key:[B

    .line 1081
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->iv:[B

    .line 1082
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 1083
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 1084
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move/from16 v0, p3

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    .line 1085
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->size:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 1086
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedFile;->dc_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 1087
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 1088
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1089
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v5, "s"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 1090
    move-object/from16 v0, v30

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    if-eqz v4, :cond_24

    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    :goto_a
    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 1091
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    if-nez v4, :cond_23

    .line 1092
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const-string/jumbo v5, "audio/ogg"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 1094
    :cond_23
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 1095
    .local v11, "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    iput v4, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 1096
    const/4 v4, 0x1

    iput-boolean v4, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->voice:Z

    .line 1097
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1098
    move-object/from16 v0, v30

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    if-eqz v4, :cond_6

    .line 1099
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v30

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v30

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->ttl:I

    goto/16 :goto_2

    .line 1090
    .end local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    :cond_24
    const-string/jumbo v4, ""

    goto :goto_a

    .line 1101
    :cond_25
    move-object/from16 v0, v18

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;

    if-eqz v4, :cond_26

    .line 1102
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1103
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 1104
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1105
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 1106
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    .line 1107
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    .line 1108
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    .line 1109
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v18

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    goto/16 :goto_2

    .line 1111
    :cond_26
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1114
    .end local v18    # "decryptedMessage":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    .end local v30    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_message;
    :cond_27
    move-object/from16 v0, p6

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    if-eqz v4, :cond_47

    move-object/from16 v36, p6

    .line 1115
    check-cast v36, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    .line 1116
    .local v36, "serviceMessage":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-nez v4, :cond_28

    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-eqz v4, :cond_2d

    .line 1117
    :cond_28
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_messageService;

    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_messageService;-><init>()V

    .line 1118
    .local v30, "newMessage":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v4, :cond_2c

    .line 1119
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 1120
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    if-ltz v4, :cond_29

    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    const v5, 0x1e13380

    if-le v4, v5, :cond_2a

    .line 1121
    :cond_29
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    const v5, 0x1e13380

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    .line 1123
    :cond_2a
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    move-object/from16 v0, p1

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    .line 1124
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v0, v36

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 1125
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChatTTL(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1130
    :cond_2b
    :goto_b
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v30

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->id:I

    move-object/from16 v0, v30

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->local_id:I

    .line 1131
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 1132
    const/4 v4, 0x1

    move-object/from16 v0, v30

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->unread:Z

    .line 1133
    const/16 v4, 0x100

    move-object/from16 v0, v30

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->flags:I

    .line 1134
    move/from16 v0, p3

    move-object/from16 v1, v30

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->date:I

    .line 1135
    move/from16 v0, v24

    move-object/from16 v1, v30

    iput v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageService;->from_id:I

    .line 1136
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1137
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 1138
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v4, v4

    const/16 v7, 0x20

    shl-long/2addr v4, v7

    move-object/from16 v0, v30

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->dialog_id:J

    goto/16 :goto_2

    .line 1126
    :cond_2c
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-eqz v4, :cond_2b

    .line 1127
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    .line 1128
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageService;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    move-object/from16 v0, v36

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    goto :goto_b

    .line 1140
    .end local v30    # "newMessage":Lorg/telegram/tgnet/TLRPC$TL_messageService;
    :cond_2d
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;

    if-eqz v4, :cond_2e

    .line 1141
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v4, v4

    const/16 v7, 0x20

    shl-long v20, v4, v7

    .line 1142
    .local v20, "did":J
    new-instance v4, Lorg/telegram/messenger/SecretChatHelper$6;

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v4, v0, v1, v2}, Lorg/telegram/messenger/SecretChatHelper$6;-><init>(Lorg/telegram/messenger/SecretChatHelper;J)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1169
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1170
    .end local v20    # "did":J
    :cond_2e
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    if-eqz v4, :cond_30

    .line 1171
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1172
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1174
    :cond_2f
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1175
    :cond_30
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;

    if-eqz v4, :cond_32

    .line 1176
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_31

    .line 1177
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v6

    .line 1178
    .local v6, "time":I
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    const/4 v8, 0x1

    move-object/from16 v0, v36

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v9, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    move v7, v6

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->createTaskForSecretChat(IIIILjava/util/ArrayList;)V

    .line 1352
    .end local v6    # "time":I
    .end local v24    # "from_id":I
    .end local v36    # "serviceMessage":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :cond_31
    :goto_c
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1180
    .restart local v24    # "from_id":I
    .restart local v36    # "serviceMessage":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :cond_32
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    if-eqz v4, :cond_33

    .line 1181
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->layer:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->applyPeerLayer(Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    goto :goto_c

    .line 1182
    :cond_33
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;

    if-eqz v4, :cond_3b

    .line 1183
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_35

    .line 1184
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    move-object/from16 v0, v36

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_34

    .line 1185
    const-string/jumbo v4, "tmessages"

    const-string/jumbo v5, "we already have request key with higher exchange_id"

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1188
    :cond_34
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    .line 1192
    :cond_35
    const/16 v4, 0x100

    new-array v0, v4, [B

    move-object/from16 v35, v0

    .line 1193
    .local v35, "salt":[B
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1194
    new-instance v34, Ljava/math/BigInteger;

    const/4 v4, 0x1

    sget-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    move-object/from16 v0, v34

    invoke-direct {v0, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1195
    .local v34, "p":Ljava/math/BigInteger;
    sget v4, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v26

    .line 1196
    .local v26, "g_b":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    move-object/from16 v0, v35

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v26

    .line 1197
    new-instance v25, Ljava/math/BigInteger;

    const/4 v4, 0x1

    move-object/from16 v0, v36

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_a:[B

    move-object/from16 v0, v25

    invoke-direct {v0, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1199
    .local v25, "g_a":Ljava/math/BigInteger;
    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 1200
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    .line 1201
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1204
    :cond_36
    invoke-virtual/range {v26 .. v26}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v27

    .line 1205
    .local v27, "g_b_bytes":[B
    move-object/from16 v0, v27

    array-length v4, v0

    const/16 v5, 0x100

    if-le v4, v5, :cond_37

    .line 1206
    const/16 v4, 0x100

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 1207
    .local v17, "correctedAuth":[B
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v7, 0x100

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-static {v0, v4, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1208
    move-object/from16 v27, v17

    .line 1211
    .end local v17    # "correctedAuth":[B
    :cond_37
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    move-object/from16 v0, v35

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, v25

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    .line 1213
    invoke-virtual/range {v25 .. v25}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v13

    .line 1214
    .local v13, "authKey":[B
    array-length v4, v13

    const/16 v5, 0x100

    if-le v4, v5, :cond_39

    .line 1215
    const/16 v4, 0x100

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 1216
    .restart local v17    # "correctedAuth":[B
    array-length v4, v13

    add-int/lit16 v4, v4, -0x100

    const/4 v5, 0x0

    const/16 v7, 0x100

    move-object/from16 v0, v17

    invoke-static {v13, v4, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1217
    move-object/from16 v13, v17

    .line 1226
    .end local v17    # "correctedAuth":[B
    :cond_38
    :goto_d
    invoke-static {v13}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v14

    .line 1227
    .local v14, "authKeyHash":[B
    const/16 v4, 0x8

    new-array v15, v4, [B

    .line 1228
    .local v15, "authKeyId":[B
    array-length v4, v14

    add-int/lit8 v4, v4, -0x8

    const/4 v5, 0x0

    const/16 v7, 0x8

    invoke-static {v14, v4, v15, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1230
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1231
    move-object/from16 v0, p1

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1232
    invoke-static {v15}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v4

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1233
    move-object/from16 v0, v27

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a_or_b:[B

    .line 1235
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1237
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendAcceptKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_c

    .line 1218
    .end local v14    # "authKeyHash":[B
    .end local v15    # "authKeyId":[B
    :cond_39
    array-length v4, v13

    const/16 v5, 0x100

    if-ge v4, v5, :cond_38

    .line 1219
    const/16 v4, 0x100

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 1220
    .restart local v17    # "correctedAuth":[B
    const/4 v4, 0x0

    array-length v5, v13

    rsub-int v5, v5, 0x100

    array-length v7, v13

    move-object/from16 v0, v17

    invoke-static {v13, v4, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1221
    const/4 v10, 0x0

    .local v10, "a":I
    :goto_e
    array-length v4, v13

    rsub-int v4, v4, 0x100

    if-ge v10, v4, :cond_3a

    .line 1222
    const/4 v4, 0x0

    aput-byte v4, v13, v10

    .line 1221
    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    .line 1224
    :cond_3a
    move-object/from16 v13, v17

    goto :goto_d

    .line 1238
    .end local v10    # "a":I
    .end local v13    # "authKey":[B
    .end local v17    # "correctedAuth":[B
    .end local v25    # "g_a":Ljava/math/BigInteger;
    .end local v26    # "g_b":Ljava/math/BigInteger;
    .end local v27    # "g_b_bytes":[B
    .end local v34    # "p":Ljava/math/BigInteger;
    .end local v35    # "salt":[B
    :cond_3b
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;

    if-eqz v4, :cond_42

    .line 1239
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    move-object/from16 v0, v36

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_41

    .line 1241
    new-instance v34, Ljava/math/BigInteger;

    const/4 v4, 0x1

    sget-object v5, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    move-object/from16 v0, v34

    invoke-direct {v0, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1242
    .restart local v34    # "p":Ljava/math/BigInteger;
    new-instance v28, Ljava/math/BigInteger;

    const/4 v4, 0x1

    move-object/from16 v0, v36

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_b:[B

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v5}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 1244
    .local v28, "i_authKey":Ljava/math/BigInteger;
    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Lorg/telegram/messenger/Utilities;->isGoodGaAndGb(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v4

    if-nez v4, :cond_3c

    .line 1245
    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1246
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1247
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1248
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1250
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    .line 1251
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1254
    :cond_3c
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    invoke-direct {v4, v5, v7}, Ljava/math/BigInteger;-><init>(I[B)V

    move-object/from16 v0, v28

    move-object/from16 v1, v34

    invoke-virtual {v0, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v28

    .line 1256
    invoke-virtual/range {v28 .. v28}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v13

    .line 1257
    .restart local v13    # "authKey":[B
    array-length v4, v13

    const/16 v5, 0x100

    if-le v4, v5, :cond_3e

    .line 1258
    const/16 v4, 0x100

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 1259
    .restart local v17    # "correctedAuth":[B
    array-length v4, v13

    add-int/lit16 v4, v4, -0x100

    const/4 v5, 0x0

    const/16 v7, 0x100

    move-object/from16 v0, v17

    invoke-static {v13, v4, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1260
    move-object/from16 v13, v17

    .line 1269
    .end local v17    # "correctedAuth":[B
    :cond_3d
    :goto_f
    invoke-static {v13}, Lorg/telegram/messenger/Utilities;->computeSHA1([B)[B

    move-result-object v14

    .line 1270
    .restart local v14    # "authKeyHash":[B
    const/16 v4, 0x8

    new-array v15, v4, [B

    .line 1271
    .restart local v15    # "authKeyId":[B
    array-length v4, v14

    add-int/lit8 v4, v4, -0x8

    const/4 v5, 0x0

    const/16 v7, 0x8

    invoke-static {v14, v4, v15, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1272
    invoke-static {v15}, Lorg/telegram/messenger/Utilities;->bytesToLong([B)J

    move-result-wide v22

    .line 1273
    .local v22, "fingerprint":J
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    cmp-long v4, v4, v22

    if-nez v4, :cond_40

    .line 1274
    move-object/from16 v0, p1

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1275
    move-wide/from16 v0, v22

    move-object/from16 v2, p1

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1276
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1277
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendCommitKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_c

    .line 1261
    .end local v14    # "authKeyHash":[B
    .end local v15    # "authKeyId":[B
    .end local v22    # "fingerprint":J
    :cond_3e
    array-length v4, v13

    const/16 v5, 0x100

    if-ge v4, v5, :cond_3d

    .line 1262
    const/16 v4, 0x100

    new-array v0, v4, [B

    move-object/from16 v17, v0

    .line 1263
    .restart local v17    # "correctedAuth":[B
    const/4 v4, 0x0

    array-length v5, v13

    rsub-int v5, v5, 0x100

    array-length v7, v13

    move-object/from16 v0, v17

    invoke-static {v13, v4, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1264
    const/4 v10, 0x0

    .restart local v10    # "a":I
    :goto_10
    array-length v4, v13

    rsub-int v4, v4, 0x100

    if-ge v10, v4, :cond_3f

    .line 1265
    const/4 v4, 0x0

    aput-byte v4, v13, v10

    .line 1264
    add-int/lit8 v10, v10, 0x1

    goto :goto_10

    .line 1267
    :cond_3f
    move-object/from16 v13, v17

    goto :goto_f

    .line 1279
    .end local v10    # "a":I
    .end local v17    # "correctedAuth":[B
    .restart local v14    # "authKeyHash":[B
    .restart local v15    # "authKeyId":[B
    .restart local v22    # "fingerprint":J
    :cond_40
    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1280
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1281
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1282
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1283
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_c

    .line 1286
    .end local v13    # "authKey":[B
    .end local v14    # "authKeyHash":[B
    .end local v15    # "authKeyId":[B
    .end local v22    # "fingerprint":J
    .end local v28    # "i_authKey":Ljava/math/BigInteger;
    .end local v34    # "p":Ljava/math/BigInteger;
    :cond_41
    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1287
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1288
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1289
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1290
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_c

    .line 1292
    :cond_42
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;

    if-eqz v4, :cond_44

    .line 1293
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    move-object/from16 v0, v36

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_43

    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    move-object/from16 v0, v36

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_43

    .line 1294
    move-object/from16 v0, p1

    iget-wide v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    move-wide/from16 v32, v0

    .line 1295
    .local v32, "old_fingerpring":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    move-object/from16 v31, v0

    .line 1296
    .local v31, "old_key":[B
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_fingerprint:J

    .line 1297
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 1298
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, p1

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 1299
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1300
    move-wide/from16 v0, v32

    move-object/from16 v2, p1

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1301
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-short v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 1302
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput-short v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 1303
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1305
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1307
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendNoopMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_c

    .line 1309
    .end local v31    # "old_key":[B
    .end local v32    # "old_fingerpring":J
    :cond_43
    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1310
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1311
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1312
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1313
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iget-object v5, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_c

    .line 1315
    :cond_44
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;

    if-eqz v4, :cond_45

    .line 1316
    move-object/from16 v0, p1

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    move-object/from16 v0, v36

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_31

    .line 1317
    const/16 v4, 0x100

    new-array v4, v4, [B

    move-object/from16 v0, p1

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_auth_key:[B

    .line 1318
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    .line 1319
    const-wide/16 v4, 0x0

    move-object/from16 v0, p1

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1320
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto/16 :goto_c

    .line 1322
    :cond_45
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;

    if-nez v4, :cond_31

    .line 1324
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;

    if-eqz v4, :cond_46

    .line 1325
    new-instance v29, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;

    invoke-direct/range {v29 .. v29}, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;-><init>()V

    .line 1326
    .local v29, "newChat":Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->id:I

    .line 1327
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->user_id:I

    .line 1328
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    move-object/from16 v0, v29

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->auth_key:[B

    .line 1329
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_create_date:I

    .line 1330
    move-object/from16 v0, p1

    iget-short v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    move-object/from16 v0, v29

    iput-short v4, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_use_count_in:S

    .line 1331
    move-object/from16 v0, p1

    iget-short v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    move-object/from16 v0, v29

    iput-short v4, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->key_use_count_out:S

    .line 1332
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->seq_in:I

    .line 1333
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    move-object/from16 v0, v29

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;->seq_out:I

    .line 1334
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1335
    new-instance v4, Lorg/telegram/messenger/SecretChatHelper$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v4, v0, v1}, Lorg/telegram/messenger/SecretChatHelper$7;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;)V

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1342
    move-object/from16 v0, p1

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SecretChatHelper;->declineSecretChat(I)V

    goto/16 :goto_c

    .line 1344
    .end local v29    # "newChat":Lorg/telegram/tgnet/TLRPC$TL_encryptedChatDiscarded;
    :cond_46
    const/16 v30, 0x0

    goto/16 :goto_2

    .line 1347
    .end local v36    # "serviceMessage":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :cond_47
    const-string/jumbo v4, "tmessages"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown message "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 1350
    .end local v24    # "from_id":I
    :cond_48
    const-string/jumbo v4, "tmessages"

    const-string/jumbo v5, "unknown TLObject"

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c
.end method

.method protected processPendingEncMessages()V
    .locals 3

    .prologue
    .line 102
    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    .local v1, "pendingEncMessagesToDeleteCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v2, Lorg/telegram/messenger/SecretChatHelper$1;

    invoke-direct {v2, p0, v1}, Lorg/telegram/messenger/SecretChatHelper$1;-><init>(Lorg/telegram/messenger/SecretChatHelper;Ljava/util/ArrayList;)V

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 116
    .local v0, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessagesAsDeletedByRandoms(Ljava/util/ArrayList;)V

    .line 117
    iget-object v2, p0, Lorg/telegram/messenger/SecretChatHelper;->pendingEncMessagesToDelete:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 119
    .end local v0    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v1    # "pendingEncMessagesToDeleteCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method

.method protected processUpdateEncryption(Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;Ljava/util/concurrent/ConcurrentHashMap;)V
    .locals 12
    .param p1, "update"    # Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "usersDict":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lorg/telegram/tgnet/TLRPC$User;>;"
    const/4 v11, 0x0

    .line 183
    iget-object v5, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;->chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 184
    .local v5, "newChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    iget v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    int-to-long v8, v8

    const/16 v10, 0x20

    shl-long v2, v8, v10

    .line 185
    .local v2, "dialog_id":J
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget v9, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getEncryptedChatDB(I)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v4

    .line 187
    .local v4, "existingChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    instance-of v8, v5, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatRequested;

    if-eqz v8, :cond_3

    if-nez v4, :cond_3

    .line 188
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    .line 189
    .local v7, "user_id":I
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 190
    iget v7, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    .line 192
    :cond_0
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v6

    .line 193
    .local v6, "user":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v6, :cond_1

    .line 194
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    check-cast v6, Lorg/telegram/tgnet/TLRPC$User;

    .line 196
    .restart local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_1
    iput v7, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    .line 197
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_dialog;-><init>()V

    .line 198
    .local v0, "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->id:J

    .line 199
    iput v11, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->unread_count:I

    .line 200
    iput v11, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->top_message:I

    .line 201
    iget v8, p1, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;->date:I

    iput v8, v0, Lorg/telegram/tgnet/TLRPC$TL_dialog;->last_message_date:I

    .line 203
    new-instance v8, Lorg/telegram/messenger/SecretChatHelper$2;

    invoke-direct {v8, p0, v0, v5}, Lorg/telegram/messenger/SecretChatHelper$2;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$TL_dialog;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 213
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v0}, Lorg/telegram/messenger/MessagesStorage;->putEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_dialog;)V

    .line 214
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/telegram/messenger/SecretChatHelper;->acceptSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 246
    .end local v0    # "dialog":Lorg/telegram/tgnet/TLRPC$TL_dialog;
    .end local v6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .end local v7    # "user_id":I
    :cond_2
    :goto_0
    return-void

    .line 215
    :cond_3
    instance-of v8, v5, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-eqz v8, :cond_6

    .line 216
    if-eqz v4, :cond_5

    instance-of v8, v4, Lorg/telegram/tgnet/TLRPC$TL_encryptedChatWaiting;

    if-eqz v8, :cond_5

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    if-eqz v8, :cond_4

    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    array-length v8, v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    .line 217
    :cond_4
    iget-object v8, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    .line 218
    iget v8, v4, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    .line 219
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/telegram/messenger/SecretChatHelper;->processAcceptedSecretChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    goto :goto_0

    .line 220
    :cond_5
    if-nez v4, :cond_2

    iget-boolean v8, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    if-eqz v8, :cond_2

    .line 221
    iget-object v8, p0, Lorg/telegram/messenger/SecretChatHelper;->delayedEncryptedChatUpdates:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 224
    :cond_6
    move-object v1, v4

    .line 225
    .local v1, "exist":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v1, :cond_7

    .line 226
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->user_id:I

    .line 227
    iget-object v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    iput-object v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->auth_key:[B

    .line 228
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_create_date:I

    .line 229
    iget-short v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    iput-short v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_in:S

    .line 230
    iget-short v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    iput-short v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->key_use_count_out:S

    .line 231
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    .line 232
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_in:I

    .line 233
    iget v8, v1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    iput v8, v5, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->seq_out:I

    .line 235
    :cond_7
    new-instance v8, Lorg/telegram/messenger/SecretChatHelper$3;

    invoke-direct {v8, p0, v1, v5}, Lorg/telegram/messenger/SecretChatHelper$3;-><init>(Lorg/telegram/messenger/SecretChatHelper;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public requestNewSecretChatKey(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V
    .locals 9
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x100

    .line 1520
    iget v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v5, 0x14

    if-ge v4, v5, :cond_0

    .line 1542
    :goto_0
    return-void

    .line 1523
    :cond_0
    new-array v3, v7, [B

    .line 1524
    .local v3, "salt":[B
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 1526
    sget v4, Lorg/telegram/messenger/MessagesStorage;->secretG:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 1527
    .local v2, "i_g_a":Ljava/math/BigInteger;
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v8, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v5, Ljava/math/BigInteger;

    sget-object v6, Lorg/telegram/messenger/MessagesStorage;->secretPBytes:[B

    invoke-direct {v5, v8, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2, v4, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1528
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    .line 1529
    .local v1, "g_a":[B
    array-length v4, v1

    if-le v4, v7, :cond_1

    .line 1530
    new-array v0, v7, [B

    .line 1531
    .local v0, "correctedAuth":[B
    const/4 v4, 0x0

    invoke-static {v1, v8, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1532
    move-object v1, v0

    .line 1535
    .end local v0    # "correctedAuth":[B
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v4

    iput-wide v4, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    .line 1536
    iput-object v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->a_or_b:[B

    .line 1537
    iput-object v1, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a:[B

    .line 1539
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    invoke-virtual {v4, p1}, Lorg/telegram/messenger/MessagesStorage;->updateEncryptedChat(Lorg/telegram/tgnet/TLRPC$EncryptedChat;)V

    .line 1541
    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendRequestKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_0
.end method

.method public sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V
    .locals 9
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p3, "excange_id"    # J

    .prologue
    const/4 v4, 0x0

    .line 430
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 435
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    .line 436
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 445
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :goto_1
    if-eqz p2, :cond_2

    .line 446
    move-object v2, p2

    .line 447
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 454
    :goto_2
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 456
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 438
    .end local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;-><init>()V

    .line 439
    .restart local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    .line 440
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1

    .line 449
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 450
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-wide p3, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    .line 452
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_2
.end method

.method public sendAcceptKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v4, 0x0

    .line 367
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 396
    :goto_0
    return-void

    .line 372
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    .line 373
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 382
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :goto_1
    if-eqz p2, :cond_2

    .line 383
    move-object v2, p2

    .line 384
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 393
    :goto_2
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 395
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 375
    .end local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;-><init>()V

    .line 376
    .restart local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    .line 377
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1

    .line 386
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 387
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    .line 388
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    .line 389
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a_or_b:[B

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_b:[B

    .line 391
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_2
.end method

.method public sendClearHistoryMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v4, 0x0

    .line 277
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 281
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    .line 282
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 291
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :goto_1
    if-eqz p2, :cond_2

    .line 292
    move-object v2, p2

    .line 293
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 298
    :goto_2
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 300
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 284
    .end local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;-><init>()V

    .line 285
    .restart local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    .line 286
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1

    .line 295
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 296
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_2
.end method

.method public sendCommitKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v4, 0x0

    .line 399
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 427
    :goto_0
    return-void

    .line 404
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    .line 405
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 414
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :goto_1
    if-eqz p2, :cond_2

    .line 415
    move-object v2, p2

    .line 416
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 424
    :goto_2
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 426
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 407
    .end local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;-><init>()V

    .line 408
    .restart local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    .line 409
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1

    .line 418
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 419
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    .line 420
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->future_key_fingerprint:J

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->key_fingerprint:J

    .line 422
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_2
.end method

.method public sendMessagesDeleteMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p3, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 249
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 253
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    .line 254
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 263
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :goto_1
    if-eqz p3, :cond_2

    .line 264
    move-object v2, p3

    .line 265
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 271
    :goto_2
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 273
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 256
    .end local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;-><init>()V

    .line 257
    .restart local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    .line 258
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1

    .line 267
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 268
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    .line 269
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_2
.end method

.method public sendMessagesReadMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p3, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v4, 0x0

    .line 155
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 180
    :goto_0
    return-void

    .line 159
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    .line 160
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 169
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :goto_1
    if-eqz p3, :cond_2

    .line 170
    move-object v2, p3

    .line 171
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 177
    :goto_2
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 179
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 162
    .end local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;-><init>()V

    .line 163
    .restart local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    .line 164
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1

    .line 173
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 174
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    .line 175
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_2
.end method

.method public sendNoopMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v4, 0x0

    .line 460
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 485
    :goto_0
    return-void

    .line 465
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    .line 466
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 475
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :goto_1
    if-eqz p2, :cond_2

    .line 476
    move-object v2, p2

    .line 477
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 482
    :goto_2
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 484
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 468
    .end local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;-><init>()V

    .line 469
    .restart local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    .line 470
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1

    .line 479
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 480
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_2
.end method

.method public sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v4, 0x0

    .line 304
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lorg/telegram/messenger/SecretChatHelper;->sendingNotifyLayer:Ljava/util/ArrayList;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_2

    .line 313
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 322
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :goto_1
    if-eqz p2, :cond_3

    .line 323
    move-object v2, p2

    .line 324
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 330
    :goto_2
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 332
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 315
    .end local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_2
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;-><init>()V

    .line 316
    .restart local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    .line 317
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1

    .line 326
    :cond_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 327
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    const/16 v3, 0x2e

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->layer:I

    .line 328
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_2
.end method

.method public sendRequestKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 8
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v4, 0x0

    .line 336
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 364
    :goto_0
    return-void

    .line 341
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    .line 342
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 351
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :goto_1
    if-eqz p2, :cond_2

    .line 352
    move-object v2, p2

    .line 353
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 361
    :goto_2
    iget-wide v6, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v6, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 363
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 344
    .end local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;-><init>()V

    .line 345
    .restart local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    .line 346
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1

    .line 355
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 356
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-wide v6, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->exchange_id:J

    iput-wide v6, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->exchange_id:J

    .line 357
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->g_a:[B

    iput-object v3, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->g_a:[B

    .line 359
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_2
.end method

.method public sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 12
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p3, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 524
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 557
    :goto_0
    return-void

    .line 529
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    .line 530
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 539
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :goto_1
    if-eqz p3, :cond_2

    .line 540
    move-object v2, p3

    .line 541
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 554
    :goto_2
    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 556
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 532
    .end local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;-><init>()V

    .line 533
    .restart local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    .line 534
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1

    .line 543
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 544
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->random_ids:Ljava/util/ArrayList;

    .line 545
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .line 547
    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v7, v2, v4, v5}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 548
    .local v7, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v3, 0x1

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 549
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v8, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v0, v10, v11, v8}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 552
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public sendTTLMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 12
    .param p1, "encryptedChat"    # Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .param p2, "resendMessage"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 488
    instance-of v0, p1, Lorg/telegram/tgnet/TLRPC$TL_encryptedChat;

    if-nez v0, :cond_0

    .line 521
    :goto_0
    return-void

    .line 493
    :cond_0
    iget v0, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v0

    const/16 v3, 0x11

    if-lt v0, v3, :cond_1

    .line 494
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;-><init>()V

    .line 503
    .local v1, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    :goto_1
    if-eqz p2, :cond_2

    .line 504
    move-object v2, p2

    .line 505
    .local v2, "message":Lorg/telegram/tgnet/TLRPC$Message;
    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 518
    :goto_2
    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v10, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_id:J

    move-object v0, p0

    move-object v3, p1

    move-object v5, v4

    move-object v6, v4

    .line 520
    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto :goto_0

    .line 496
    .end local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    .end local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    :cond_1
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService_layer8;-><init>()V

    .line 497
    .restart local v1    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;
    const/16 v0, 0xf

    new-array v0, v0, [B

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    .line 498
    sget-object v0, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v3, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->random_bytes:[B

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1

    .line 507
    :cond_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    .line 508
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    iget v3, p1, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;->ttl_seconds:I

    .line 509
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageService;->action:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    invoke-direct {p0, p1, v0}, Lorg/telegram/messenger/SecretChatHelper;->createServiceSecretMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;)Lorg/telegram/tgnet/TLRPC$TL_messageService;

    move-result-object v2

    .line 511
    .restart local v2    # "message":Lorg/telegram/tgnet/TLRPC$Message;
    new-instance v7, Lorg/telegram/messenger/MessageObject;

    invoke-direct {v7, v2, v4, v5}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 512
    .local v7, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    iget-object v0, v7, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v3, 0x1

    iput v3, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 513
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 514
    .local v8, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-wide v10, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    invoke-virtual {v0, v10, v11, v8}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 516
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v3, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v5}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public startSecretChat(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$User;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "user"    # Lorg/telegram/tgnet/TLRPC$User;

    .prologue
    const/4 v5, 0x0

    .line 1729
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 1884
    :cond_0
    :goto_0
    return-void

    .line 1732
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lorg/telegram/messenger/SecretChatHelper;->startingSecretChat:Z

    .line 1733
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1734
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const-string/jumbo v3, "Loading"

    const v4, 0x7f0702d1

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1735
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1736
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1737
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;-><init>()V

    .line 1738
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;
    const/16 v3, 0x100

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->random_length:I

    .line 1739
    sget v3, Lorg/telegram/messenger/MessagesStorage;->lastSecretVersion:I

    iput v3, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getDhConfig;->version:I

    .line 1740
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v3

    new-instance v4, Lorg/telegram/messenger/SecretChatHelper$14;

    invoke-direct {v4, p0, p1, v0, p2}, Lorg/telegram/messenger/SecretChatHelper$14;-><init>(Lorg/telegram/messenger/SecretChatHelper;Landroid/content/Context;Landroid/app/ProgressDialog;Lorg/telegram/tgnet/TLRPC$User;)V

    const/4 v5, 0x2

    invoke-virtual {v3, v1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    move-result v2

    .line 1868
    .local v2, "reqId":I
    const/4 v3, -0x2

    const-string/jumbo v4, "Cancel"

    const v5, 0x7f0700f2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/telegram/messenger/SecretChatHelper$15;

    invoke-direct {v5, p0, v2}, Lorg/telegram/messenger/SecretChatHelper$15;-><init>(Lorg/telegram/messenger/SecretChatHelper;I)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1880
    :try_start_0
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1881
    :catch_0
    move-exception v3

    goto :goto_0
.end method
