.class public Lorg/telegram/messenger/SendMessagesHelper;
.super Ljava/lang/Object;
.source "SendMessagesHelper.java"

# interfaces
.implements Lorg/telegram/messenger/NotificationCenter$NotificationCenterDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;,
        Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;
    }
.end annotation


# static fields
.field private static volatile Instance:Lorg/telegram/messenger/SendMessagesHelper;


# instance fields
.field private currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

.field private delayedMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;",
            ">;>;"
        }
    .end annotation
.end field

.field private locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

.field private sendingMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;"
        }
    .end annotation
.end field

.field private unsentMessages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForCallback:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field

.field private waitingForLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    sput-object v0, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    .line 56
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$1;

    invoke-direct {v1, p0}, Lorg/telegram/messenger/SendMessagesHelper$1;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;-><init>(Lorg/telegram/messenger/SendMessagesHelper$LocationProvider$LocationProviderDelegate;)V

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    .line 225
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 226
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 227
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FilePreparingStarted:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 228
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 229
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 230
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 231
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 232
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 233
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v0

    sget v1, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    invoke-virtual {v0, p0, v1}, Lorg/telegram/messenger/NotificationCenter;->addObserver(Ljava/lang/Object;I)V

    .line 234
    return-void
.end method

.method public static SuperPrepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    .locals 15
    .param p0, "videoPath"    # Ljava/lang/String;
    .param p1, "estimatedSize"    # J
    .param p3, "duration"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p8, "dialog_id"    # J
    .param p10, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p11, "caption"    # Ljava/lang/String;

    .prologue
    .line 4456
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4581
    :cond_0
    :goto_0
    return-void

    .line 4459
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$19;

    move-wide/from16 v2, p8

    move-object/from16 v4, p7

    move-object v5, p0

    move-wide/from16 v6, p3

    move/from16 v8, p6

    move/from16 v9, p5

    move-wide/from16 v10, p1

    move-object/from16 v12, p11

    move-object/from16 v13, p10

    invoke-direct/range {v1 .. v13}, Lorg/telegram/messenger/SendMessagesHelper$19;-><init>(JLorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JIIJLjava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private SuperSendMessage(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 52
    .param p1, "caption"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "location"    # Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .param p4, "photo"    # Lorg/telegram/tgnet/TLRPC$TL_photo;
    .param p5, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p6, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p7, "document"    # Lorg/telegram/tgnet/TLRPC$TL_document;
    .param p8, "peer"    # J
    .param p10, "path"    # Ljava/lang/String;
    .param p11, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p12, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p13, "searchLinks"    # Z
    .param p14, "retryMessageObject"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "J",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Z",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2087
    .local p15, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .local p16, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v8, 0x0

    cmp-long v4, p8, v8

    if-nez v4, :cond_1

    .line 2994
    :cond_0
    :goto_0
    return-void

    .line 2091
    :cond_1
    const/16 v40, 0x0

    .line 2092
    .local v40, "originalPath":Ljava/lang/String;
    if-eqz p16, :cond_2

    const-string/jumbo v4, "originalPath"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2093
    const-string/jumbo v4, "originalPath"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    .end local v40    # "originalPath":Ljava/lang/String;
    check-cast v40, Ljava/lang/String;

    .line 2096
    .restart local v40    # "originalPath":Ljava/lang/String;
    :cond_2
    const/16 v35, 0x0

    .line 2097
    .local v35, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    const/16 v37, 0x0

    .line 2098
    .local v37, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    const/16 v50, -0x1

    .line 2099
    .local v50, "type":I
    move-wide/from16 v0, p8

    long-to-int v0, v0

    move/from16 v33, v0

    .line 2100
    .local v33, "lower_id":I
    const/16 v4, 0x20

    shr-long v8, p8, v4

    long-to-int v0, v8

    move/from16 v28, v0

    .line 2101
    .local v28, "high_id":I
    const/16 v31, 0x0

    .line 2102
    .local v31, "isChannel":Z
    const/16 v16, 0x0

    .line 2103
    .local v16, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v33, :cond_3

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v45

    .line 2104
    .local v45, "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :goto_1
    const/16 v46, 0x0

    .line 2105
    .local v46, "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    if-nez v33, :cond_4

    .line 2106
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v16

    .line 2107
    if-nez v16, :cond_5

    .line 2108
    if-eqz p14, :cond_0

    .line 2109
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2110
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 2111
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2112
    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_0

    .line 2103
    .end local v45    # "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v46    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_3
    const/16 v45, 0x0

    goto :goto_1

    .line 2116
    .restart local v45    # "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v46    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_4
    move-object/from16 v0, v45

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_5

    .line 2117
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v24

    .line 2118
    .local v24, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v24, :cond_e

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_e

    const/16 v31, 0x1

    .line 2122
    .end local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5
    :goto_2
    if-eqz p14, :cond_1a

    .line 2123
    :try_start_0
    move-object/from16 v0, p14

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v35, v0

    .line 2125
    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 2126
    const/16 v50, 0x4

    .line 2289
    :cond_6
    :goto_3
    move-object/from16 v0, v35

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_7

    .line 2290
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v8

    move-object/from16 v0, v35

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 2292
    :cond_7
    if-eqz p16, :cond_9

    const-string/jumbo v4, "bot"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2293
    if-eqz v16, :cond_37

    .line 2294
    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    .line 2295
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 2296
    const-string/jumbo v4, ""

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    .line 2301
    :cond_8
    :goto_4
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 2303
    :cond_9
    move-object/from16 v0, p16

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    .line 2304
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 2305
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 2306
    move-object/from16 v0, v45

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_39

    .line 2307
    if-eqz v31, :cond_a

    .line 2308
    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 2309
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 2311
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v24

    .line 2312
    .restart local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v24, :cond_b

    .line 2313
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_38

    .line 2314
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 2325
    .end local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_b
    :goto_5
    move-wide/from16 v0, p8

    move-object/from16 v2, v35

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 2326
    if-eqz p11, :cond_c

    .line 2327
    if-eqz v16, :cond_3a

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_3a

    .line 2328
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v35

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    .line 2329
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 2333
    :goto_6
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    .line 2335
    :cond_c
    if-eqz v33, :cond_44

    .line 2336
    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_42

    .line 2337
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v4, :cond_3b

    .line 2338
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2339
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v35

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2340
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2985
    :catch_0
    move-exception v27

    move-object/from16 v12, v37

    .line 2986
    .end local v37    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .local v12, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .local v27, "e":Ljava/lang/Exception;
    :goto_7
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2987
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2988
    if-eqz v12, :cond_d

    .line 2989
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 2991
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v35

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2992
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto/16 :goto_0

    .line 2118
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v37    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_e
    const/16 v31, 0x0

    goto/16 :goto_2

    .line 2128
    .end local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_f
    :try_start_1
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v4, :cond_11

    .line 2129
    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 p2, v0

    .line 2130
    if-eqz p16, :cond_10

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2131
    const/16 v50, 0x9

    goto/16 :goto_3

    .line 2133
    :cond_10
    const/16 v50, 0x0

    goto/16 :goto_3

    .line 2135
    :cond_11
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_12

    .line 2136
    move-object/from16 v0, v35

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 p3, v0

    .line 2137
    const/16 v50, 0x1

    goto/16 :goto_3

    .line 2138
    :cond_12
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_14

    .line 2139
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-object/from16 p4, v0

    .line 2140
    if-eqz p16, :cond_13

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 2141
    const/16 v50, 0x9

    goto/16 :goto_3

    .line 2143
    :cond_13
    const/16 v50, 0x2

    goto/16 :goto_3

    .line 2145
    :cond_14
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_15

    .line 2146
    const/16 v50, 0x3

    .line 2147
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p7, v0

    goto/16 :goto_3

    .line 2148
    :cond_15
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xc

    if-ne v4, v6, :cond_16

    .line 2149
    new-instance v51, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;

    invoke-direct/range {v51 .. v51}, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2150
    .end local p6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .local v51, "user":Lorg/telegram/tgnet/TLRPC$User;
    :try_start_2
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    move-object/from16 v0, v51

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 2151
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, v51

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 2152
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, v51

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 2153
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    move-object/from16 v0, v51

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 2154
    const/16 v50, 0x6

    move-object/from16 p6, v51

    .end local v51    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local p6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_3

    .line 2155
    :cond_16
    :try_start_3
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x8

    if-eq v4, v6, :cond_17

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x9

    if-eq v4, v6, :cond_17

    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xd

    if-ne v4, v6, :cond_19

    .line 2156
    :cond_17
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p7, v0

    .line 2157
    if-eqz p16, :cond_18

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2158
    const/16 v50, 0x9

    goto/16 :goto_3

    .line 2160
    :cond_18
    const/16 v50, 0x7

    goto/16 :goto_3

    .line 2162
    :cond_19
    move-object/from16 v0, p14

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    .line 2163
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p7, v0

    .line 2164
    const/16 v50, 0x8

    goto/16 :goto_3

    .line 2168
    :cond_1a
    if-eqz p2, :cond_23

    .line 2169
    if-eqz v16, :cond_1f

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_1f

    .line 2170
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .local v36, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v35, v36

    .line 2174
    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_8
    if-eqz p15, :cond_1b

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 2175
    move-object/from16 v0, p15

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 2177
    :cond_1b
    if-eqz v16, :cond_1c

    move-object/from16 v0, p12

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v4, :cond_1c

    .line 2178
    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_20

    .line 2179
    new-instance v38, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    invoke-direct/range {v38 .. v38}, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;-><init>()V

    .line 2180
    .local v38, "newWebPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v0, v38

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 2181
    move-object/from16 p12, v38

    .line 2186
    .end local v38    # "newWebPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_1c
    :goto_9
    if-nez p12, :cond_21

    .line 2187
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2192
    :goto_a
    if-eqz p16, :cond_22

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 2193
    const/16 v50, 0x9

    .line 2197
    :goto_b
    move-object/from16 v0, p2

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 2276
    :cond_1d
    :goto_c
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez v4, :cond_1e

    .line 2277
    const-string/jumbo v4, ""

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 2279
    :cond_1e
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 2280
    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 2281
    if-eqz v31, :cond_36

    if-eqz v45, :cond_36

    .line 2282
    move-object/from16 v0, v45

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    neg-int v4, v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 2287
    :goto_d
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    goto/16 :goto_3

    .line 2172
    :cond_1f
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v35, v36

    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_8

    .line 2183
    :cond_20
    const/16 p12, 0x0

    goto :goto_9

    .line 2189
    :cond_21
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2190
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p12

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_a

    .line 2195
    :cond_22
    const/16 v50, 0x0

    goto :goto_b

    .line 2198
    :cond_23
    if-eqz p3, :cond_25

    .line 2199
    if-eqz v16, :cond_24

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_24

    .line 2200
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v35, v36

    .line 2204
    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_e
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2205
    const-string/jumbo v4, ""

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 2206
    const/16 v50, 0x1

    goto :goto_c

    .line 2202
    :cond_24
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v35, v36

    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_e

    .line 2207
    :cond_25
    if-eqz p4, :cond_2a

    .line 2208
    if-eqz v16, :cond_26

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_26

    .line 2209
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v35, v36

    .line 2213
    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_f
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2214
    move-object/from16 v0, v35

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_27

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_10
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 2215
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p4

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 2216
    if-eqz p16, :cond_28

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2217
    const/16 v50, 0x9

    .line 2221
    :goto_11
    const-string/jumbo v4, "-1"

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 2222
    if-eqz p10, :cond_29

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_29

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 2223
    move-object/from16 v0, p10

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_c

    .line 2211
    :cond_26
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v35, v36

    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_f

    .line 2214
    :cond_27
    const-string/jumbo v4, ""

    goto :goto_10

    .line 2219
    :cond_28
    const/16 v50, 0x2

    goto :goto_11

    .line 2225
    :cond_29
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v32, v0

    .line 2226
    .local v32, "location1":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v4, 0x1

    move-object/from16 v0, v32

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_c

    .line 2228
    .end local v32    # "location1":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_2a
    if-eqz p6, :cond_2e

    .line 2229
    if-eqz v16, :cond_2d

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_2d

    .line 2230
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v35, v36

    .line 2234
    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_12
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2235
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    .line 2236
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    .line 2237
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    .line 2238
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    .line 2239
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    if-nez v4, :cond_2b

    .line 2240
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 2242
    :cond_2b
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    if-nez v4, :cond_2c

    .line 2243
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, p6

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 2245
    :cond_2c
    const-string/jumbo v4, ""

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 2246
    const/16 v50, 0x6

    goto/16 :goto_c

    .line 2232
    :cond_2d
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v35, v36

    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_12

    .line 2247
    :cond_2e
    if-eqz p7, :cond_1d

    .line 2248
    if-eqz v16, :cond_2f

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_2f

    .line 2249
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v35, v36

    .line 2253
    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_13
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 2254
    move-object/from16 v0, v35

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz p1, :cond_30

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_14
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 2255
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p7

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 2256
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 2257
    const/16 v50, 0x3

    .line 2265
    :goto_15
    if-nez p5, :cond_34

    .line 2266
    const-string/jumbo v4, "-1"

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 2270
    :goto_16
    if-eqz v16, :cond_35

    move-object/from16 v0, p7

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-lez v4, :cond_35

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 2271
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_c

    .line 2251
    :cond_2f
    new-instance v36, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v36 .. v36}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v35, v36

    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v35    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_13

    .line 2254
    :cond_30
    const-string/jumbo v4, ""

    goto :goto_14

    .line 2258
    :cond_31
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2259
    const/16 v50, 0x8

    goto :goto_15

    .line 2260
    :cond_32
    if-eqz p16, :cond_33

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2261
    const/16 v50, 0x9

    goto :goto_15

    .line 2263
    :cond_33
    const/16 v50, 0x7

    goto :goto_15

    .line 2268
    :cond_34
    invoke-virtual/range {p5 .. p5}, Lorg/telegram/messenger/VideoEditedInfo;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto :goto_16

    .line 2273
    :cond_35
    move-object/from16 v0, p10

    move-object/from16 v1, v35

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_c

    .line 2284
    :cond_36
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 2285
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_d

    .line 2299
    :cond_37
    const-string/jumbo v4, "bot"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    goto/16 :goto_4

    .line 2316
    .restart local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_38
    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    .line 2317
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eqz v4, :cond_b

    .line 2318
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto/16 :goto_5

    .line 2323
    .end local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_39
    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_5

    .line 2331
    :cond_3a
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_6

    .line 2343
    :cond_3b
    new-instance v47, Ljava/util/ArrayList;

    invoke-direct/range {v47 .. v47}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2344
    .end local v46    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .local v47, "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "i$":Ljava/util/Iterator;
    :cond_3c
    :goto_17
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 2345
    .local v41, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v41

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v48

    .line 2346
    .local v48, "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static/range {v48 .. v48}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v42

    .line 2347
    .local v42, "peerUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz v42, :cond_3c

    .line 2348
    move-object/from16 v0, v47

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 2985
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v41    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v42    # "peerUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v48    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    :catch_1
    move-exception v27

    move-object/from16 v46, v47

    .end local v47    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v46    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    move-object/from16 v12, v37

    .end local v37    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    goto/16 :goto_7

    .line 2351
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v46    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v29    # "i$":Ljava/util/Iterator;
    .restart local v37    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v47    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_3d
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2352
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v33

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v46, v47

    .line 2398
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v47    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v46    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_3e
    :goto_18
    if-eqz v16, :cond_3f

    :try_start_5
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_40

    :cond_3f
    const/4 v4, 0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_40

    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_40

    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v4, :cond_40

    .line 2399
    const/4 v4, 0x1

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 2402
    :cond_40
    new-instance v12, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v35

    invoke-direct {v12, v0, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2403
    .end local v37    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :try_start_6
    move-object/from16 v0, p11

    iput-object v0, v12, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 2404
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x1

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 2406
    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .line 2407
    .local v39, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2408
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2409
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2410
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 2411
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-wide/from16 v0, p8

    move-object/from16 v2, v39

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 2412
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2414
    if-eqz v50, :cond_41

    const/16 v4, 0x9

    move/from16 v0, v50

    if-ne v0, v4, :cond_59

    if-eqz p2, :cond_59

    if-eqz v16, :cond_59

    .line 2415
    :cond_41
    if-nez v16, :cond_52

    .line 2416
    if-eqz v46, :cond_4c

    .line 2417
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;-><init>()V

    .line 2418
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 2419
    .local v43, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v20, 0x0

    .local v20, "a":I
    :goto_19
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_4b

    .line 2420
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 2419
    add-int/lit8 v20, v20, 0x1

    goto :goto_19

    .line 2354
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v20    # "a":I
    .end local v39    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v43    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v37    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_42
    :try_start_7
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/MessagesController;->getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2355
    if-lez v33, :cond_3e

    .line 2356
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v48

    .line 2357
    .restart local v48    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v48, :cond_43

    .line 2358
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto/16 :goto_0

    .line 2361
    :cond_43
    move-object/from16 v0, v48

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_3e

    .line 2362
    const/4 v4, 0x0

    move-object/from16 v0, v35

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_18

    .line 2367
    .end local v48    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_44
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v35

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 2368
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_46

    .line 2369
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 2373
    :goto_1a
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 2374
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_3e

    .line 2375
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 2376
    const/16 v26, 0x0

    .line 2377
    .local v26, "duration":I
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_1b
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_45

    .line 2378
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2379
    .local v22, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v4, :cond_47

    .line 2380
    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v26, v0

    .line 2384
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_45
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    add-int/lit8 v6, v26, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    goto/16 :goto_18

    .line 2371
    .end local v20    # "a":I
    .end local v26    # "duration":I
    :cond_46
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_1a

    .line 2377
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v26    # "duration":I
    :cond_47
    add-int/lit8 v20, v20, 0x1

    goto :goto_1b

    .line 2385
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v26    # "duration":I
    :cond_48
    invoke-static/range {v35 .. v35}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 2386
    const/16 v26, 0x0

    .line 2387
    .restart local v26    # "duration":I
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_1c
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_49

    .line 2388
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2389
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_4a

    .line 2390
    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v26, v0

    .line 2394
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_49
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    add-int/lit8 v6, v26, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v35

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_18

    .line 2387
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_4a
    add-int/lit8 v20, v20, 0x1

    goto :goto_1c

    .line 2422
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v26    # "duration":I
    .end local v37    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v39    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v43    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4b
    :try_start_8
    move-object/from16 v0, p2

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->message:Ljava/lang/String;

    .line 2423
    move-object/from16 v0, v46

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->contacts:Ljava/util/ArrayList;

    .line 2424
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 2425
    move-object/from16 v0, v43

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->random_id:Ljava/util/ArrayList;

    .line 2426
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2985
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .end local v20    # "a":I
    .end local v39    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v43    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_2
    move-exception v27

    goto/16 :goto_7

    .line 2428
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v39    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_4c
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;-><init>()V

    .line 2429
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;
    move-object/from16 v0, p2

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->message:Ljava/lang/String;

    .line 2430
    if-nez p14, :cond_51

    const/4 v4, 0x1

    :goto_1d
    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->clear_draft:Z

    .line 2431
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_4d

    .line 2432
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->silent:Z

    .line 2434
    :cond_4d
    move-object/from16 v0, v45

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2435
    move-object/from16 v0, v35

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->random_id:J

    .line 2436
    if-eqz p11, :cond_4e

    .line 2437
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 2438
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->reply_to_msg_id:I

    .line 2440
    :cond_4e
    if-nez p13, :cond_4f

    .line 2441
    const/4 v4, 0x1

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->no_webpage:Z

    .line 2443
    :cond_4f
    if-eqz p15, :cond_50

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_50

    .line 2444
    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->entities:Ljava/util/ArrayList;

    .line 2445
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 2447
    :cond_50
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    .line 2448
    if-nez p14, :cond_0

    .line 2449
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    .line 2430
    :cond_51
    const/4 v4, 0x0

    goto :goto_1d

    .line 2454
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;
    :cond_52
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_56

    .line 2455
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    .line 2456
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    .line 2457
    if-eqz p15, :cond_53

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_53

    .line 2458
    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    .line 2459
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2461
    :cond_53
    if-eqz p11, :cond_54

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_54

    .line 2462
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    .line 2463
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2473
    :cond_54
    :goto_1e
    if-eqz p16, :cond_55

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_55

    .line 2474
    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    .line 2475
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2477
    :cond_55
    move-object/from16 v0, v35

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    .line 2478
    move-object/from16 v0, p2

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    .line 2479
    if-eqz p12, :cond_58

    move-object/from16 v0, p12

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_58

    .line 2480
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2481
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p12

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->url:Ljava/lang/String;

    .line 2482
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2486
    :goto_1f
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_0

    .line 2465
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_56
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_57

    .line 2466
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;-><init>()V

    .line 2467
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    goto :goto_1e

    .line 2469
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_57
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;-><init>()V

    .line 2470
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    const/16 v4, 0xf

    new-array v4, v4, [B

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    .line 2471
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    invoke-virtual {v4, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1e

    .line 2484
    :cond_58
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_1f

    .line 2488
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_59
    const/4 v4, 0x1

    move/from16 v0, v50

    if-lt v0, v4, :cond_5a

    const/4 v4, 0x3

    move/from16 v0, v50

    if-le v0, v4, :cond_5c

    :cond_5a
    const/4 v4, 0x5

    move/from16 v0, v50

    if-lt v0, v4, :cond_5b

    const/16 v4, 0x8

    move/from16 v0, v50

    if-le v0, v4, :cond_5c

    :cond_5b
    const/16 v4, 0x9

    move/from16 v0, v50

    if-ne v0, v4, :cond_b3

    if-eqz v16, :cond_b3

    .line 2489
    :cond_5c
    if-nez v16, :cond_88

    .line 2490
    const/16 v30, 0x0

    .line 2491
    .local v30, "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    const/16 v25, 0x0

    .line 2492
    .local v25, "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    const/4 v4, 0x1

    move/from16 v0, v50

    if-ne v0, v4, :cond_5f

    .line 2493
    move-object/from16 v0, p3

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_5e

    .line 2494
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;-><init>()V

    .line 2495
    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->address:Ljava/lang/String;

    .line 2496
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->title:Ljava/lang/String;

    .line 2497
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->provider:Ljava/lang/String;

    .line 2498
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->venue_id:Ljava/lang/String;

    .line 2502
    :goto_20
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 2503
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 2504
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 2615
    :cond_5d
    :goto_21
    if-eqz v46, :cond_79

    .line 2616
    new-instance v44, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    invoke-direct/range {v44 .. v44}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;-><init>()V

    .line 2617
    .local v44, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 2618
    .restart local v43    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_22
    invoke-virtual/range {v46 .. v46}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_77

    .line 2619
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2618
    add-int/lit8 v20, v20, 0x1

    goto :goto_22

    .line 2500
    .end local v20    # "a":I
    .end local v43    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v44    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    :cond_5e
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;-><init>()V

    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_20

    .line 2505
    :cond_5f
    const/4 v4, 0x2

    move/from16 v0, v50

    if-eq v0, v4, :cond_60

    const/16 v4, 0x9

    move/from16 v0, v50

    if-ne v0, v4, :cond_65

    if-eqz p4, :cond_65

    .line 2506
    :cond_60
    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_63

    .line 2507
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    .line 2508
    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_61

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_23
    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 2509
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2510
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v40

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2511
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2512
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2513
    if-eqz p10, :cond_62

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_62

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 2514
    move-object/from16 v0, p10

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    goto/16 :goto_21

    .line 2508
    :cond_61
    const-string/jumbo v4, ""

    goto :goto_23

    .line 2516
    :cond_62
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_21

    .line 2519
    :cond_63
    new-instance v34, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    invoke-direct/range {v34 .. v34}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;-><init>()V

    .line 2520
    .local v34, "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 2522
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_64

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_24
    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->caption:Ljava/lang/String;

    .line 2524
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    .line 2525
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    .line 2526
    move-object/from16 v30, v34

    .line 2527
    goto/16 :goto_21

    .line 2522
    :cond_64
    const-string/jumbo v4, ""

    goto :goto_24

    .line 2528
    .end local v34    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;
    :cond_65
    const/4 v4, 0x3

    move/from16 v0, v50

    if-ne v0, v4, :cond_6a

    .line 2529
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_68

    .line 2530
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_66

    .line 2531
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;-><init>()V

    .line 2536
    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_25
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_67

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_26
    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 2538
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 2539
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 2540
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2541
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v40

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2542
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2543
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2544
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 2545
    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2546
    move-object/from16 v0, p5

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    goto/16 :goto_21

    .line 2533
    :cond_66
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_25

    .line 2536
    :cond_67
    const-string/jumbo v4, ""

    goto :goto_26

    .line 2548
    :cond_68
    new-instance v34, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v34 .. v34}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 2549
    .local v34, "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 2550
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_69

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_27
    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 2551
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2552
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2553
    move-object/from16 v30, v34

    .line 2554
    goto/16 :goto_21

    .line 2550
    :cond_69
    const-string/jumbo v4, ""

    goto :goto_27

    .line 2555
    .end local v34    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    :cond_6a
    const/4 v4, 0x6

    move/from16 v0, v50

    if-ne v0, v4, :cond_6b

    .line 2556
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;-><init>()V

    .line 2557
    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->phone_number:Ljava/lang/String;

    .line 2558
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->first_name:Ljava/lang/String;

    .line 2559
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->last_name:Ljava/lang/String;

    goto/16 :goto_21

    .line 2560
    :cond_6b
    const/4 v4, 0x7

    move/from16 v0, v50

    if-eq v0, v4, :cond_6c

    const/16 v4, 0x9

    move/from16 v0, v50

    if-ne v0, v4, :cond_73

    .line 2561
    :cond_6c
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_71

    .line 2562
    if-nez v16, :cond_6e

    if-eqz v40, :cond_6e

    invoke-virtual/range {v40 .. v40}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_6e

    const-string/jumbo v4, "http"

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    if-eqz p16, :cond_6e

    .line 2563
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;-><init>()V

    .line 2564
    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    const-string/jumbo v4, "url"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "\\|"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 2565
    .local v21, "args":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_6d

    .line 2566
    const/4 v4, 0x0

    aget-object v4, v21, v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->url:Ljava/lang/String;

    .line 2567
    const/4 v4, 0x1

    aget-object v4, v21, v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->q:Ljava/lang/String;

    .line 2582
    .end local v21    # "args":[Ljava/lang/String;
    :cond_6d
    :goto_28
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 2583
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 2584
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_70

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_29
    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    goto/16 :goto_21

    .line 2570
    :cond_6e
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_6f

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-eqz v4, :cond_6f

    .line 2571
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;-><init>()V

    .line 2575
    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_2a
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2576
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v40

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2577
    const/4 v4, 0x2

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2578
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2579
    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2580
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_28

    .line 2573
    :cond_6f
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_2a

    .line 2584
    :cond_70
    const-string/jumbo v4, ""

    goto :goto_29

    .line 2586
    :cond_71
    new-instance v34, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v34 .. v34}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 2587
    .restart local v34    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 2588
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2589
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2590
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_72

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2b
    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 2591
    move-object/from16 v30, v34

    .line 2592
    goto/16 :goto_21

    .line 2590
    :cond_72
    const-string/jumbo v4, ""

    goto :goto_2b

    .line 2593
    .end local v34    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    :cond_73
    const/16 v4, 0x8

    move/from16 v0, v50

    if-ne v0, v4, :cond_5d

    .line 2594
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_75

    .line 2595
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .line 2596
    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 2597
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 2598
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_74

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2c
    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 2599
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2600
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    const/4 v4, 0x3

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2601
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2602
    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    goto/16 :goto_21

    .line 2598
    :cond_74
    const-string/jumbo v4, ""

    goto :goto_2c

    .line 2604
    :cond_75
    new-instance v34, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v34 .. v34}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 2605
    .restart local v34    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 2606
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_76

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2d
    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 2607
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 2608
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 2609
    move-object/from16 v30, v34

    goto/16 :goto_21

    .line 2606
    :cond_76
    const-string/jumbo v4, ""

    goto :goto_2d

    .line 2621
    .end local v34    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    .restart local v20    # "a":I
    .restart local v43    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v44    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    :cond_77
    move-object/from16 v0, v46

    move-object/from16 v1, v44

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->contacts:Ljava/util/ArrayList;

    .line 2622
    move-object/from16 v0, v30

    move-object/from16 v1, v44

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 2623
    move-object/from16 v0, v43

    move-object/from16 v1, v44

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->random_id:Ljava/util/ArrayList;

    .line 2624
    const-string/jumbo v4, ""

    move-object/from16 v0, v44

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->message:Ljava/lang/String;

    .line 2625
    if-eqz v25, :cond_78

    .line 2626
    move-object/from16 v0, v44

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    .line 2628
    :cond_78
    move-object/from16 v7, v44

    .line 2651
    .end local v20    # "a":I
    .end local v43    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v44    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .local v7, "reqSend":Lorg/telegram/tgnet/TLObject;
    :goto_2e
    const/4 v4, 0x1

    move/from16 v0, v50

    if-ne v0, v4, :cond_7f

    .line 2652
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2630
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    :cond_79
    new-instance v44, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    invoke-direct/range {v44 .. v44}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;-><init>()V

    .line 2631
    .local v44, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
    move-object/from16 v0, v45

    move-object/from16 v1, v44

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2632
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_7a

    .line 2633
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, v44

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z

    .line 2635
    :cond_7a
    move-object/from16 v0, v35

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v44

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    .line 2636
    move-object/from16 v0, v30

    move-object/from16 v1, v44

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 2638
    if-eqz p1, :cond_7b

    .line 2639
    move-object/from16 v0, v44

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7e

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2f
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 2642
    :cond_7b
    if-eqz p11, :cond_7c

    .line 2643
    move-object/from16 v0, v44

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v44

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    .line 2644
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v44

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to_msg_id:I

    .line 2646
    :cond_7c
    if-eqz v25, :cond_7d

    .line 2647
    move-object/from16 v0, v44

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    .line 2649
    :cond_7d
    move-object/from16 v7, v44

    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    goto/16 :goto_2e

    .line 2639
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    :cond_7e
    const-string/jumbo v4, ""

    goto :goto_2f

    .line 2653
    .end local v44    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    :cond_7f
    const/4 v4, 0x2

    move/from16 v0, v50

    if-ne v0, v4, :cond_81

    .line 2654
    move-object/from16 v0, p4

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_80

    .line 2655
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 2657
    :cond_80
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2659
    :cond_81
    const/4 v4, 0x3

    move/from16 v0, v50

    if-ne v0, v4, :cond_83

    .line 2660
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_82

    .line 2661
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 2663
    :cond_82
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2665
    :cond_83
    const/4 v4, 0x6

    move/from16 v0, v50

    if-ne v0, v4, :cond_84

    .line 2666
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2667
    :cond_84
    const/4 v4, 0x7

    move/from16 v0, v50

    if-ne v0, v4, :cond_86

    .line 2668
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_85

    if-eqz v25, :cond_85

    .line 2669
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 2671
    :cond_85
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v0, v7, v12, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2673
    :cond_86
    const/16 v4, 0x8

    move/from16 v0, v50

    if-ne v0, v4, :cond_0

    .line 2674
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_87

    .line 2675
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 2677
    :cond_87
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2682
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_88
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_8c

    .line 2683
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    .line 2684
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    .line 2685
    if-eqz p15, :cond_89

    invoke-virtual/range {p15 .. p15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_89

    .line 2686
    move-object/from16 v0, p15

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    .line 2687
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2689
    :cond_89
    if-eqz p11, :cond_8a

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_8a

    .line 2690
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    .line 2691
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2693
    :cond_8a
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2702
    :goto_30
    if-eqz p16, :cond_8b

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8b

    .line 2703
    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    .line 2704
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 2706
    :cond_8b
    move-object/from16 v0, v35

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    .line 2707
    const-string/jumbo v4, ""

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    .line 2708
    const/4 v4, 0x1

    move/from16 v0, v50

    if-ne v0, v4, :cond_8f

    .line 2709
    move-object/from16 v0, p3

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_8e

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_8e

    .line 2710
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2711
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    .line 2712
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    .line 2713
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    .line 2714
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;

    .line 2718
    :goto_31
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    .line 2719
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    .line 2720
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_0

    .line 2694
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_8c
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_8d

    .line 2695
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;-><init>()V

    .line 2696
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v35

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    goto/16 :goto_30

    .line 2698
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_8d
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;-><init>()V

    .line 2699
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    const/16 v4, 0xf

    new-array v4, v4, [B

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    .line 2700
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    invoke-virtual {v4, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto/16 :goto_30

    .line 2716
    :cond_8e
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_31

    .line 2721
    :cond_8f
    const/4 v4, 0x2

    move/from16 v0, v50

    if-eq v0, v4, :cond_90

    const/16 v4, 0x9

    move/from16 v0, v50

    if-ne v0, v4, :cond_97

    if-eqz p4, :cond_97

    .line 2722
    :cond_90
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2723
    .local v49, "small":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2724
    .local v23, "big":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_93

    .line 2725
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2726
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_91

    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_32
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2727
    move-object/from16 v0, v49

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_92

    .line 2728
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    move-object/from16 v0, v49

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    .line 2740
    :goto_33
    invoke-static/range {v49 .. v49}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 2741
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v49

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2742
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v49

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 2743
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    .line 2744
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    .line 2745
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2746
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_96

    .line 2747
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2748
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v40

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2749
    move-object/from16 v0, v25

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 2750
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2751
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2752
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2753
    if-eqz p10, :cond_95

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_95

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 2754
    move-object/from16 v0, p10

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    .line 2758
    :goto_34
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 2726
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_91
    const-string/jumbo v4, ""

    goto/16 :goto_32

    .line 2730
    :cond_92
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    goto/16 :goto_33

    .line 2733
    :cond_93
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2734
    move-object/from16 v0, v49

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_94

    .line 2735
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    move-object/from16 v0, v49

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;->thumb:[B

    goto/16 :goto_33

    .line 2737
    :cond_94
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;->thumb:[B

    goto/16 :goto_33

    .line 2756
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_95
    move-object/from16 v0, p4

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p4

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_34

    .line 2760
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_96
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 2761
    .local v10, "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 2762
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 2763
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 2764
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 2765
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_0

    .line 2767
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    .end local v23    # "big":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v49    # "small":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_97
    const/4 v4, 0x3

    move/from16 v0, v50

    if-ne v0, v4, :cond_a1

    .line 2768
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 2769
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_9a

    .line 2770
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2771
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_99

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_99

    .line 2772
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    .line 2791
    :goto_35
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_9e

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_36
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2792
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const-string/jumbo v6, "video/mp4"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2793
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2794
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_37
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_98

    .line 2795
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2796
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_9f

    .line 2797
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    .line 2798
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    .line 2799
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    .line 2803
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_98
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2804
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 2805
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_a0

    .line 2806
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2807
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v40

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2808
    move-object/from16 v0, v25

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 2809
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2810
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2811
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2812
    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2813
    move-object/from16 v0, p5

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 2814
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 2774
    .end local v20    # "a":I
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_99
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    goto/16 :goto_35

    .line 2776
    :cond_9a
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_9c

    .line 2777
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2778
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_9b

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_9b

    .line 2779
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;->thumb:[B

    goto/16 :goto_35

    .line 2781
    :cond_9b
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;->thumb:[B

    goto/16 :goto_35

    .line 2784
    :cond_9c
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2785
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_9d

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_9d

    .line 2786
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb:[B

    goto/16 :goto_35

    .line 2788
    :cond_9d
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb:[B

    goto/16 :goto_35

    .line 2791
    :cond_9e
    const-string/jumbo v4, ""

    goto/16 :goto_36

    .line 2794
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_9f
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_37

    .line 2816
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_a0
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 2817
    .restart local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 2818
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 2819
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 2820
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 2821
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_0

    .line 2823
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    .end local v20    # "a":I
    :cond_a1
    const/4 v4, 0x6

    move/from16 v0, v50

    if-ne v0, v4, :cond_a2

    .line 2824
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2825
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->phone_number:Ljava/lang/String;

    .line 2826
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->first_name:Ljava/lang/String;

    .line 2827
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->last_name:Ljava/lang/String;

    .line 2828
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->user_id:I

    .line 2829
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v13

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_0

    .line 2830
    :cond_a2
    const/4 v4, 0x7

    move/from16 v0, v50

    if-eq v0, v4, :cond_a3

    const/16 v4, 0x9

    move/from16 v0, v50

    if-ne v0, v4, :cond_ac

    if-eqz p7, :cond_ac

    .line 2831
    :cond_a3
    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_a5

    .line 2832
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2833
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->id:J

    .line 2834
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->date:I

    .line 2835
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->access_hash:J

    .line 2836
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2837
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2838
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->dc_id:I

    .line 2839
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 2840
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v4, :cond_a4

    .line 2841
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 2842
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v6, "s"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 2846
    :goto_38
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v13

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_0

    .line 2844
    :cond_a4
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_38

    .line 2848
    :cond_a5
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 2849
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_a9

    .line 2850
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2851
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 2852
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_a7

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_39
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2853
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_a8

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_a8

    .line 2854
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2855
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2856
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 2875
    :goto_3a
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2876
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2878
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    if-nez v4, :cond_ab

    .line 2879
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2880
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v40

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2881
    move-object/from16 v0, v25

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 2882
    const/4 v4, 0x2

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2883
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2884
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2885
    if-eqz p10, :cond_a6

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a6

    const-string/jumbo v4, "http"

    move-object/from16 v0, p10

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 2886
    move-object/from16 v0, p10

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    .line 2888
    :cond_a6
    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2889
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 2852
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_a7
    const-string/jumbo v4, ""

    goto/16 :goto_39

    .line 2858
    :cond_a8
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2859
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2860
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_3a

    .line 2863
    :cond_a9
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2864
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    invoke-static/range {p7 .. p7}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->file_name:Ljava/lang/String;

    .line 2865
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_aa

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_aa

    .line 2866
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;->thumb:[B

    .line 2867
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2868
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto/16 :goto_3a

    .line 2870
    :cond_aa
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;->thumb:[B

    .line 2871
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2872
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto/16 :goto_3a

    .line 2891
    :cond_ab
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 2892
    .restart local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 2893
    move-object/from16 v0, p7

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 2894
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 2895
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 2896
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_0

    .line 2899
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    :cond_ac
    const/16 v4, 0x8

    move/from16 v0, v50

    if-ne v0, v4, :cond_0

    .line 2900
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 2901
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 2902
    move-object/from16 v0, v25

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 2903
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 2904
    move-object/from16 v0, p7

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 2905
    const/4 v4, 0x3

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 2907
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_af

    .line 2908
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2909
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 2910
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_ad

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_3b
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 2911
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_ae

    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_ae

    .line 2912
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2913
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2914
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 2920
    :goto_3c
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2921
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2922
    move-object/from16 v0, v40

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 2940
    :goto_3d
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 2910
    :cond_ad
    const-string/jumbo v4, ""

    goto :goto_3b

    .line 2916
    :cond_ae
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 2917
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 2918
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_3c

    .line 2924
    :cond_af
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_b1

    .line 2925
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 2929
    :goto_3e
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_3f
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_b0

    .line 2930
    move-object/from16 v0, p7

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 2931
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v4, :cond_b2

    .line 2932
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    .line 2936
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_b0
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const-string/jumbo v6, "audio/ogg"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 2937
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p7

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 2938
    const/4 v4, 0x3

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    goto :goto_3d

    .line 2927
    .end local v20    # "a":I
    :cond_b1
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_3e

    .line 2929
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_b2
    add-int/lit8 v20, v20, 0x1

    goto :goto_3f

    .line 2943
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_b3
    const/4 v4, 0x4

    move/from16 v0, v50

    if-ne v0, v4, :cond_b8

    .line 2944
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;-><init>()V

    .line 2945
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    move-object/from16 v0, v45

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2946
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_b6

    .line 2947
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v24

    .line 2948
    .restart local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2949
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v6, v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 2950
    if-eqz v24, :cond_b4

    .line 2951
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v24

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 2956
    .end local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_b4
    :goto_40
    move-object/from16 v0, p14

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_b5

    .line 2957
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z

    .line 2959
    :cond_b5
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2960
    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ltz v4, :cond_b7

    .line 2961
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-virtual/range {p14 .. p14}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2965
    :goto_41
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2954
    :cond_b6
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_40

    .line 2963
    :cond_b7
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    move-object/from16 v0, p14

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 2966
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    :cond_b8
    const/16 v4, 0x9

    move/from16 v0, v50

    if-ne v0, v4, :cond_0

    .line 2967
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;-><init>()V

    .line 2968
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;
    move-object/from16 v0, v45

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2969
    move-object/from16 v0, v35

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->random_id:J

    .line 2970
    if-eqz p11, :cond_b9

    .line 2971
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 2972
    invoke-virtual/range {p11 .. p11}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->reply_to_msg_id:I

    .line 2974
    :cond_b9
    move-object/from16 v0, v35

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_ba

    .line 2975
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p8

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->silent:Z

    .line 2977
    :cond_ba
    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->query_id:J

    .line 2978
    const-string/jumbo v4, "id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->id:Ljava/lang/String;

    .line 2979
    if-nez p14, :cond_bb

    .line 2980
    const/4 v4, 0x1

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->clear_draft:Z

    .line 2981
    const/4 v4, 0x0

    move-wide/from16 v0, p8

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    .line 2983
    :cond_bb
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 2985
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v39    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local p6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v37    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v51    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_3
    move-exception v27

    move-object/from16 v12, v37

    .end local v37    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 p6, v51

    .end local v51    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local p6    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_7
.end method

.method static synthetic access$000(Lorg/telegram/messenger/SendMessagesHelper;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->sendLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$100(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/Uri;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # J
    .param p6, "x5"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "x6"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static/range {p0 .. p7}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getTrimmedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;
    .param p1, "x1"    # Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    return-void
.end method

.method static synthetic access$800(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;
    .param p1, "x1"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "x2"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/telegram/messenger/SendMessagesHelper;->updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lorg/telegram/messenger/SendMessagesHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lorg/telegram/messenger/SendMessagesHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance()Lorg/telegram/messenger/SendMessagesHelper;
    .locals 4

    .prologue
    .line 212
    sget-object v0, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;

    .line 213
    .local v0, "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    if-nez v0, :cond_1

    .line 214
    const-class v3, Lorg/telegram/messenger/SendMessagesHelper;

    monitor-enter v3

    .line 215
    :try_start_0
    sget-object v0, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;

    .line 216
    if-nez v0, :cond_0

    .line 217
    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper;

    invoke-direct {v1}, Lorg/telegram/messenger/SendMessagesHelper;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    .local v1, "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    :try_start_1
    sput-object v1, Lorg/telegram/messenger/SendMessagesHelper;->Instance:Lorg/telegram/messenger/SendMessagesHelper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 219
    .end local v1    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    :cond_0
    :try_start_2
    monitor-exit v3

    .line 221
    :cond_1
    return-object v0

    .line 219
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    .restart local v1    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    .restart local v0    # "localInstance":Lorg/telegram/messenger/SendMessagesHelper;
    goto :goto_0
.end method

.method private static getTrimmedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "src"    # Ljava/lang/String;

    .prologue
    .line 4179
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4180
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 4189
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 4183
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    :goto_1
    const-string/jumbo v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4184
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 4186
    :cond_1
    :goto_2
    const-string/jumbo v1, "\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4187
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object v0, p0

    .line 4189
    goto :goto_0
.end method

.method private performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .locals 8
    .param p1, "message"    # Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .prologue
    const/4 v5, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2997
    iget v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-nez v3, :cond_4

    .line 2998
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 2999
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3000
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    const-string/jumbo v5, "file"

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 3113
    :cond_0
    :goto_0
    return-void

    .line 3002
    :cond_1
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v3, :cond_2

    .line 3003
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3004
    .local v1, "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3005
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 3007
    .end local v1    # "location":Ljava/lang/String;
    :cond_2
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3008
    .restart local v1    # "location":Ljava/lang/String;
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$FileLocation;->dc_id:I

    if-eqz v3, :cond_3

    .line 3009
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3010
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3011
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3012
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string/jumbo v5, "jpg"

    invoke-virtual {v3, v4, v5, v6, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$FileLocation;Ljava/lang/String;IZ)V

    goto :goto_0

    .line 3016
    .end local v0    # "file":Ljava/io/File;
    :cond_3
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3017
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 3020
    .end local v1    # "location":Ljava/lang/String;
    :cond_4
    iget v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-ne v3, v7, :cond_e

    .line 3021
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_6

    .line 3022
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3023
    .restart local v1    # "location":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 3024
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3026
    :cond_5
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3027
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MediaController;->scheduleVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_0

    .line 3029
    .end local v1    # "location":Ljava/lang/String;
    :cond_6
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v3, :cond_b

    .line 3031
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v3, :cond_8

    .line 3032
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 3036
    .local v2, "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_1
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v3, :cond_a

    .line 3037
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3038
    .restart local v1    # "location":Ljava/lang/String;
    if-nez v1, :cond_7

    .line 3039
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3041
    :cond_7
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3042
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_9

    .line 3043
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    invoke-virtual {v3, v1, v6, v6, v4}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    .line 3034
    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_8
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .restart local v2    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_1

    .line 3045
    .restart local v1    # "location":Ljava/lang/String;
    :cond_9
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 3048
    .end local v1    # "location":Ljava/lang/String;
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3049
    .restart local v1    # "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3050
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 3053
    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_b
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3054
    .restart local v1    # "location":Ljava/lang/String;
    if-nez v1, :cond_c

    .line 3055
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3057
    :cond_c
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3058
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    if-eqz v3, :cond_d

    .line 3059
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    invoke-virtual {v3, v1, v7, v6, v4}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    .line 3061
    :cond_d
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 3065
    .end local v1    # "location":Ljava/lang/String;
    :cond_e
    iget v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_15

    .line 3066
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 3067
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-direct {p0, v3, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3068
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    const-string/jumbo v5, "gif"

    invoke-virtual {v3, v4, v5}, Lorg/telegram/messenger/ImageLoader;->loadHttpFile(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3070
    :cond_f
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v3, :cond_13

    .line 3072
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v3, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v3, :cond_10

    .line 3073
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 3077
    .restart local v2    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_2
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v3, :cond_12

    .line 3078
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3079
    .restart local v1    # "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3080
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v3, :cond_11

    .line 3081
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 3075
    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_10
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    iget-object v2, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .restart local v2    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_2

    .line 3083
    .restart local v1    # "location":Ljava/lang/String;
    :cond_11
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 3085
    .end local v1    # "location":Ljava/lang/String;
    :cond_12
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v3, :cond_0

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v3, :cond_0

    .line 3086
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".jpg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3087
    .restart local v1    # "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3088
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 3091
    .end local v1    # "location":Ljava/lang/String;
    .end local v2    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_13
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3092
    .restart local v1    # "location":Ljava/lang/String;
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v3, :cond_14

    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-eqz v3, :cond_14

    .line 3093
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3094
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_14

    .line 3095
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-static {v3}, Lorg/telegram/messenger/FileLoader;->getAttachFileName(Lorg/telegram/tgnet/TLObject;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3096
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    iget-object v4, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-virtual {v3, v4, v7, v6}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    goto/16 :goto_0

    .line 3100
    .end local v0    # "file":Ljava/io/File;
    :cond_14
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3101
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v6}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 3104
    .end local v1    # "location":Ljava/lang/String;
    :cond_15
    iget v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 3105
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v3, v3, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v3, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3106
    .restart local v1    # "location":Ljava/lang/String;
    invoke-direct {p0, v1, p1}, Lorg/telegram/messenger/SendMessagesHelper;->putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 3107
    iget-object v3, p1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v3, :cond_16

    .line 3108
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v6, v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 3110
    :cond_16
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v3

    invoke-virtual {v3, v1, v7, v7}, Lorg/telegram/messenger/FileLoader;->uploadFile(Ljava/lang/String;ZZ)V

    goto/16 :goto_0
.end method

.method private performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    .locals 7
    .param p1, "req"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "msgObj"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "originalPath"    # Ljava/lang/String;

    .prologue
    .line 3142
    iget-object v2, p2, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 3143
    .local v2, "newMsgObj":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual {p0, v2}, Lorg/telegram/messenger/SendMessagesHelper;->putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 3144
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v6

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$8;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper$8;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$9;

    invoke-direct {v3, p0, v2}, Lorg/telegram/messenger/SendMessagesHelper$9;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/tgnet/TLRPC$Message;)V

    instance-of v1, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    if-eqz v1, :cond_0

    const/16 v1, 0x80

    :goto_0
    or-int/lit8 v1, v1, 0x44

    invoke-virtual {v6, p1, v0, v3, v1}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;Lorg/telegram/tgnet/QuickAckDelegate;I)I

    .line 3292
    return-void

    .line 3144
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static prepareSendingAudioDocuments(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
    .locals 3
    .param p1, "dialog_id"    # J
    .param p3, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3676
    .local p0, "messageObjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lorg/telegram/messenger/SendMessagesHelper$12;-><init>(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3733
    return-void
.end method

.method public static prepareSendingBotContextResult(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;)V
    .locals 12
    .param p0, "result"    # Lorg/telegram/tgnet/TLRPC$BotInlineResult;
    .param p2, "dialog_id"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$BotInlineResult;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3794
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_1

    .line 4020
    :cond_0
    :goto_0
    return-void

    .line 3797
    :cond_1
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaAuto;

    if-eqz v0, :cond_2

    .line 3798
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$14;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/telegram/messenger/SendMessagesHelper$14;-><init>(Lorg/telegram/tgnet/TLRPC$BotInlineResult;Ljava/util/HashMap;JLorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    goto :goto_0

    .line 3999
    :cond_2
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageText;

    if-eqz v0, :cond_4

    .line 4000
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v1, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->message:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-boolean v2, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->no_webpage:Z

    if-nez v2, :cond_3

    const/4 v6, 0x1

    :goto_1
    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->entities:Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v8, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object v9, p1

    invoke-virtual/range {v0 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 4001
    :cond_4
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaVenue;

    if-eqz v0, :cond_5

    .line 4002
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;-><init>()V

    .line 4003
    .local v1, "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 4004
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->address:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->address:Ljava/lang/String;

    .line 4005
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->title:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->title:Ljava/lang/String;

    .line 4006
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->provider:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->provider:Ljava/lang/String;

    .line 4007
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->venue_id:Ljava/lang/String;

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;->venue_id:Ljava/lang/String;

    .line 4008
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide v2, p2

    move-object/from16 v4, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    .line 4009
    .end local v1    # "venue":Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;
    :cond_5
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaGeo;

    if-eqz v0, :cond_6

    .line 4010
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 4011
    .local v3, "location":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iput-object v0, v3, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 4012
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v7, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object v8, p1

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 4013
    .end local v3    # "location":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    :cond_6
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    instance-of v0, v0, Lorg/telegram/tgnet/TLRPC$TL_botInlineMessageMediaContact;

    if-eqz v0, :cond_0

    .line 4014
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_user;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_user;-><init>()V

    .line 4015
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->phone_number:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 4016
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->first_name:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 4017
    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->last_name:Ljava/lang/String;

    iput-object v0, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 4018
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v4

    iget-object v0, p0, Lorg/telegram/tgnet/TLRPC$BotInlineResult;->send_message:Lorg/telegram/tgnet/TLRPC$BotInlineMessage;

    iget-object v9, v0, Lorg/telegram/tgnet/TLRPC$BotInlineMessage;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-wide v6, p2

    move-object/from16 v8, p4

    move-object v10, p1

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0
.end method

.method public static prepareSendingDocument(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;)V
    .locals 8
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "originalPath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mine"    # Ljava/lang/String;
    .param p4, "dialog_id"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 3661
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 3673
    :goto_0
    return-void

    .line 3664
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3665
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3666
    .local v1, "originalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 3667
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz p2, :cond_2

    .line 3668
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3670
    .restart local v2    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3671
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    .line 3672
    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;)V

    goto :goto_0
.end method

.method private static prepareSendingDocumentInternal(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/lang/String;)Z
    .locals 32
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "originalPath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "dialog_id"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "caption"    # Ljava/lang/String;

    .prologue
    .line 3495
    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez p2, :cond_1

    .line 3496
    const/4 v2, 0x0

    .line 3657
    :goto_0
    return v2

    .line 3498
    :cond_1
    if-eqz p2, :cond_2

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3499
    const/4 v2, 0x0

    goto :goto_0

    .line 3501
    :cond_2
    if-eqz p0, :cond_3

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->isInternalUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3502
    const/4 v2, 0x0

    goto :goto_0

    .line 3504
    :cond_3
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v30

    .line 3505
    .local v30, "myMime":Landroid/webkit/MimeTypeMap;
    const/4 v11, 0x0

    .line 3506
    .local v11, "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    if-eqz p2, :cond_6

    .line 3507
    const/16 v22, 0x0

    .line 3508
    .local v22, "extension":Ljava/lang/String;
    if-eqz p3, :cond_4

    .line 3509
    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3511
    :cond_4
    if-nez v22, :cond_5

    .line 3512
    const-string/jumbo v22, "txt"

    .line 3514
    :cond_5
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/telegram/messenger/MediaController;->copyFileToCache(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 3515
    if-nez p0, :cond_6

    .line 3516
    const/4 v2, 0x0

    goto :goto_0

    .line 3519
    .end local v22    # "extension":Ljava/lang/String;
    :cond_6
    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3520
    .local v23, "f":Ljava/io/File;
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-nez v2, :cond_8

    .line 3521
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 3524
    :cond_8
    move-wide/from16 v0, p4

    long-to-int v2, v0

    if-nez v2, :cond_b

    const/16 v28, 0x1

    .line 3525
    .local v28, "isEncrypted":Z
    :goto_1
    if-nez v28, :cond_c

    const/4 v10, 0x1

    .line 3527
    .local v10, "allowSticker":Z
    :goto_2
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v31

    .line 3528
    .local v31, "name":Ljava/lang/String;
    const-string/jumbo v21, ""

    .line 3529
    .local v21, "ext":Ljava/lang/String;
    const/16 v2, 0x2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v27

    .line 3530
    .local v27, "idx":I
    const/4 v2, -0x1

    move/from16 v0, v27

    if-eq v0, v2, :cond_9

    .line 3531
    add-int/lit8 v2, v27, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    .line 3533
    :cond_9
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mp3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "m4a"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3534
    :cond_a
    invoke-static/range {v23 .. v23}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getAudioInfo(Ljava/io/File;)Lorg/telegram/messenger/audioinfo/AudioInfo;

    move-result-object v14

    .line 3535
    .local v14, "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getDuration()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_f

    .line 3536
    if-eqz v28, :cond_18

    .line 3537
    const/16 v2, 0x20

    shr-long v2, p4, v2

    long-to-int v0, v2

    move/from16 v26, v0

    .line 3538
    .local v26, "high_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v20

    .line 3539
    .local v20, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v20, :cond_d

    .line 3540
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 3524
    .end local v10    # "allowSticker":Z
    .end local v14    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    .end local v20    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v21    # "ext":Ljava/lang/String;
    .end local v26    # "high_id":I
    .end local v27    # "idx":I
    .end local v28    # "isEncrypted":Z
    .end local v31    # "name":Ljava/lang/String;
    :cond_b
    const/16 v28, 0x0

    goto :goto_1

    .line 3525
    .restart local v28    # "isEncrypted":Z
    :cond_c
    const/4 v10, 0x0

    goto :goto_2

    .line 3542
    .restart local v10    # "allowSticker":Z
    .restart local v14    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    .restart local v20    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v21    # "ext":Ljava/lang/String;
    .restart local v26    # "high_id":I
    .restart local v27    # "idx":I
    .restart local v31    # "name":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v20

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v2

    const/16 v3, 0x2e

    if-lt v2, v3, :cond_17

    .line 3543
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    .end local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 3550
    .end local v20    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v26    # "high_id":I
    .restart local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    :goto_3
    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getDuration()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    div-long/2addr v2, v6

    long-to-int v2, v2

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->duration:I

    .line 3551
    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    .line 3552
    invoke-virtual {v14}, Lorg/telegram/messenger/audioinfo/AudioInfo;->getArtist()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    .line 3553
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    if-nez v2, :cond_e

    .line 3554
    const-string/jumbo v2, ""

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->title:Ljava/lang/String;

    .line 3555
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 3557
    :cond_e
    iget-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    if-nez v2, :cond_f

    .line 3558
    const-string/jumbo v2, ""

    iput-object v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->performer:Ljava/lang/String;

    .line 3559
    iget v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;->flags:I

    .line 3563
    .end local v14    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    :cond_f
    if-eqz p1, :cond_10

    .line 3564
    if-eqz v11, :cond_19

    .line 3565
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3571
    :cond_10
    :goto_4
    const/16 v18, 0x0

    .line 3572
    .local v18, "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    if-nez v28, :cond_11

    .line 3573
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    if-nez v28, :cond_1a

    const/4 v2, 0x1

    :goto_5
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v18

    .end local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3574
    .restart local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    if-nez v18, :cond_11

    invoke-virtual/range {p0 .. p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    if-nez v28, :cond_11

    .line 3575
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez v28, :cond_1b

    const/4 v2, 0x1

    :goto_6
    invoke-virtual {v3, v6, v2}, Lorg/telegram/messenger/MessagesStorage;->getSentFile(Ljava/lang/String;I)Lorg/telegram/tgnet/TLObject;

    move-result-object v18

    .end local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    check-cast v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 3578
    .restart local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_11
    if-nez v18, :cond_15

    .line 3579
    new-instance v18, Lorg/telegram/tgnet/TLRPC$TL_document;

    .end local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    invoke-direct/range {v18 .. v18}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 3580
    .restart local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    const-wide/16 v2, 0x0

    move-object/from16 v0, v18

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    .line 3581
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v2

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    .line 3582
    new-instance v25, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    invoke-direct/range {v25 .. v25}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 3583
    .local v25, "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3584
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3585
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 3586
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    .line 3587
    if-eqz v11, :cond_12

    .line 3588
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3590
    :cond_12
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1e

    .line 3591
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "webp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3592
    const-string/jumbo v2, "image/webp"

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 3604
    :goto_7
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    const-string/jumbo v3, "image/gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 3606
    :try_start_0
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x42b40000    # 90.0f

    const/4 v8, 0x1

    invoke-static {v2, v3, v6, v7, v8}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v15

    .line 3607
    .local v15, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v15, :cond_13

    .line 3608
    const-string/jumbo v2, "animation.gif"

    move-object/from16 v0, v25

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;->file_name:Ljava/lang/String;

    .line 3609
    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v3, 0x42b40000    # 90.0f

    const/16 v6, 0x37

    move/from16 v0, v28

    invoke-static {v15, v2, v3, v6, v0}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v2

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3610
    invoke-virtual {v15}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3616
    .end local v15    # "bitmap":Landroid/graphics/Bitmap;
    :cond_13
    :goto_8
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    const-string/jumbo v3, "image/webp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    if-eqz v10, :cond_14

    .line 3617
    new-instance v16, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3619
    .local v16, "bmOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    :try_start_1
    move-object/from16 v0, v16

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3620
    new-instance v24, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3621
    .local v24, "file":Ljava/io/RandomAccessFile;
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2

    sget-object v3, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual/range {v2 .. v7}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v17

    .line 3622
    .local v17, "buffer":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    const/4 v6, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v2, v0, v3, v1, v6}, Lorg/telegram/messenger/Utilities;->loadWebpImage(Landroid/graphics/Bitmap;Ljava/nio/ByteBuffer;ILandroid/graphics/BitmapFactory$Options;Z)Z

    .line 3623
    invoke-virtual/range {v24 .. v24}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3627
    .end local v17    # "buffer":Ljava/nio/ByteBuffer;
    .end local v24    # "file":Ljava/io/RandomAccessFile;
    :goto_9
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-eqz v2, :cond_14

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-eqz v2, :cond_14

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v3, 0x320

    if-gt v2, v3, :cond_14

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v3, 0x320

    if-gt v2, v3, :cond_14

    .line 3628
    new-instance v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    invoke-direct {v13}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;-><init>()V

    .line 3629
    .local v13, "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;
    const-string/jumbo v2, ""

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->alt:Ljava/lang/String;

    .line 3630
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    iput-object v2, v13, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 3631
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3632
    new-instance v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    invoke-direct {v12}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;-><init>()V

    .line 3633
    .local v12, "attributeImageSize":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->w:I

    .line 3634
    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v2, v12, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;->h:I

    .line 3635
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3638
    .end local v12    # "attributeImageSize":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;
    .end local v13    # "attributeSticker":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;
    .end local v16    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    :cond_14
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v2, :cond_15

    .line 3639
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3640
    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v3, "s"

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 3643
    .end local v25    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :cond_15
    move-object/from16 v0, p7

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    .line 3645
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3646
    .local v9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_16

    .line 3647
    const-string/jumbo v2, "originalPath"

    move-object/from16 v0, p1

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3649
    :cond_16
    move-object/from16 v4, v18

    .line 3650
    .local v4, "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    move-object/from16 v5, p0

    .line 3651
    .local v5, "pathFinal":Ljava/lang/String;
    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$11;

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v9}, Lorg/telegram/messenger/SendMessagesHelper$11;-><init>(Lorg/telegram/tgnet/TLRPC$TL_document;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V

    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3657
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 3545
    .end local v4    # "documentFinal":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v5    # "pathFinal":Ljava/lang/String;
    .end local v9    # "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    .restart local v14    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    .restart local v20    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v26    # "high_id":I
    :cond_17
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_old;

    .end local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_old;-><init>()V

    .restart local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    goto/16 :goto_3

    .line 3548
    .end local v20    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v26    # "high_id":I
    :cond_18
    new-instance v11, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    .end local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    invoke-direct {v11}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .restart local v11    # "attributeAudio":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;
    goto/16 :goto_3

    .line 3567
    .end local v14    # "audioInfo":Lorg/telegram/messenger/audioinfo/AudioInfo;
    :cond_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    .line 3573
    .restart local v18    # "document":Lorg/telegram/tgnet/TLRPC$TL_document;
    :cond_1a
    const/4 v2, 0x4

    goto/16 :goto_5

    .line 3575
    :cond_1b
    const/4 v2, 0x4

    goto/16 :goto_6

    .line 3594
    .restart local v25    # "fileName":Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;
    :cond_1c
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 3595
    .local v29, "mimeType":Ljava/lang/String;
    if-eqz v29, :cond_1d

    .line 3596
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_7

    .line 3598
    :cond_1d
    const-string/jumbo v2, "application/octet-stream"

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_7

    .line 3602
    .end local v29    # "mimeType":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v2, "application/octet-stream"

    move-object/from16 v0, v18

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    goto/16 :goto_7

    .line 3612
    :catch_0
    move-exception v19

    .line 3613
    .local v19, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 3624
    .end local v19    # "e":Ljava/lang/Exception;
    .restart local v16    # "bmOptions":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v19

    .line 3625
    .restart local v19    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9
.end method

.method public static prepareSendingDocuments(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;)V
    .locals 10
    .param p3, "mime"    # Ljava/lang/String;
    .param p4, "dialog_id"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3736
    .local p0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "originalPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 3772
    :cond_1
    :goto_0
    return-void

    .line 3739
    :cond_2
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$13;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/SendMessagesHelper$13;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static prepareSendingPhoto(Ljava/lang/String;Landroid/net/Uri;JLorg/telegram/messenger/MessageObject;Ljava/lang/CharSequence;)V
    .locals 6
    .param p0, "imageFilePath"    # Ljava/lang/String;
    .param p1, "imageUri"    # Landroid/net/Uri;
    .param p2, "dialog_id"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p5, "caption"    # Ljava/lang/CharSequence;

    .prologue
    .line 3775
    const/4 v0, 0x0

    .line 3776
    .local v0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 3777
    .local v1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v5, 0x0

    .line 3778
    .local v5, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 3779
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3780
    .restart local v0    # "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3782
    :cond_0
    if-eqz p1, :cond_1

    .line 3783
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3784
    .restart local v1    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3786
    :cond_1
    if-eqz p5, :cond_2

    .line 3787
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3788
    .restart local v5    # "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-wide v2, p2

    move-object v4, p4

    .line 3790
    invoke-static/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper;->prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;)V

    .line 3791
    return-void
.end method

.method public static prepareSendingPhotos(Ljava/util/ArrayList;Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;)V
    .locals 8
    .param p2, "dialog_id"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4219
    .local p0, "paths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .local p5, "captions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4329
    :cond_2
    :goto_0
    return-void

    .line 4222
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4223
    .local v4, "pathsCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4224
    .local v5, "urisCopy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz p0, :cond_4

    .line 4225
    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4227
    :cond_4
    if-eqz p1, :cond_5

    .line 4228
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4230
    :cond_5
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$17;

    move-wide v2, p2

    move-object v6, p5

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lorg/telegram/messenger/SendMessagesHelper$17;-><init>(JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static prepareSendingPhotosSearch(Ljava/util/ArrayList;JLorg/telegram/messenger/MessageObject;)V
    .locals 3
    .param p1, "dialog_id"    # J
    .param p3, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MediaController$SearchImage;",
            ">;J",
            "Lorg/telegram/messenger/MessageObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 4023
    .local p0, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4176
    :cond_0
    :goto_0
    return-void

    .line 4026
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$15;

    invoke-direct {v1, p1, p2, p0, p3}, Lorg/telegram/messenger/SendMessagesHelper$15;-><init>(JLjava/util/ArrayList;Lorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public static prepareSendingText(Ljava/lang/String;J)V
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "dialog_id"    # J

    .prologue
    .line 4193
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$16;

    invoke-direct {v1, p0, p1, p2}, Lorg/telegram/messenger/SendMessagesHelper$16;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 4216
    return-void
.end method

.method public static prepareSendingVideo(Ljava/lang/String;JJIILorg/telegram/messenger/VideoEditedInfo;JLorg/telegram/messenger/MessageObject;)V
    .locals 13
    .param p0, "videoPath"    # Ljava/lang/String;
    .param p1, "estimatedSize"    # J
    .param p3, "duration"    # J
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p8, "dialog_id"    # J
    .param p10, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 4332
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 4453
    :cond_0
    :goto_0
    return-void

    .line 4335
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$18;

    move-wide/from16 v2, p8

    move-object/from16 v4, p7

    move-object v5, p0

    move-wide/from16 v6, p3

    move/from16 v8, p6

    move/from16 v9, p5

    move-wide v10, p1

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lorg/telegram/messenger/SendMessagesHelper$18;-><init>(JLorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JIIJLorg/telegram/messenger/MessageObject;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private putToDelayedMessages(Ljava/lang/String;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V
    .locals 2
    .param p1, "location"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .prologue
    .line 3426
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3427
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-nez v0, :cond_0

    .line 3428
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3429
    .restart local v0    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3431
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3432
    return-void
.end method

.method private sendLocation(Landroid/location/Location;)V
    .locals 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v5, 0x0

    .line 999
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;-><init>()V

    .line 1000
    .local v1, "mediaGeo":Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_geoPoint;-><init>()V

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    .line 1001
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    .line 1002
    iget-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    .line 1003
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 1004
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    .line 1005
    .local v4, "messageObject":Lorg/telegram/messenger/MessageObject;
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v0

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    .line 1007
    .end local v4    # "messageObject":Lorg/telegram/messenger/MessageObject;
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/telegram/messenger/MessageObject;>;"
    :cond_0
    return-void
.end method

.method private sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 53
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "location"    # Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .param p3, "photo"    # Lorg/telegram/tgnet/TLRPC$TL_photo;
    .param p4, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p5, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p6, "document"    # Lorg/telegram/tgnet/TLRPC$TL_document;
    .param p7, "peer"    # J
    .param p9, "path"    # Ljava/lang/String;
    .param p10, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p11, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p12, "searchLinks"    # Z
    .param p13, "retryMessageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p15, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "J",
            "Ljava/lang/String;",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Z",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1096
    .local p14, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .local p16, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-wide/16 v8, 0x0

    cmp-long v4, p7, v8

    if-nez v4, :cond_1

    .line 2039
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    const/16 v41, 0x0

    .line 1101
    .local v41, "originalPath":Ljava/lang/String;
    if-eqz p16, :cond_2

    const-string/jumbo v4, "originalPath"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1102
    const-string/jumbo v4, "originalPath"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v41

    .end local v41    # "originalPath":Ljava/lang/String;
    check-cast v41, Ljava/lang/String;

    .line 1105
    .restart local v41    # "originalPath":Ljava/lang/String;
    :cond_2
    const/16 v36, 0x0

    .line 1106
    .local v36, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    const/16 v38, 0x0

    .line 1107
    .local v38, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    const/16 v51, -0x1

    .line 1108
    .local v51, "type":I
    move-wide/from16 v0, p7

    long-to-int v0, v0

    move/from16 v33, v0

    .line 1109
    .local v33, "lower_id":I
    const/16 v4, 0x20

    shr-long v8, p7, v4

    long-to-int v0, v8

    move/from16 v28, v0

    .line 1110
    .local v28, "high_id":I
    const/16 v31, 0x0

    .line 1111
    .local v31, "isChannel":Z
    const/16 v16, 0x0

    .line 1112
    .local v16, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v33, :cond_3

    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v46

    .line 1113
    .local v46, "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    :goto_1
    const/16 v47, 0x0

    .line 1114
    .local v47, "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    if-nez v33, :cond_4

    .line 1115
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v16

    .line 1116
    if-nez v16, :cond_5

    .line 1117
    if-eqz p13, :cond_0

    .line 1118
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, p13

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 1119
    move-object/from16 v0, p13

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 1120
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p13 .. p13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1121
    invoke-virtual/range {p13 .. p13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_0

    .line 1112
    .end local v46    # "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v47    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_3
    const/16 v46, 0x0

    goto :goto_1

    .line 1125
    .restart local v46    # "sendToPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v47    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_4
    move-object/from16 v0, v46

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_5

    .line 1126
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v24

    .line 1127
    .local v24, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v24, :cond_f

    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-nez v4, :cond_f

    const/16 v31, 0x1

    .line 1131
    .end local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_5
    :goto_2
    if-eqz p13, :cond_19

    .line 1132
    :try_start_0
    move-object/from16 v0, p13

    iget-object v0, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v36, v0

    .line 1133
    invoke-virtual/range {p13 .. p13}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1134
    const/16 v51, 0x4

    .line 1320
    :cond_6
    :goto_3
    move-object/from16 v0, v36

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_7

    .line 1321
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v8

    move-object/from16 v0, v36

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 1323
    :cond_7
    if-eqz p16, :cond_9

    const-string/jumbo v4, "bot"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1324
    if-eqz v16, :cond_3c

    .line 1325
    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    .line 1326
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    if-nez v4, :cond_8

    .line 1327
    const-string/jumbo v4, ""

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_name:Ljava/lang/String;

    .line 1332
    :cond_8
    :goto_4
    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1334
    :cond_9
    move-object/from16 v0, p16

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    .line 1335
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 1336
    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1337
    move-object/from16 v0, v46

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_3e

    .line 1338
    if-eqz v31, :cond_a

    .line 1339
    const/4 v4, 0x1

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 1340
    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1342
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v46

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v24

    .line 1343
    .restart local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    if-eqz v24, :cond_b

    .line 1344
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    if-eqz v4, :cond_3d

    .line 1345
    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v6, -0x80000000

    or-int/2addr v4, v6

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1346
    const/4 v4, 0x1

    move-object/from16 v0, v36

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    .line 1357
    .end local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_b
    :goto_5
    move-wide/from16 v0, p7

    move-object/from16 v2, v36

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 1358
    if-eqz p10, :cond_c

    .line 1359
    if-eqz v16, :cond_3f

    move-object/from16 v0, p10

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_3f

    .line 1360
    move-object/from16 v0, p10

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v36

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_random_id:J

    .line 1361
    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1365
    :goto_6
    invoke-virtual/range {p10 .. p10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->reply_to_msg_id:I

    .line 1367
    :cond_c
    if-eqz p15, :cond_d

    if-nez v16, :cond_d

    .line 1368
    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x40

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 1369
    move-object/from16 v0, p15

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    .line 1371
    :cond_d
    if-eqz v33, :cond_4b

    .line 1372
    const/4 v4, 0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_49

    .line 1373
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    if-nez v4, :cond_40

    .line 1374
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 1375
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v36

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1376
    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2030
    :catch_0
    move-exception v27

    move-object/from16 v12, v38

    .line 2031
    .end local v38    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .local v12, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .local v27, "e":Ljava/lang/Exception;
    :goto_7
    const-string/jumbo v4, "tmessages"

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2032
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 2033
    if-eqz v12, :cond_e

    .line 2034
    iget-object v4, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 2036
    :cond_e
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, v36

    iget v11, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v9

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 2037
    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto/16 :goto_0

    .line 1127
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v38    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_f
    const/16 v31, 0x0

    goto/16 :goto_2

    .line 1136
    .end local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_10
    :try_start_1
    move-object/from16 v0, p13

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    if-nez v4, :cond_12

    .line 1137
    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 p1, v0

    .line 1138
    const/16 v51, 0x0

    .line 1162
    :cond_11
    :goto_8
    if-eqz p16, :cond_6

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1163
    const/16 v51, 0x9

    goto/16 :goto_3

    .line 1139
    :cond_12
    move-object/from16 v0, p13

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_13

    .line 1140
    move-object/from16 v0, v36

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 p2, v0

    .line 1141
    const/16 v51, 0x1

    goto :goto_8

    .line 1142
    :cond_13
    move-object/from16 v0, p13

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_14

    .line 1143
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_photo;

    move-object/from16 p3, v0

    .line 1144
    const/16 v51, 0x2

    goto :goto_8

    .line 1145
    :cond_14
    move-object/from16 v0, p13

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_15

    .line 1146
    const/16 v51, 0x3

    .line 1147
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p6, v0

    goto :goto_8

    .line 1148
    :cond_15
    move-object/from16 v0, p13

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xc

    if-ne v4, v6, :cond_16

    .line 1149
    new-instance v52, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;

    invoke-direct/range {v52 .. v52}, Lorg/telegram/tgnet/TLRPC$TL_userRequest_old2;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1150
    .end local p5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .local v52, "user":Lorg/telegram/tgnet/TLRPC$User;
    :try_start_2
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    move-object/from16 v0, v52

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 1151
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, v52

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1152
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, v52

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1153
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    move-object/from16 v0, v52

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1154
    const/16 v51, 0x6

    move-object/from16 p5, v52

    .end local v52    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local p5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_8

    .line 1155
    :cond_16
    :try_start_3
    move-object/from16 v0, p13

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x8

    if-eq v4, v6, :cond_17

    move-object/from16 v0, p13

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0x9

    if-eq v4, v6, :cond_17

    move-object/from16 v0, p13

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xd

    if-eq v4, v6, :cond_17

    move-object/from16 v0, p13

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/16 v6, 0xe

    if-ne v4, v6, :cond_18

    .line 1156
    :cond_17
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p6, v0

    .line 1157
    const/16 v51, 0x7

    goto/16 :goto_8

    .line 1158
    :cond_18
    move-object/from16 v0, p13

    iget v4, v0, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_11

    .line 1159
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object v0, v4

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_document;

    move-object/from16 p6, v0

    .line 1160
    const/16 v51, 0x8

    goto/16 :goto_8

    .line 1167
    :cond_19
    if-eqz p1, :cond_22

    .line 1168
    if-eqz v16, :cond_1e

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_1e

    .line 1169
    new-instance v37, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v37 .. v37}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .local v37, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v36, v37

    .line 1173
    .end local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_9
    if-eqz p14, :cond_1a

    invoke-virtual/range {p14 .. p14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1174
    move-object/from16 v0, p14

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 1176
    :cond_1a
    if-eqz v16, :cond_1b

    move-object/from16 v0, p11

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_webPagePending;

    if-eqz v4, :cond_1b

    .line 1177
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_1f

    .line 1178
    new-instance v39, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;

    invoke-direct/range {v39 .. v39}, Lorg/telegram/tgnet/TLRPC$TL_webPageUrlPending;-><init>()V

    .line 1179
    .local v39, "newWebPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    move-object/from16 v0, v39

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    .line 1180
    move-object/from16 p11, v39

    .line 1185
    .end local v39    # "newWebPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_1b
    :goto_a
    if-nez p11, :cond_20

    .line 1186
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1191
    :goto_b
    if-eqz p16, :cond_21

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1192
    const/16 v51, 0x9

    .line 1196
    :goto_c
    move-object/from16 v0, p1

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1307
    :cond_1c
    :goto_d
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez v4, :cond_1d

    .line 1308
    const-string/jumbo v4, ""

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 1310
    :cond_1d
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 1311
    const/4 v4, 0x1

    move-object/from16 v0, v36

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 1312
    if-eqz v31, :cond_3b

    if-eqz v46, :cond_3b

    .line 1313
    move-object/from16 v0, v46

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    neg-int v4, v4

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 1318
    :goto_e
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    goto/16 :goto_3

    .line 1171
    :cond_1e
    new-instance v37, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v37 .. v37}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v36, v37

    .end local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_9

    .line 1182
    :cond_1f
    const/16 p11, 0x0

    goto :goto_a

    .line 1188
    :cond_20
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1189
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p11

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    goto :goto_b

    .line 1194
    :cond_21
    const/16 v51, 0x0

    goto :goto_c

    .line 1197
    :cond_22
    if-eqz p2, :cond_25

    .line 1198
    if-eqz v16, :cond_23

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_23

    .line 1199
    new-instance v37, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v37 .. v37}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v36, v37

    .line 1203
    .end local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_f
    move-object/from16 v0, p2

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1204
    const-string/jumbo v4, ""

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1205
    if-eqz p16, :cond_24

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1206
    const/16 v51, 0x9

    goto/16 :goto_d

    .line 1201
    :cond_23
    new-instance v37, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v37 .. v37}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v36, v37

    .end local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_f

    .line 1208
    :cond_24
    const/16 v51, 0x1

    goto/16 :goto_d

    .line 1210
    :cond_25
    if-eqz p3, :cond_2a

    .line 1211
    if-eqz v16, :cond_26

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_26

    .line 1212
    new-instance v37, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v37 .. v37}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v36, v37

    .line 1216
    .end local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_10
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1217
    move-object/from16 v0, v36

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_27

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_11
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 1218
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p3

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    .line 1219
    if-eqz p16, :cond_28

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 1220
    const/16 v51, 0x9

    .line 1224
    :goto_12
    const-string/jumbo v4, "-1"

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1225
    if-eqz p9, :cond_29

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_29

    const-string/jumbo v4, "http"

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1226
    move-object/from16 v0, p9

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_d

    .line 1214
    :cond_26
    new-instance v37, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v37 .. v37}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v36, v37

    .end local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_10

    .line 1217
    :cond_27
    const-string/jumbo v4, ""

    goto :goto_11

    .line 1222
    :cond_28
    const/16 v51, 0x2

    goto :goto_12

    .line 1228
    :cond_29
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v32, v0

    .line 1229
    .local v32, "location1":Lorg/telegram/tgnet/TLRPC$FileLocation;
    const/4 v4, 0x1

    move-object/from16 v0, v32

    invoke-static {v0, v4}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_d

    .line 1231
    .end local v32    # "location1":Lorg/telegram/tgnet/TLRPC$FileLocation;
    :cond_2a
    if-eqz p5, :cond_2f

    .line 1232
    if-eqz v16, :cond_2d

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_2d

    .line 1233
    new-instance v37, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v37 .. v37}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v36, v37

    .line 1237
    .end local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_13
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1238
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    .line 1239
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    .line 1240
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    .line 1241
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p5

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    .line 1242
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    if-nez v4, :cond_2b

    .line 1243
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 1245
    :cond_2b
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    if-nez v4, :cond_2c

    .line 1246
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    const-string/jumbo v6, ""

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    move-object/from16 v0, p5

    iput-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 1248
    :cond_2c
    const-string/jumbo v4, ""

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1249
    if-eqz p16, :cond_2e

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1250
    const/16 v51, 0x9

    goto/16 :goto_d

    .line 1235
    :cond_2d
    new-instance v37, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v37 .. v37}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v36, v37

    .end local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto :goto_13

    .line 1252
    :cond_2e
    const/16 v51, 0x6

    goto/16 :goto_d

    .line 1254
    :cond_2f
    if-eqz p6, :cond_1c

    .line 1255
    if-eqz v16, :cond_30

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_30

    .line 1256
    new-instance v37, Lorg/telegram/tgnet/TLRPC$TL_message_secret;

    invoke-direct/range {v37 .. v37}, Lorg/telegram/tgnet/TLRPC$TL_message_secret;-><init>()V

    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v36, v37

    .line 1260
    .end local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    :goto_14
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 1261
    move-object/from16 v0, v36

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_31

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_15
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$MessageMedia;->caption:Ljava/lang/String;

    .line 1262
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p6

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1263
    if-eqz p16, :cond_32

    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 1264
    const/16 v51, 0x9

    .line 1272
    :goto_16
    if-nez p4, :cond_35

    .line 1273
    const-string/jumbo v4, "-1"

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 1277
    :goto_17
    if-eqz v16, :cond_36

    move-object/from16 v0, p6

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    if-lez v4, :cond_36

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 1278
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 1282
    :goto_18
    if-eqz v16, :cond_1c

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1283
    const/16 v20, 0x0

    .local v20, "a":I
    :goto_19
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_1c

    .line 1284
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1285
    .local v22, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    if-eqz v4, :cond_3a

    .line 1286
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-ge v4, v6, :cond_37

    .line 1287
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1288
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_old;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_old;-><init>()V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    .line 1258
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_30
    new-instance v37, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v37 .. v37}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .end local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    move-object/from16 v36, v37

    .end local v37    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    .restart local v36    # "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    goto/16 :goto_14

    .line 1261
    :cond_31
    const-string/jumbo v4, ""

    goto/16 :goto_15

    .line 1265
    :cond_32
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isVideoDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1266
    const/16 v51, 0x3

    goto/16 :goto_16

    .line 1267
    :cond_33
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isVoiceDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1268
    const/16 v51, 0x8

    goto/16 :goto_16

    .line 1270
    :cond_34
    const/16 v51, 0x7

    goto/16 :goto_16

    .line 1275
    :cond_35
    invoke-virtual/range {p4 .. p4}, Lorg/telegram/messenger/VideoEditedInfo;->getString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_17

    .line 1280
    :cond_36
    move-object/from16 v0, p9

    move-object/from16 v1, v36

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    goto/16 :goto_18

    .line 1290
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_37
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    if-eqz v4, :cond_39

    .line 1291
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    invoke-static {v8, v9}, Lorg/telegram/messenger/query/StickersQuery;->getStickerSetName(J)Ljava/lang/String;

    move-result-object v35

    .line 1292
    .local v35, "name":Ljava/lang/String;
    if-eqz v35, :cond_38

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_38

    .line 1293
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetShortName;-><init>()V

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .line 1294
    move-object/from16 v0, v22

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    move-object/from16 v0, v35

    iput-object v0, v4, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->short_name:Ljava/lang/String;

    goto/16 :goto_d

    .line 1296
    :cond_38
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto/16 :goto_d

    .line 1299
    .end local v35    # "name":Ljava/lang/String;
    :cond_39
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetEmpty;-><init>()V

    move-object/from16 v0, v22

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    goto/16 :goto_d

    .line 1283
    :cond_3a
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_19

    .line 1315
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_3b
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 1316
    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_e

    .line 1330
    :cond_3c
    const-string/jumbo v4, "bot"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    goto/16 :goto_4

    .line 1348
    .restart local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3d
    const/4 v4, 0x1

    move-object/from16 v0, v36

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    .line 1349
    move-object/from16 v0, v24

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    if-eqz v4, :cond_b

    .line 1350
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    goto/16 :goto_5

    .line 1355
    .end local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_3e
    const/4 v4, 0x1

    move-object/from16 v0, v36

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_5

    .line 1363
    :cond_3f
    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit8 v4, v4, 0x8

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_6

    .line 1379
    :cond_40
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1380
    .end local v47    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .local v48, "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatFull;->participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$ChatParticipants;->participants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "i$":Ljava/util/Iterator;
    :cond_41
    :goto_1a
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lorg/telegram/tgnet/TLRPC$ChatParticipant;

    .line 1381
    .local v42, "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v42

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$ChatParticipant;->user_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v49

    .line 1382
    .local v49, "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    invoke-static/range {v49 .. v49}, Lorg/telegram/messenger/MessagesController;->getInputUser(Lorg/telegram/tgnet/TLRPC$User;)Lorg/telegram/tgnet/TLRPC$InputUser;

    move-result-object v43

    .line 1383
    .local v43, "peerUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    if-eqz v43, :cond_41

    .line 1384
    move-object/from16 v0, v48

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 2030
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v42    # "participant":Lorg/telegram/tgnet/TLRPC$ChatParticipant;
    .end local v43    # "peerUser":Lorg/telegram/tgnet/TLRPC$InputUser;
    .end local v49    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    :catch_1
    move-exception v27

    move-object/from16 v47, v48

    .end local v48    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v47    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    move-object/from16 v12, v38

    .end local v38    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    goto/16 :goto_7

    .line 1387
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v47    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v29    # "i$":Ljava/util/Iterator;
    .restart local v38    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v48    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_42
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerChat;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerChat;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1388
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move/from16 v0, v33

    iput v0, v4, Lorg/telegram/tgnet/TLRPC$Peer;->chat_id:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v47, v48

    .line 1434
    .end local v29    # "i$":Ljava/util/Iterator;
    .end local v48    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    .restart local v47    # "sendToPeers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$InputUser;>;"
    :cond_43
    :goto_1b
    if-eqz v16, :cond_44

    :try_start_5
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_45

    :cond_44
    const/4 v4, 0x1

    move/from16 v0, v28

    if-eq v0, v4, :cond_45

    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_45

    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v4, :cond_45

    .line 1435
    const/4 v4, 0x1

    move-object/from16 v0, v36

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 1438
    :cond_45
    const/4 v4, 0x1

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 1439
    new-instance v12, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v36

    invoke-direct {v12, v0, v4, v6}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 1440
    .end local v38    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :try_start_6
    move-object/from16 v0, p10

    iput-object v0, v12, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 1441
    invoke-virtual {v12}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-nez v4, :cond_46

    iget v4, v12, Lorg/telegram/messenger/MessageObject;->type:I

    const/4 v6, 0x3

    if-ne v4, v6, :cond_46

    .line 1442
    const/4 v4, 0x1

    iput-boolean v4, v12, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 1445
    :cond_46
    new-instance v40, Ljava/util/ArrayList;

    invoke-direct/range {v40 .. v40}, Ljava/util/ArrayList;-><init>()V

    .line 1446
    .local v40, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v40

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1447
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1448
    .local v5, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1449
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 1450
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-wide/from16 v0, p7

    move-object/from16 v2, v40

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 1451
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v6, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v8}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 1453
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_47

    .line 1454
    if-eqz v46, :cond_47

    .line 1455
    const-string/jumbo v4, "tmessages"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send message user_id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v46

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " chat_id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v46

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " channel_id = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v46

    iget v8, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " access_hash = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v46

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :cond_47
    if-eqz v51, :cond_48

    const/16 v4, 0x9

    move/from16 v0, v51

    if-ne v0, v4, :cond_60

    if-eqz p1, :cond_60

    if-eqz v16, :cond_60

    .line 1460
    :cond_48
    if-nez v16, :cond_59

    .line 1461
    if-eqz v47, :cond_53

    .line 1462
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;-><init>()V

    .line 1463
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 1464
    .local v44, "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_1c
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_52

    .line 1465
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 1464
    add-int/lit8 v20, v20, 0x1

    goto :goto_1c

    .line 1390
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v20    # "a":I
    .end local v40    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v44    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v38    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    :cond_49
    :try_start_7
    invoke-static/range {v33 .. v33}, Lorg/telegram/messenger/MessagesController;->getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v4

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1391
    if-lez v33, :cond_43

    .line 1392
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v49

    .line 1393
    .restart local v49    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    if-nez v49, :cond_4a

    .line 1394
    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto/16 :goto_0

    .line 1397
    :cond_4a
    move-object/from16 v0, v49

    iget-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$User;->bot:Z

    if-eqz v4, :cond_43

    .line 1398
    const/4 v4, 0x0

    move-object/from16 v0, v36

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_1b

    .line 1403
    .end local v49    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_4b
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_peerUser;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_peerUser;-><init>()V

    move-object/from16 v0, v36

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 1404
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v6

    if-ne v4, v6, :cond_4d

    .line 1405
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->admin_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    .line 1409
    :goto_1d
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 1410
    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_43

    .line 1411
    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 1412
    const/16 v26, 0x0

    .line 1413
    .local v26, "duration":I
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_1e
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_4c

    .line 1414
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1415
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v4, :cond_4e

    .line 1416
    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v26, v0

    .line 1420
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_4c
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    add-int/lit8 v6, v26, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    goto/16 :goto_1b

    .line 1407
    .end local v20    # "a":I
    .end local v26    # "duration":I
    :cond_4d
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    move-object/from16 v0, v16

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->participant_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$Peer;->user_id:I

    goto :goto_1d

    .line 1413
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v26    # "duration":I
    :cond_4e
    add-int/lit8 v20, v20, 0x1

    goto :goto_1e

    .line 1421
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v26    # "duration":I
    :cond_4f
    invoke-static/range {v36 .. v36}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 1422
    const/16 v26, 0x0

    .line 1423
    .restart local v26    # "duration":I
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_1f
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_50

    .line 1424
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1425
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_51

    .line 1426
    move-object/from16 v0, v22

    iget v0, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    move/from16 v26, v0

    .line 1430
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_50
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->ttl:I

    add-int/lit8 v6, v26, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v36

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_1b

    .line 1423
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_51
    add-int/lit8 v20, v20, 0x1

    goto :goto_1f

    .line 1467
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v26    # "duration":I
    .end local v38    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v40    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v44    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_52
    :try_start_8
    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->message:Ljava/lang/String;

    .line 1468
    move-object/from16 v0, v47

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->contacts:Ljava/util/ArrayList;

    .line 1469
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1470
    move-object/from16 v0, v44

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->random_id:Ljava/util/ArrayList;

    .line 1471
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2030
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    .end local v20    # "a":I
    .end local v40    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v44    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :catch_2
    move-exception v27

    goto/16 :goto_7

    .line 1473
    .restart local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v40    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_53
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;-><init>()V

    .line 1474
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;
    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->message:Ljava/lang/String;

    .line 1475
    if-nez p13, :cond_58

    const/4 v4, 0x1

    :goto_20
    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->clear_draft:Z

    .line 1476
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_54

    .line 1477
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p7

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->silent:Z

    .line 1479
    :cond_54
    move-object/from16 v0, v46

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1480
    move-object/from16 v0, v36

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->random_id:J

    .line 1481
    if-eqz p10, :cond_55

    .line 1482
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 1483
    invoke-virtual/range {p10 .. p10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->reply_to_msg_id:I

    .line 1485
    :cond_55
    if-nez p12, :cond_56

    .line 1486
    const/4 v4, 0x1

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->no_webpage:Z

    .line 1488
    :cond_56
    if-eqz p14, :cond_57

    invoke-virtual/range {p14 .. p14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_57

    .line 1489
    move-object/from16 v0, p14

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->entities:Ljava/util/ArrayList;

    .line 1490
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;->flags:I

    .line 1492
    :cond_57
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    .line 1493
    if-nez p13, :cond_0

    .line 1494
    const/4 v4, 0x0

    move-wide/from16 v0, p7

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    .line 1475
    :cond_58
    const/4 v4, 0x0

    goto :goto_20

    .line 1499
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMessage;
    :cond_59
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_5d

    .line 1500
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    .line 1501
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    .line 1502
    if-eqz p14, :cond_5a

    invoke-virtual/range {p14 .. p14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5a

    .line 1503
    move-object/from16 v0, p14

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    .line 1504
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1506
    :cond_5a
    if-eqz p10, :cond_5b

    move-object/from16 v0, p10

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_5b

    .line 1507
    move-object/from16 v0, p10

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    .line 1508
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1518
    :cond_5b
    :goto_21
    if-eqz p16, :cond_5c

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5c

    .line 1519
    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    .line 1520
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1522
    :cond_5c
    move-object/from16 v0, v36

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    .line 1523
    move-object/from16 v0, p1

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    .line 1524
    if-eqz p11, :cond_5f

    move-object/from16 v0, p11

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    if-eqz v4, :cond_5f

    .line 1525
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaWebPage;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1526
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p11

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$WebPage;->url:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->url:Ljava/lang/String;

    .line 1527
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1531
    :goto_22
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    .line 1532
    if-nez p13, :cond_0

    .line 1533
    const/4 v4, 0x0

    move-wide/from16 v0, p7

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    .line 1510
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_5d
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_5e

    .line 1511
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;-><init>()V

    .line 1512
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    goto :goto_21

    .line 1514
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_5e
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;-><init>()V

    .line 1515
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    const/16 v4, 0xf

    new-array v4, v4, [B

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    .line 1516
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    invoke-virtual {v4, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto/16 :goto_21

    .line 1529
    :cond_5f
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_22

    .line 1536
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_60
    const/4 v4, 0x1

    move/from16 v0, v51

    if-lt v0, v4, :cond_61

    const/4 v4, 0x3

    move/from16 v0, v51

    if-le v0, v4, :cond_63

    :cond_61
    const/4 v4, 0x5

    move/from16 v0, v51

    if-lt v0, v4, :cond_62

    const/16 v4, 0x8

    move/from16 v0, v51

    if-le v0, v4, :cond_63

    :cond_62
    const/16 v4, 0x9

    move/from16 v0, v51

    if-ne v0, v4, :cond_ba

    if-eqz v16, :cond_ba

    .line 1537
    :cond_63
    if-nez v16, :cond_8e

    .line 1538
    const/16 v30, 0x0

    .line 1539
    .local v30, "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    const/16 v25, 0x0

    .line 1540
    .local v25, "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    const/4 v4, 0x1

    move/from16 v0, v51

    if-ne v0, v4, :cond_66

    .line 1541
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_65

    .line 1542
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaVenue;-><init>()V

    .line 1543
    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->address:Ljava/lang/String;

    .line 1544
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->title:Ljava/lang/String;

    .line 1545
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->provider:Ljava/lang/String;

    .line 1546
    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->venue_id:Ljava/lang/String;

    .line 1550
    :goto_23
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputGeoPoint;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    .line 1551
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->lat:D

    .line 1552
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->geo_point:Lorg/telegram/tgnet/TLRPC$InputGeoPoint;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputGeoPoint;->_long:D

    .line 1659
    :cond_64
    :goto_24
    if-eqz v47, :cond_81

    .line 1660
    new-instance v45, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    invoke-direct/range {v45 .. v45}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;-><init>()V

    .line 1661
    .local v45, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    new-instance v44, Ljava/util/ArrayList;

    invoke-direct/range {v44 .. v44}, Ljava/util/ArrayList;-><init>()V

    .line 1662
    .restart local v44    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_25
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_7e

    .line 1663
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1662
    add-int/lit8 v20, v20, 0x1

    goto :goto_25

    .line 1548
    .end local v20    # "a":I
    .end local v44    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v45    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    :cond_65
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGeoPoint;-><init>()V

    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_23

    .line 1553
    :cond_66
    const/4 v4, 0x2

    move/from16 v0, v51

    if-eq v0, v4, :cond_67

    const/16 v4, 0x9

    move/from16 v0, v51

    if-ne v0, v4, :cond_6c

    if-eqz p3, :cond_6c

    .line 1554
    :cond_67
    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_6a

    .line 1555
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedPhoto;-><init>()V

    .line 1556
    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_68

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_26
    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 1557
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1558
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v41

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1559
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1560
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1561
    if-eqz p9, :cond_69

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_69

    const-string/jumbo v4, "http"

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 1562
    move-object/from16 v0, p9

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    goto/16 :goto_24

    .line 1556
    :cond_68
    const-string/jumbo v4, ""

    goto :goto_26

    .line 1564
    :cond_69
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_24

    .line 1567
    :cond_6a
    new-instance v34, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;

    invoke-direct/range {v34 .. v34}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;-><init>()V

    .line 1568
    .local v34, "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPhoto;-><init>()V

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    .line 1569
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_6b

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_27
    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->caption:Ljava/lang/String;

    .line 1570
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->id:J

    .line 1571
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;->id:Lorg/telegram/tgnet/TLRPC$InputPhoto;

    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPhoto;->access_hash:J

    .line 1572
    move-object/from16 v30, v34

    .line 1573
    goto/16 :goto_24

    .line 1569
    :cond_6b
    const-string/jumbo v4, ""

    goto :goto_27

    .line 1574
    .end local v34    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaPhoto;
    :cond_6c
    const/4 v4, 0x3

    move/from16 v0, v51

    if-ne v0, v4, :cond_71

    .line 1575
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_6f

    .line 1576
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_6d

    .line 1577
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;-><init>()V

    .line 1581
    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_28
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_6e

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_29
    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 1582
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 1583
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 1584
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1585
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v41

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1586
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1587
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1588
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 1589
    move-object/from16 v0, p6

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 1590
    move-object/from16 v0, p4

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    goto/16 :goto_24

    .line 1579
    :cond_6d
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_28

    .line 1581
    :cond_6e
    const-string/jumbo v4, ""

    goto :goto_29

    .line 1592
    :cond_6f
    new-instance v34, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v34 .. v34}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 1593
    .local v34, "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 1594
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_70

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2a
    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 1595
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1596
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1597
    move-object/from16 v30, v34

    .line 1598
    goto/16 :goto_24

    .line 1594
    :cond_70
    const-string/jumbo v4, ""

    goto :goto_2a

    .line 1599
    .end local v34    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    :cond_71
    const/4 v4, 0x6

    move/from16 v0, v51

    if-ne v0, v4, :cond_72

    .line 1600
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaContact;-><init>()V

    .line 1601
    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->phone_number:Ljava/lang/String;

    .line 1602
    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->first_name:Ljava/lang/String;

    .line 1603
    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->last_name:Ljava/lang/String;

    goto/16 :goto_24

    .line 1604
    :cond_72
    const/4 v4, 0x7

    move/from16 v0, v51

    if-eq v0, v4, :cond_73

    const/16 v4, 0x9

    move/from16 v0, v51

    if-ne v0, v4, :cond_7a

    .line 1605
    :cond_73
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_78

    .line 1606
    if-nez v16, :cond_75

    if-eqz v41, :cond_75

    invoke-virtual/range {v41 .. v41}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_75

    const-string/jumbo v4, "http"

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_75

    if-eqz p16, :cond_75

    .line 1607
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaGifExternal;-><init>()V

    .line 1608
    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    const-string/jumbo v4, "url"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v6, "\\|"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 1609
    .local v21, "args":[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v4, v0

    const/4 v6, 0x2

    if-ne v4, v6, :cond_74

    .line 1610
    const/4 v4, 0x0

    aget-object v4, v21, v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->url:Ljava/lang/String;

    .line 1611
    const/4 v4, 0x1

    aget-object v4, v21, v4

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->q:Ljava/lang/String;

    .line 1626
    .end local v21    # "args":[Ljava/lang/String;
    :cond_74
    :goto_2b
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 1627
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 1628
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_77

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2c
    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    goto/16 :goto_24

    .line 1614
    :cond_75
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_76

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_fileLocation;

    if-eqz v4, :cond_76

    .line 1615
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedThumbDocument;-><init>()V

    .line 1619
    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :goto_2d
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1620
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v41

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1621
    const/4 v4, 0x2

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1622
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1623
    move-object/from16 v0, p6

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 1624
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_2b

    .line 1617
    :cond_76
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    goto :goto_2d

    .line 1628
    :cond_77
    const-string/jumbo v4, ""

    goto :goto_2c

    .line 1630
    :cond_78
    new-instance v34, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v34 .. v34}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 1631
    .restart local v34    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 1632
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1633
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1634
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_79

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2e
    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 1635
    move-object/from16 v30, v34

    .line 1636
    goto/16 :goto_24

    .line 1634
    :cond_79
    const-string/jumbo v4, ""

    goto :goto_2e

    .line 1637
    .end local v34    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    :cond_7a
    const/16 v4, 0x8

    move/from16 v0, v51

    if-ne v0, v4, :cond_64

    .line 1638
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_7c

    .line 1639
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;

    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaUploadedDocument;-><init>()V

    .line 1640
    .restart local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->mime_type:Ljava/lang/String;

    .line 1641
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->attributes:Ljava/util/ArrayList;

    .line 1642
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_7b

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_2f
    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->caption:Ljava/lang/String;

    .line 1643
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1644
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    const/4 v4, 0x3

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1645
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1646
    move-object/from16 v0, p6

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    goto/16 :goto_24

    .line 1642
    :cond_7b
    const-string/jumbo v4, ""

    goto :goto_2f

    .line 1648
    :cond_7c
    new-instance v34, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;

    invoke-direct/range {v34 .. v34}, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;-><init>()V

    .line 1649
    .restart local v34    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 1650
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_7d

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_30
    move-object/from16 v0, v34

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->caption:Ljava/lang/String;

    .line 1651
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 1652
    move-object/from16 v0, v34

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 1653
    move-object/from16 v30, v34

    goto/16 :goto_24

    .line 1650
    :cond_7d
    const-string/jumbo v4, ""

    goto :goto_30

    .line 1665
    .end local v34    # "media":Lorg/telegram/tgnet/TLRPC$TL_inputMediaDocument;
    .restart local v20    # "a":I
    .restart local v44    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .restart local v45    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    :cond_7e
    move-object/from16 v0, v47

    move-object/from16 v1, v45

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->contacts:Ljava/util/ArrayList;

    .line 1666
    move-object/from16 v0, v30

    move-object/from16 v1, v45

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1667
    move-object/from16 v0, v44

    move-object/from16 v1, v45

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->random_id:Ljava/util/ArrayList;

    .line 1668
    const-string/jumbo v4, ""

    move-object/from16 v0, v45

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->message:Ljava/lang/String;

    .line 1669
    if-eqz v25, :cond_7f

    .line 1670
    move-object/from16 v0, v45

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    .line 1672
    :cond_7f
    move-object/from16 v7, v45

    .line 1673
    .local v7, "reqSend":Lorg/telegram/tgnet/TLObject;
    if-nez p13, :cond_80

    .line 1674
    const/4 v4, 0x0

    move-wide/from16 v0, p7

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    .line 1693
    .end local v20    # "a":I
    .end local v44    # "random_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v45    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;
    :cond_80
    :goto_31
    const/4 v4, 0x1

    move/from16 v0, v51

    if-ne v0, v4, :cond_85

    .line 1694
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1677
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    :cond_81
    new-instance v45, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    invoke-direct/range {v45 .. v45}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;-><init>()V

    .line 1678
    .local v45, "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
    move-object/from16 v0, v46

    move-object/from16 v1, v45

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1679
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_82

    .line 1680
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p7

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, v45

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->silent:Z

    .line 1682
    :cond_82
    move-object/from16 v0, v36

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    move-object/from16 v0, v45

    iput-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->random_id:J

    .line 1683
    move-object/from16 v0, v30

    move-object/from16 v1, v45

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    .line 1684
    if-eqz p10, :cond_83

    .line 1685
    move-object/from16 v0, v45

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    or-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v45

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->flags:I

    .line 1686
    invoke-virtual/range {p10 .. p10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v45

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->reply_to_msg_id:I

    .line 1688
    :cond_83
    if-eqz v25, :cond_84

    .line 1689
    move-object/from16 v0, v45

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    .line 1691
    :cond_84
    move-object/from16 v7, v45

    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    goto :goto_31

    .line 1695
    .end local v45    # "request":Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;
    :cond_85
    const/4 v4, 0x2

    move/from16 v0, v51

    if-ne v0, v4, :cond_87

    .line 1696
    move-object/from16 v0, p3

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_86

    .line 1697
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 1699
    :cond_86
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1701
    :cond_87
    const/4 v4, 0x3

    move/from16 v0, v51

    if-ne v0, v4, :cond_89

    .line 1702
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_88

    .line 1703
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 1705
    :cond_88
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1707
    :cond_89
    const/4 v4, 0x6

    move/from16 v0, v51

    if-ne v0, v4, :cond_8a

    .line 1708
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1709
    :cond_8a
    const/4 v4, 0x7

    move/from16 v0, v51

    if-ne v0, v4, :cond_8c

    .line 1710
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_8b

    if-eqz v25, :cond_8b

    .line 1711
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 1713
    :cond_8b
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-direct {v0, v7, v12, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1715
    :cond_8c
    const/16 v4, 0x8

    move/from16 v0, v51

    if-ne v0, v4, :cond_0

    .line 1716
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_8d

    .line 1717
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_0

    .line 1719
    :cond_8d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1724
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLObject;
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v30    # "inputMedia":Lorg/telegram/tgnet/TLRPC$InputMedia;
    :cond_8e
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_93

    .line 1725
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;-><init>()V

    .line 1726
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    .line 1727
    if-eqz p14, :cond_8f

    invoke-virtual/range {p14 .. p14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8f

    .line 1728
    move-object/from16 v0, p14

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->entities:Ljava/util/ArrayList;

    .line 1729
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1731
    :cond_8f
    if-eqz p10, :cond_90

    move-object/from16 v0, p10

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-eqz v4, :cond_90

    .line 1732
    move-object/from16 v0, p10

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->reply_to_random_id:J

    .line 1733
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1735
    :cond_90
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x200

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1744
    :goto_32
    if-eqz p16, :cond_91

    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_91

    .line 1745
    const-string/jumbo v4, "bot_name"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->via_bot_name:Ljava/lang/String;

    .line 1746
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->flags:I

    .line 1748
    :cond_91
    move-object/from16 v0, v36

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_id:J

    .line 1749
    const-string/jumbo v4, ""

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->message:Ljava/lang/String;

    .line 1750
    const/4 v4, 0x1

    move/from16 v0, v51

    if-ne v0, v4, :cond_96

    .line 1751
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-eqz v4, :cond_95

    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_95

    .line 1752
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVenue;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1753
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->address:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->address:Ljava/lang/String;

    .line 1754
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->title:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->title:Ljava/lang/String;

    .line 1755
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->provider:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->provider:Ljava/lang/String;

    .line 1756
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->venue_id:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->venue_id:Ljava/lang/String;

    .line 1760
    :goto_33
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->lat:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->lat:D

    .line 1761
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$MessageMedia;->geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

    iget-wide v8, v6, Lorg/telegram/tgnet/TLRPC$GeoPoint;->_long:D

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->_long:D

    .line 1762
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    .line 1984
    :cond_92
    :goto_34
    if-nez p13, :cond_0

    .line 1985
    const/4 v4, 0x0

    move-wide/from16 v0, p7

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    goto/16 :goto_0

    .line 1736
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_93
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_94

    .line 1737
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer17;-><init>()V

    .line 1738
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    move-object/from16 v0, v36

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->ttl:I

    goto/16 :goto_32

    .line 1740
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    :cond_94
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage_layer8;-><init>()V

    .line 1741
    .restart local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    const/16 v4, 0xf

    new-array v4, v4, [B

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    .line 1742
    sget-object v4, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->random_bytes:[B

    invoke-virtual {v4, v6}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto/16 :goto_32

    .line 1758
    :cond_95
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaGeoPoint;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_33

    .line 1763
    :cond_96
    const/4 v4, 0x2

    move/from16 v0, v51

    if-eq v0, v4, :cond_97

    const/16 v4, 0x9

    move/from16 v0, v51

    if-ne v0, v4, :cond_9e

    if-eqz p3, :cond_9e

    .line 1764
    :cond_97
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1765
    .local v50, "small":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1766
    .local v23, "big":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    invoke-static/range {v50 .. v50}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 1767
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_9a

    .line 1768
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1769
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    if-eqz v4, :cond_98

    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->caption:Ljava/lang/String;

    :goto_35
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 1770
    move-object/from16 v0, v50

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_99

    .line 1771
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    move-object/from16 v0, v50

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    .line 1783
    :goto_36
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v50

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 1784
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v50

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 1785
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    .line 1786
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    .line 1787
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 1788
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    if-nez v4, :cond_9d

    .line 1789
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1790
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v41

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1791
    move-object/from16 v0, v25

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 1792
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1793
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1794
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1795
    if-eqz p9, :cond_9c

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9c

    const-string/jumbo v4, "http"

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 1796
    move-object/from16 v0, p9

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    .line 1800
    :goto_37
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_34

    .line 1769
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_98
    const-string/jumbo v4, ""

    goto/16 :goto_35

    .line 1773
    :cond_99
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;->thumb:[B

    goto/16 :goto_36

    .line 1776
    :cond_9a
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1777
    move-object/from16 v0, v50

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_9b

    .line 1778
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    move-object/from16 v0, v50

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;->thumb:[B

    goto/16 :goto_36

    .line 1780
    :cond_9b
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto_layer8;->thumb:[B

    goto/16 :goto_36

    .line 1798
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_9c
    move-object/from16 v0, p3

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move-object/from16 v0, v25

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto :goto_37

    .line 1802
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_9d
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 1803
    .local v10, "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 1804
    move-object/from16 v0, v23

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v8, v4, Lorg/telegram/tgnet/TLRPC$FileLocation;->secret:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 1805
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 1806
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v23

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$FileLocation;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 1807
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_34

    .line 1809
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    .end local v23    # "big":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v50    # "small":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_9e
    const/4 v4, 0x3

    move/from16 v0, v51

    if-ne v0, v4, :cond_a8

    .line 1810
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 1811
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_a1

    .line 1812
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1813
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_a0

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_a0

    .line 1814
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    .line 1833
    :goto_38
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_a5

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_39
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 1834
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const-string/jumbo v6, "video/mp4"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 1835
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 1836
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_3a
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_9f

    .line 1837
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1838
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    if-eqz v4, :cond_a6

    .line 1839
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->w:I

    .line 1840
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->h:I

    .line 1841
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    .line 1845
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_9f
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 1846
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 1847
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    const-wide/16 v14, 0x0

    cmp-long v4, v8, v14

    if-nez v4, :cond_a7

    .line 1848
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1849
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v41

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1850
    move-object/from16 v0, v25

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 1851
    const/4 v4, 0x1

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1852
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1853
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1854
    move-object/from16 v0, p6

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 1855
    move-object/from16 v0, p4

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 1856
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_34

    .line 1816
    .end local v20    # "a":I
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_a0
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;->thumb:[B

    goto/16 :goto_38

    .line 1818
    :cond_a1
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_a3

    .line 1819
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1820
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_a2

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_a2

    .line 1821
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;->thumb:[B

    goto/16 :goto_38

    .line 1823
    :cond_a2
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer17;->thumb:[B

    goto/16 :goto_38

    .line 1826
    :cond_a3
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1827
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_a4

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_a4

    .line 1828
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb:[B

    goto/16 :goto_38

    .line 1830
    :cond_a4
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo_layer8;->thumb:[B

    goto/16 :goto_38

    .line 1833
    :cond_a5
    const-string/jumbo v4, ""

    goto/16 :goto_39

    .line 1836
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_a6
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3a

    .line 1858
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_a7
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 1859
    .restart local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 1860
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 1861
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 1862
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 1863
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_34

    .line 1865
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    .end local v20    # "a":I
    :cond_a8
    const/4 v4, 0x6

    move/from16 v0, v51

    if-ne v0, v4, :cond_a9

    .line 1866
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaContact;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1867
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->phone_number:Ljava/lang/String;

    .line 1868
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->first_name:Ljava/lang/String;

    .line 1869
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->last_name:Ljava/lang/String;

    .line 1870
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p5

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$User;->id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->user_id:I

    .line 1871
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v13

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_34

    .line 1872
    :cond_a9
    const/4 v4, 0x7

    move/from16 v0, v51

    if-eq v0, v4, :cond_aa

    const/16 v4, 0x9

    move/from16 v0, v51

    if-ne v0, v4, :cond_b3

    if-eqz p6, :cond_b3

    .line 1873
    :cond_aa
    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/MessageObject;->isStickerDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 1874
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1875
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->id:J

    .line 1876
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->date:I

    .line 1877
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->access_hash:J

    .line 1878
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 1879
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 1880
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->dc_id:I

    .line 1881
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 1882
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-nez v4, :cond_ab

    .line 1883
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    new-instance v6, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    invoke-direct {v6}, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;-><init>()V

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 1884
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const-string/jumbo v6, "s"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 1888
    :goto_3b
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v13

    iget-object v15, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v13 .. v19}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_34

    .line 1886
    :cond_ab
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaExternalDocument;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto :goto_3b

    .line 1890
    :cond_ac
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    invoke-static {v4}, Lorg/telegram/messenger/ImageLoader;->fillPhotoSizeWithBytes(Lorg/telegram/tgnet/TLRPC$PhotoSize;)V

    .line 1891
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_b0

    .line 1892
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1893
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 1894
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_ae

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_3c
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 1895
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_af

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_af

    .line 1896
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 1897
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 1898
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 1917
    :goto_3d
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 1918
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 1920
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    if-nez v4, :cond_b2

    .line 1921
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1922
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v41

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1923
    move-object/from16 v0, v25

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 1924
    const/4 v4, 0x2

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1925
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1926
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1927
    if-eqz p9, :cond_ad

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_ad

    const-string/jumbo v4, "http"

    move-object/from16 v0, p9

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_ad

    .line 1928
    move-object/from16 v0, p9

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    .line 1930
    :cond_ad
    move-object/from16 v0, p6

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 1931
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_34

    .line 1894
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_ae
    const-string/jumbo v4, ""

    goto/16 :goto_3c

    .line 1900
    :cond_af
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 1901
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 1902
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_3d

    .line 1905
    :cond_b0
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1906
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    invoke-static/range {p6 .. p6}, Lorg/telegram/messenger/FileLoader;->getDocumentFileName(Lorg/telegram/tgnet/TLRPC$Document;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->file_name:Ljava/lang/String;

    .line 1907
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_b1

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_b1

    .line 1908
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;->thumb:[B

    .line 1909
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 1910
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto/16 :goto_3d

    .line 1912
    :cond_b1
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument_layer8;->thumb:[B

    .line 1913
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 1914
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto/16 :goto_3d

    .line 1933
    :cond_b2
    new-instance v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;

    invoke-direct {v10}, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;-><init>()V

    .line 1934
    .restart local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->id:J

    .line 1935
    move-object/from16 v0, p6

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    iput-wide v8, v10, Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;->access_hash:J

    .line 1936
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->key:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 1937
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->iv:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 1938
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v6

    iget-object v8, v12, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v11, 0x0

    move-object/from16 v9, v16

    invoke-virtual/range {v6 .. v12}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    goto/16 :goto_34

    .line 1941
    .end local v10    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$TL_inputEncryptedFile;
    :cond_b3
    const/16 v4, 0x8

    move/from16 v0, v51

    if-ne v0, v4, :cond_92

    .line 1942
    new-instance v25, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;-><init>(Lorg/telegram/messenger/SendMessagesHelper;)V

    .line 1943
    .restart local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    .line 1944
    move-object/from16 v0, v25

    iput-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    .line 1945
    move-object/from16 v0, v25

    iput-object v12, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    .line 1946
    move-object/from16 v0, p6

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->documentLocation:Lorg/telegram/tgnet/TLRPC$TL_document;

    .line 1947
    const/4 v4, 0x3

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    .line 1949
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x2e

    if-lt v4, v6, :cond_b6

    .line 1950
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1951
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->attributes:Ljava/util/ArrayList;

    .line 1952
    iget-object v6, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    if-eqz v4, :cond_b4

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->caption:Ljava/lang/String;

    :goto_3e
    iput-object v4, v6, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->caption:Ljava/lang/String;

    .line 1953
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    if-eqz v4, :cond_b5

    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    if-eqz v4, :cond_b5

    .line 1954
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 1955
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 1956
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    .line 1962
    :goto_3f
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget-object v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 1963
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 1964
    move-object/from16 v0, v41

    move-object/from16 v1, v25

    iput-object v0, v1, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    .line 1982
    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_34

    .line 1952
    :cond_b4
    const-string/jumbo v4, ""

    goto :goto_3e

    .line 1958
    :cond_b5
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;

    const/4 v6, 0x0

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaDocument;->thumb:[B

    .line 1959
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_h:I

    .line 1960
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v6, 0x0

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->thumb_w:I

    goto :goto_3f

    .line 1966
    :cond_b6
    move-object/from16 v0, v16

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$EncryptedChat;->layer:I

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getPeerLayerVersion(I)I

    move-result v4

    const/16 v6, 0x11

    if-lt v4, v6, :cond_b8

    .line 1967
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    .line 1971
    :goto_41
    const/16 v20, 0x0

    .restart local v20    # "a":I
    :goto_42
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_b7

    .line 1972
    move-object/from16 v0, p6

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 1973
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    move-object/from16 v0, v22

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v4, :cond_b9

    .line 1974
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, v22

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->duration:I

    .line 1978
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_b7
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const-string/jumbo v6, "audio/ogg"

    iput-object v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->mime_type:Ljava/lang/String;

    .line 1979
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-object/from16 v0, p6

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 1980
    const/4 v4, 0x3

    move-object/from16 v0, v25

    iput v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    goto :goto_40

    .line 1969
    .end local v20    # "a":I
    :cond_b8
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio_layer8;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaAudio_layer8;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    goto :goto_41

    .line 1971
    .restart local v20    # "a":I
    .restart local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_b9
    add-int/lit8 v20, v20, 0x1

    goto :goto_42

    .line 1988
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;
    .end local v20    # "a":I
    .end local v22    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v25    # "delayedMessage":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_ba
    const/4 v4, 0x4

    move/from16 v0, v51

    if-ne v0, v4, :cond_bf

    .line 1989
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;-><init>()V

    .line 1990
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    move-object/from16 v0, v46

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1991
    move-object/from16 v0, p13

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    if-eqz v4, :cond_bd

    .line 1992
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, p13

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v24

    .line 1993
    .restart local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1994
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, p13

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    neg-int v6, v6

    iput v6, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 1995
    if-eqz v24, :cond_bb

    .line 1996
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v24

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v8, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 2001
    .end local v24    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_bb
    :goto_43
    move-object/from16 v0, p13

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_bc

    .line 2002
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p7

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z

    .line 2004
    :cond_bc
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    move-object/from16 v0, v36

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2005
    invoke-virtual/range {p13 .. p13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ltz v4, :cond_be

    .line 2006
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    invoke-virtual/range {p13 .. p13}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2010
    :goto_44
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1999
    :cond_bd
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto :goto_43

    .line 2008
    :cond_be
    iget-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    move-object/from16 v0, p13

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v6, v6, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 2011
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    :cond_bf
    const/16 v4, 0x9

    move/from16 v0, v51

    if-ne v0, v4, :cond_0

    .line 2012
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;-><init>()V

    .line 2013
    .local v7, "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;
    move-object/from16 v0, v46

    iput-object v0, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 2014
    move-object/from16 v0, v36

    iget-wide v8, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->random_id:J

    .line 2015
    if-eqz p10, :cond_c0

    .line 2016
    iget v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->flags:I

    .line 2017
    invoke-virtual/range {p10 .. p10}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    iput v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->reply_to_msg_id:I

    .line 2019
    :cond_c0
    move-object/from16 v0, v36

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_c1

    .line 2020
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v6, "Notifications"

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "silent_"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p7

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->silent:Z

    .line 2022
    :cond_c1
    const-string/jumbo v4, "query_id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lorg/telegram/messenger/Utilities;->parseLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->query_id:J

    .line 2023
    const-string/jumbo v4, "id"

    move-object/from16 v0, p16

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->id:Ljava/lang/String;

    .line 2024
    if-nez p13, :cond_c2

    .line 2025
    const/4 v4, 0x1

    iput-boolean v4, v7, Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;->clear_draft:Z

    .line 2026
    const/4 v4, 0x0

    move-wide/from16 v0, p7

    invoke-static {v0, v1, v4}, Lorg/telegram/messenger/query/DraftQuery;->cleanDraft(JZ)V

    .line 2028
    :cond_c2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    .line 2030
    .end local v5    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v7    # "reqSend":Lorg/telegram/tgnet/TLRPC$TL_messages_sendInlineBotResult;
    .end local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v40    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local p5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local v38    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v52    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :catch_3
    move-exception v27

    move-object/from16 v12, v38

    .end local v38    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v12    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 p5, v52

    .end local v52    # "user":Lorg/telegram/tgnet/TLRPC$User;
    .restart local p5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    goto/16 :goto_7
.end method

.method private updateMediaPaths(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$Message;Ljava/lang/String;Z)V
    .locals 18
    .param p1, "newMsgObj"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "sentMessage"    # Lorg/telegram/tgnet/TLRPC$Message;
    .param p3, "originalPath"    # Ljava/lang/String;
    .param p4, "post"    # Z

    .prologue
    .line 3295
    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    .line 3296
    .local v9, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    if-nez p2, :cond_1

    .line 3423
    :cond_0
    :goto_0
    return-void

    .line 3299
    :cond_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v13, :cond_c

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v13, :cond_c

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaPhoto;

    if-eqz v13, :cond_c

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    if-eqz v13, :cond_c

    .line 3300
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    .line 3302
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-eqz v13, :cond_3

    .line 3303
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    .line 3337
    :cond_2
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 3338
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3339
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Photo;->id:J

    .line 3340
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Photo;->access_hash:J

    goto/16 :goto_0

    .line 3305
    :cond_3
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_1
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_2

    .line 3306
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3307
    .local v11, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v11, :cond_4

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_4

    instance-of v13, v11, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v13, :cond_4

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    if-nez v13, :cond_5

    .line 3305
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3310
    :cond_5
    const/4 v4, 0x0

    .local v4, "b":I
    :goto_3
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_4

    .line 3311
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3312
    .local v12, "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v12, :cond_6

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_6

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    if-nez v13, :cond_7

    .line 3310
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 3315
    :cond_7
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v16, -0x80000000

    cmp-long v13, v14, v16

    if-nez v13, :cond_8

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    :cond_8
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iget v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    if-ne v13, v14, :cond_6

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iget v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    if-ne v13, v14, :cond_6

    .line 3316
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3317
    .local v7, "fileName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3318
    .local v8, "fileName2":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 3321
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3323
    .local v5, "cacheFile":Ljava/io/File;
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_a

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    const/16 v14, 0x5a

    if-gt v13, v14, :cond_a

    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    const/16 v14, 0x5a

    if-le v13, v14, :cond_b

    .line 3324
    :cond_a
    invoke-static {v11}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v6

    .line 3328
    .local v6, "cacheFile2":Ljava/io/File;
    :goto_4
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3329
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move/from16 v0, p4

    invoke-virtual {v13, v7, v8, v14, v0}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Z)V

    .line 3330
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3331
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    goto/16 :goto_2

    .line 3326
    .end local v6    # "cacheFile2":Ljava/io/File;
    :cond_b
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .restart local v6    # "cacheFile2":Ljava/io/File;
    goto :goto_4

    .line 3341
    .end local v2    # "a":I
    .end local v4    # "b":I
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v6    # "cacheFile2":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "fileName2":Ljava/lang/String;
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_c
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v13, :cond_1c

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_1c

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaDocument;

    if-eqz v13, :cond_1c

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    if-eqz v13, :cond_1c

    .line 3342
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 3343
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v15, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    .line 3344
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3349
    :cond_d
    :goto_5
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v12, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3350
    .restart local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v11, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 3351
    .restart local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v12, :cond_12

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_12

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v13, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    const-wide/32 v16, -0x80000000

    cmp-long v13, v14, v16

    if-nez v13, :cond_12

    if-eqz v11, :cond_12

    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_12

    instance-of v13, v11, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v13, :cond_12

    instance-of v13, v12, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-nez v13, :cond_12

    .line 3352
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3353
    .restart local v7    # "fileName":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->volume_id:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$FileLocation;->local_id:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3354
    .restart local v8    # "fileName2":Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_e

    .line 3355
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3356
    .restart local v5    # "cacheFile":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v13

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ".jpg"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v6, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3357
    .restart local v6    # "cacheFile2":Ljava/io/File;
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 3358
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v13

    iget-object v14, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    move/from16 v0, p4

    invoke-virtual {v13, v7, v8, v14, v0}, Lorg/telegram/messenger/ImageLoader;->replaceImageInCache(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$FileLocation;Z)V

    .line 3359
    iget-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 3360
    iget v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 3368
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v6    # "cacheFile2":Ljava/io/File;
    .end local v7    # "fileName":Ljava/lang/String;
    .end local v8    # "fileName2":Ljava/lang/String;
    :cond_e
    :goto_6
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    iput v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    .line 3369
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    .line 3370
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    .line 3371
    const/4 v10, 0x0

    .line 3372
    .local v10, "oldWaveform":[B
    const/4 v2, 0x0

    .restart local v2    # "a":I
    :goto_7
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_f

    .line 3373
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 3374
    .local v3, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v13, :cond_16

    .line 3375
    iget-object v10, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 3379
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_f
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    .line 3380
    if-eqz v10, :cond_17

    .line 3381
    const/4 v2, 0x0

    :goto_8
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_17

    .line 3382
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 3383
    .restart local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v13, v3, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v13, :cond_10

    .line 3384
    iput-object v10, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->waveform:[B

    .line 3385
    iget v13, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v3, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->flags:I

    .line 3381
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3345
    .end local v2    # "a":I
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .end local v10    # "oldWaveform":[B
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_11
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 3346
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->putSentFile(Ljava/lang/String;Lorg/telegram/tgnet/TLObject;I)V

    goto/16 :goto_5

    .line 3362
    .restart local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .restart local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_12
    if-eqz v12, :cond_13

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isStickerMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_13

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v13, :cond_13

    .line 3363
    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v13, v11, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    goto/16 :goto_6

    .line 3364
    :cond_13
    if-eqz v12, :cond_14

    iget-object v13, v12, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_fileLocationUnavailable;

    if-nez v13, :cond_15

    :cond_14
    instance-of v13, v12, Lorg/telegram/tgnet/TLRPC$TL_photoSizeEmpty;

    if-eqz v13, :cond_e

    .line 3365
    :cond_15
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    goto/16 :goto_6

    .line 3372
    .restart local v2    # "a":I
    .restart local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .restart local v10    # "oldWaveform":[B
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    .line 3389
    .end local v3    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_17
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    iput v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 3390
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget-object v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-object v14, v14, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    iput-object v14, v13, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    .line 3392
    move-object/from16 v0, p2

    iget v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit8 v13, v13, 0x4

    if-nez v13, :cond_18

    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isOut(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_18

    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v13}, Lorg/telegram/messenger/MessageObject;->isNewGifDocument(Lorg/telegram/tgnet/TLRPC$Document;)Z

    move-result v13

    if-eqz v13, :cond_18

    .line 3393
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p2

    iget v14, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    invoke-static {v13, v14}, Lorg/telegram/messenger/MessagesController;->addNewGifToRecent(Lorg/telegram/tgnet/TLRPC$Document;I)V

    .line 3396
    :cond_18
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-eqz v13, :cond_1b

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v14

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v14

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 3397
    new-instance v5, Ljava/io/File;

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3398
    .restart local v5    # "cacheFile":Ljava/io/File;
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v13, v13, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    invoke-static {v13}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;)Ljava/io/File;

    move-result-object v6

    .line 3399
    .restart local v6    # "cacheFile2":Ljava/io/File;
    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v13

    if-nez v13, :cond_19

    .line 3400
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3401
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_0

    .line 3403
    :cond_19
    invoke-static/range {p2 .. p2}, Lorg/telegram/messenger/MessageObject;->isVideoMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 3404
    const/4 v13, 0x1

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    goto/16 :goto_0

    .line 3406
    :cond_1a
    move-object/from16 v0, p1

    iget-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->mediaExists:Z

    .line 3407
    const/4 v13, 0x0

    move-object/from16 v0, p1

    iput-boolean v13, v0, Lorg/telegram/messenger/MessageObject;->attachPathExists:Z

    .line 3408
    const-string/jumbo v13, ""

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3409
    if-eqz p3, :cond_0

    const-string/jumbo v13, "http"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 3410
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v13

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v14

    iget-object v15, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v15, v15, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v14, v15}, Lorg/telegram/messenger/MessagesStorage;->addRecentLocalFile(Ljava/lang/String;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$Document;)V

    goto/16 :goto_0

    .line 3415
    .end local v5    # "cacheFile":Ljava/io/File;
    .end local v6    # "cacheFile2":Ljava/io/File;
    :cond_1b
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 3416
    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iput-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    goto/16 :goto_0

    .line 3418
    .end local v2    # "a":I
    .end local v10    # "oldWaveform":[B
    .end local v11    # "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    .end local v12    # "size2":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    :cond_1c
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v13, :cond_1d

    iget-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaContact;

    if-eqz v13, :cond_1d

    .line 3419
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto/16 :goto_0

    .line 3420
    :cond_1d
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v13, v13, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v13, :cond_0

    .line 3421
    move-object/from16 v0, p2

    iget-object v13, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iput-object v13, v9, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    goto/16 :goto_0
.end method


# virtual methods
.method public SuperProcessForwardFromMyName(Ljava/lang/CharSequence;Lorg/telegram/messenger/MessageObject;J)V
    .locals 15
    .param p1, "caption"    # Ljava/lang/CharSequence;
    .param p2, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p3, "did"    # J

    .prologue
    .line 2043
    if-nez p2, :cond_0

    .line 2076
    :goto_0
    return-void

    .line 2046
    :cond_0
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v2, :cond_6

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v2, :cond_6

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v2, :cond_6

    .line 2047
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v2, :cond_1

    .line 2048
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_photo;

    const/4 v5, 0x0

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move-wide/from16 v6, p3

    invoke-virtual/range {v2 .. v9}, Lorg/telegram/messenger/SendMessagesHelper;->torboSendPhotoMessage(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V

    goto :goto_0

    .line 2049
    :cond_1
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v2, :cond_2

    .line 2050
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    move-object v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v8, p3

    invoke-virtual/range {v3 .. v11}, Lorg/telegram/messenger/SendMessagesHelper;->SuperSendDocumentMessage(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V

    goto :goto_0

    .line 2051
    :cond_2
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-nez v2, :cond_3

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-eqz v2, :cond_4

    .line 2052
    :cond_3
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-wide/from16 v4, p3

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2053
    :cond_4
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 2054
    new-instance v3, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct {v3}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    .line 2055
    .local v3, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 2056
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 2057
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    iput-object v2, v3, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 2058
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v2, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    iput v2, v3, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 2059
    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-wide/from16 v4, p3

    invoke-virtual/range {v2 .. v8}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2061
    .end local v3    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2062
    .local v14, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2063
    move-wide/from16 v0, p3

    invoke-virtual {p0, v14, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto/16 :goto_0

    .line 2065
    .end local v14    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_6
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 2066
    const/4 v9, 0x0

    .line 2067
    .local v9, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v2, :cond_7

    .line 2068
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v9, v2, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 2070
    :cond_7
    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v2, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v10, 0x1

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v11, v2, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v4, p0

    move-wide/from16 v6, p3

    invoke-virtual/range {v4 .. v13}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 2072
    .end local v9    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_8
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 2073
    .restart local v14    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2074
    move-wide/from16 v0, p3

    invoke-virtual {p0, v14, v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto/16 :goto_0
.end method

.method public SuperSendDocumentMessage(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V
    .locals 17
    .param p1, "caption"    # Ljava/lang/CharSequence;
    .param p2, "document"    # Lorg/telegram/tgnet/TLRPC$TL_document;
    .param p3, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "peer"    # J
    .param p7, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2083
    .local p8, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p3

    move-object/from16 v7, p2

    move-wide/from16 v8, p5

    move-object/from16 v10, p4

    move-object/from16 v11, p7

    move-object/from16 v16, p8

    invoke-direct/range {v0 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->SuperSendMessage(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 2084
    return-void
.end method

.method public cancelSendingMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 11
    .param p1, "object"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    const/4 v10, 0x0

    .line 509
    const/4 v4, 0x0

    .line 510
    .local v4, "keyToRemvoe":Ljava/lang/String;
    const/4 v1, 0x0

    .line 511
    .local v1, "enc":Z
    iget-object v8, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 512
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 513
    .local v7, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 514
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 515
    .local v5, "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    iget-object v8, v5, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 516
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 517
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v8

    iget-object v9, v5, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v8, v9}, Lorg/telegram/messenger/MediaController;->cancelVideoConvert(Lorg/telegram/messenger/MessageObject;)V

    .line 518
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 519
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "keyToRemvoe":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 520
    .restart local v4    # "keyToRemvoe":Ljava/lang/String;
    iget-object v8, v5, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v8, :cond_0

    .line 521
    const/4 v1, 0x1

    goto :goto_0

    .line 513
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 528
    .end local v0    # "a":I
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;>;"
    .end local v5    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v7    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    :cond_2
    if-eqz v4, :cond_3

    .line 529
    const-string/jumbo v8, "http"

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 530
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v8

    invoke-virtual {v8, v4}, Lorg/telegram/messenger/ImageLoader;->cancelLoadHttpFile(Ljava/lang/String;)V

    .line 534
    :goto_2
    invoke-virtual {p0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 536
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v6, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v8

    iget-object v9, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v9, v9, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-virtual {v8, v6, v10, v10, v9}, Lorg/telegram/messenger/MessagesController;->deleteMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$EncryptedChat;I)V

    .line 539
    return-void

    .line 532
    .end local v6    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v8

    invoke-virtual {v8, v4, v1}, Lorg/telegram/messenger/FileLoader;->cancelUploadFile(Ljava/lang/String;Z)V

    goto :goto_2
.end method

.method public checkUnsentMessages()V
    .locals 2

    .prologue
    .line 3447
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/MessagesStorage;->getUnsentMessages(I)V

    .line 3448
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 238
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 239
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 240
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 241
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 242
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 243
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v0}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->stop()V

    .line 244
    return-void
.end method

.method public varargs didReceivedNotification(I[Ljava/lang/Object;)V
    .locals 34
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 252
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidUpload:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_10

    .line 253
    const/4 v4, 0x0

    aget-object v25, p2, v4

    check-cast v25, Ljava/lang/String;

    .line 254
    .local v25, "location":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v19, p2, v4

    check-cast v19, Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 255
    .local v19, "file":Lorg/telegram/tgnet/TLRPC$InputFile;
    const/4 v4, 0x2

    aget-object v8, p2, v4

    check-cast v8, Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;

    .line 256
    .local v8, "encryptedFile":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 257
    .local v16, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 258
    const/4 v15, 0x0

    .local v15, "a":I
    :goto_0
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_e

    .line 259
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 260
    .local v28, "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    const/16 v27, 0x0

    .line 261
    .local v27, "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    if-eqz v4, :cond_3

    .line 262
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendMedia;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-object/from16 v27, v0

    .line 267
    :cond_0
    :goto_1
    if-eqz v19, :cond_b

    if-eqz v27, :cond_b

    .line 268
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-nez v4, :cond_4

    .line 269
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 270
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    .line 299
    :cond_1
    :goto_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 300
    add-int/lit8 v15, v15, -0x1

    .line 258
    :cond_2
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 263
    :cond_3
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    if-eqz v4, :cond_0

    .line 264
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    check-cast v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;

    iget-object v0, v4, Lorg/telegram/tgnet/TLRPC$TL_messages_sendBroadcast;->media:Lorg/telegram/tgnet/TLRPC$InputMedia;

    move-object/from16 v27, v0

    goto :goto_1

    .line 271
    :cond_4
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 272
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_6

    .line 273
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 274
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_5

    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_5

    .line 275
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto :goto_2

    .line 277
    :cond_5
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto :goto_2

    .line 280
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 281
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto :goto_2

    .line 283
    :cond_7
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a

    .line 284
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_9

    .line 285
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 286
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    if-nez v4, :cond_8

    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    if-eqz v4, :cond_8

    .line 287
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    goto/16 :goto_2

    .line 289
    :cond_8
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 292
    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->thumb:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 293
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 295
    :cond_a
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 296
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$InputMedia;->file:Lorg/telegram/tgnet/TLRPC$InputFile;

    .line 297
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lorg/telegram/messenger/SendMessagesHelper;->performSendMessageRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 301
    :cond_b
    if-eqz v8, :cond_2

    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-eqz v4, :cond_2

    .line 302
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaVideo;

    if-nez v4, :cond_c

    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageMediaPhoto;

    if-eqz v4, :cond_d

    .line 303
    :cond_c
    const/4 v4, 0x5

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v32

    .line 304
    .local v32, "size":J
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    move-wide/from16 v0, v32

    long-to-int v5, v0

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->size:I

    .line 306
    .end local v32    # "size":J
    :cond_d
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v4, 0x3

    aget-object v4, p2, v4

    check-cast v4, [B

    check-cast v4, [B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->key:[B

    .line 307
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;->media:Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;

    const/4 v4, 0x4

    aget-object v4, p2, v4

    check-cast v4, [B

    check-cast v4, [B

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$DecryptedMessageMedia;->iv:[B

    .line 308
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v4

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    move-object/from16 v0, v28

    iget-object v6, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v6, v6, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    move-object/from16 v0, v28

    iget-object v7, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->encryptedChat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-object/from16 v0, v28

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->originalPath:Ljava/lang/String;

    move-object/from16 v0, v28

    iget-object v10, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SecretChatHelper;->performSendEncryptedRequest(Lorg/telegram/tgnet/TLRPC$DecryptedMessage;Lorg/telegram/tgnet/TLRPC$Message;Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;Ljava/lang/String;Lorg/telegram/messenger/MessageObject;)V

    .line 309
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 310
    add-int/lit8 v15, v15, -0x1

    goto/16 :goto_3

    .line 313
    .end local v27    # "media":Lorg/telegram/tgnet/TLRPC$InputMedia;
    .end local v28    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 314
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    .end local v8    # "encryptedFile":Lorg/telegram/tgnet/TLRPC$InputEncryptedFile;
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v19    # "file":Lorg/telegram/tgnet/TLRPC$InputFile;
    .end local v25    # "location":Ljava/lang/String;
    :cond_f
    :goto_4
    return-void

    .line 317
    :cond_10
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidFailUpload:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_15

    .line 318
    const/4 v4, 0x0

    aget-object v25, p2, v4

    check-cast v25, Ljava/lang/String;

    .line 319
    .restart local v25    # "location":Ljava/lang/String;
    const/4 v4, 0x1

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    .line 320
    .local v18, "enc":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 321
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 322
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_5
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_14

    .line 323
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 324
    .local v30, "obj":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    if-eqz v18, :cond_11

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendEncryptedRequest:Lorg/telegram/tgnet/TLRPC$TL_decryptedMessage;

    if-nez v4, :cond_12

    :cond_11
    if-nez v18, :cond_13

    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->sendRequest:Lorg/telegram/tgnet/TLObject;

    if-eqz v4, :cond_13

    .line 325
    :cond_12
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v30

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 326
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 327
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 328
    add-int/lit8 v15, v15, -0x1

    .line 329
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v30

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 330
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 322
    :cond_13
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 333
    .end local v30    # "obj":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_14
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 334
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 337
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v18    # "enc":Z
    .end local v25    # "location":Ljava/lang/String;
    :cond_15
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FilePreparingStarted:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_18

    .line 338
    const/4 v4, 0x0

    aget-object v29, p2, v4

    check-cast v29, Lorg/telegram/messenger/MessageObject;

    .line 339
    .local v29, "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v4, 0x1

    aget-object v20, p2, v4

    check-cast v20, Ljava/lang/String;

    .line 341
    .local v20, "finalPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v29

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 342
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 343
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_6
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_16

    .line 344
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 345
    .restart local v28    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v29

    if-ne v4, v0, :cond_17

    .line 346
    const/4 v4, 0x0

    move-object/from16 v0, v28

    iput-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 347
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 348
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 352
    .end local v28    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_16
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 353
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v29

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 343
    .restart local v28    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_17
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 356
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v20    # "finalPath":Ljava/lang/String;
    .end local v28    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v29    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_18
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileNewChunkAvailable:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1c

    .line 357
    const/4 v4, 0x0

    aget-object v29, p2, v4

    check-cast v29, Lorg/telegram/messenger/MessageObject;

    .line 358
    .restart local v29    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v4, 0x1

    aget-object v20, p2, v4

    check-cast v20, Ljava/lang/String;

    .line 359
    .restart local v20    # "finalPath":Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, p2, v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 360
    .local v22, "finalSize":J
    invoke-virtual/range {v29 .. v29}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    long-to-int v4, v4

    if-nez v4, :cond_1a

    const/16 v24, 0x1

    .line 361
    .local v24, "isEncrypted":Z
    :goto_7
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    move-object/from16 v0, v20

    move/from16 v1, v24

    move-wide/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->checkUploadNewDataAvailable(Ljava/lang/String;ZJ)V

    .line 362
    const-wide/16 v4, 0x0

    cmp-long v4, v22, v4

    if-eqz v4, :cond_f

    .line 363
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v29

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 364
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 365
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_8
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_19

    .line 366
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 367
    .restart local v28    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v29

    if-ne v4, v0, :cond_1b

    .line 368
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/telegram/messenger/MessageObject;->videoEditedInfo:Lorg/telegram/messenger/VideoEditedInfo;

    .line 369
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const-string/jumbo v5, "-1"

    iput-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 370
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    move-wide/from16 v0, v22

    long-to-int v5, v0

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    .line 372
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v10, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 378
    .end local v10    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v28    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_19
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v29

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 360
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v24    # "isEncrypted":Z
    :cond_1a
    const/16 v24, 0x0

    goto/16 :goto_7

    .line 365
    .restart local v15    # "a":I
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .restart local v24    # "isEncrypted":Z
    .restart local v28    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_1b
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 383
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v20    # "finalPath":Ljava/lang/String;
    .end local v22    # "finalSize":J
    .end local v24    # "isEncrypted":Z
    .end local v28    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    .end local v29    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_1c
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FilePreparingFailed:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_1f

    .line 384
    const/4 v4, 0x0

    aget-object v29, p2, v4

    check-cast v29, Lorg/telegram/messenger/MessageObject;

    .line 385
    .restart local v29    # "messageObject":Lorg/telegram/messenger/MessageObject;
    const/4 v4, 0x1

    aget-object v20, p2, v4

    check-cast v20, Ljava/lang/String;

    .line 386
    .restart local v20    # "finalPath":Ljava/lang/String;
    move-object/from16 v0, v29

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->stopVideoService(Ljava/lang/String;)V

    .line 388
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 389
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 390
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_9
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_1e

    .line 391
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 392
    .restart local v28    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    move-object/from16 v0, v29

    if-ne v4, v0, :cond_1d

    .line 393
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 394
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 395
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 396
    add-int/lit8 v15, v15, -0x1

    .line 397
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v28

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 398
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    .line 390
    :cond_1d
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 401
    .end local v28    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_1e
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 402
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 405
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v20    # "finalPath":Ljava/lang/String;
    .end local v29    # "messageObject":Lorg/telegram/messenger/MessageObject;
    :cond_1f
    sget v4, Lorg/telegram/messenger/NotificationCenter;->httpFileDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_23

    .line 406
    const/4 v4, 0x0

    aget-object v31, p2, v4

    check-cast v31, Ljava/lang/String;

    .line 407
    .local v31, "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 408
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 409
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_a
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_22

    .line 410
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 411
    .restart local v28    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    if-nez v4, :cond_21

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    const-string/jumbo v6, "file"

    invoke-static {v5, v6}, Lorg/telegram/messenger/ImageLoader;->getHttpUrlExtension(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 413
    .local v26, "md5":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 414
    .local v17, "cacheFile":Ljava/io/File;
    sget-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/SendMessagesHelper$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v28

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper$2;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/io/File;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 409
    .end local v17    # "cacheFile":Ljava/io/File;
    .end local v26    # "md5":Ljava/lang/String;
    :cond_20
    :goto_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 442
    :cond_21
    move-object/from16 v0, v28

    iget v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_20

    .line 443
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->httpLocation:Ljava/lang/String;

    invoke-static {v5}, Lorg/telegram/messenger/Utilities;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".gif"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 444
    .restart local v26    # "md5":Ljava/lang/String;
    new-instance v17, Ljava/io/File;

    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/FileLoader;->getDirectory(I)Ljava/io/File;

    move-result-object v4

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 445
    .restart local v17    # "cacheFile":Ljava/io/File;
    sget-object v4, Lorg/telegram/messenger/Utilities;->globalQueue:Lorg/telegram/messenger/DispatchQueue;

    new-instance v5, Lorg/telegram/messenger/SendMessagesHelper$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v17

    invoke-direct {v5, v0, v1, v2}, Lorg/telegram/messenger/SendMessagesHelper$3;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;Ljava/io/File;)V

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_b

    .line 481
    .end local v17    # "cacheFile":Ljava/io/File;
    .end local v26    # "md5":Ljava/lang/String;
    .end local v28    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 483
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v31    # "path":Ljava/lang/String;
    :cond_23
    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidLoaded:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_25

    .line 484
    const/4 v4, 0x0

    aget-object v31, p2, v4

    check-cast v31, Ljava/lang/String;

    .line 485
    .restart local v31    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 486
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 487
    const/4 v15, 0x0

    .restart local v15    # "a":I
    :goto_c
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v15, v4, :cond_24

    .line 488
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->performSendDelayedMessage(Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;)V

    .line 487
    add-int/lit8 v15, v15, 0x1

    goto :goto_c

    .line 490
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 492
    .end local v15    # "a":I
    .end local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    .end local v31    # "path":Ljava/lang/String;
    :cond_25
    sget v4, Lorg/telegram/messenger/NotificationCenter;->httpFileDidFailedLoad:I

    move/from16 v0, p1

    if-eq v0, v4, :cond_26

    sget v4, Lorg/telegram/messenger/NotificationCenter;->FileDidFailedLoad:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_f

    .line 493
    :cond_26
    const/4 v4, 0x0

    aget-object v31, p2, v4

    check-cast v31, Ljava/lang/String;

    .line 495
    .restart local v31    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 496
    .restart local v16    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;>;"
    if-eqz v16, :cond_f

    .line 497
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;

    .line 498
    .restart local v28    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    move-object/from16 v0, v28

    iget-object v5, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v5, v5, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 499
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 500
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v28

    iget-object v9, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v9}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 501
    move-object/from16 v0, v28

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;->obj:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_d

    .line 503
    .end local v28    # "message":Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4
.end method

.method public editMessage(Lorg/telegram/messenger/MessageObject;Ljava/lang/String;ZLorg/telegram/ui/ActionBar/BaseFragment;Ljava/util/ArrayList;Ljava/lang/Runnable;)I
    .locals 4
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "searchLinks"    # Z
    .param p4, "fragment"    # Lorg/telegram/ui/ActionBar/BaseFragment;
    .param p6, "callback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/telegram/ui/ActionBar/BaseFragment;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Ljava/lang/Runnable;",
            ")I"
        }
    .end annotation

    .prologue
    .local p5, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    const/4 v1, 0x0

    .line 955
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lorg/telegram/ui/ActionBar/BaseFragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez p6, :cond_1

    .line 969
    :cond_0
    :goto_0
    return v1

    .line 959
    :cond_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;-><init>()V

    .line 960
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 961
    iput-object p2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->message:Ljava/lang/String;

    .line 962
    iget v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit16 v2, v2, 0x800

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    .line 963
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->id:I

    .line 964
    if-nez p3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->no_webpage:Z

    .line 965
    if-eqz p5, :cond_3

    .line 966
    iput-object p5, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->entities:Ljava/util/ArrayList;

    .line 967
    iget v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_editMessage;->flags:I

    .line 969
    :cond_3
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/messenger/SendMessagesHelper$5;

    invoke-direct {v2, p0, p6, p4}, Lorg/telegram/messenger/SendMessagesHelper$5;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/Runnable;Lorg/telegram/ui/ActionBar/BaseFragment;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    move-result v1

    goto :goto_0
.end method

.method public generatePhotoSizes(Ljava/lang/String;Landroid/net/Uri;)Lorg/telegram/tgnet/TLRPC$TL_photo;
    .locals 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "imageUri"    # Landroid/net/Uri;

    .prologue
    const/16 v5, 0x65

    const/4 v4, 0x0

    const/high16 v10, 0x44480000    # 800.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v3, 0x1

    .line 3467
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1, p2, v1, v2, v3}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3468
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    const/16 v2, 0x320

    if-eq v1, v2, :cond_0

    .line 3469
    invoke-static {p1, p2, v10, v10, v3}, Lorg/telegram/messenger/ImageLoader;->loadBitmap(Ljava/lang/String;Landroid/net/Uri;FFZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3471
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 3472
    .local v9, "sizes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$PhotoSize;>;"
    const/16 v1, 0x37

    invoke-static {v0, v6, v6, v1, v3}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZ)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 3473
    .local v8, "size":Lorg/telegram/tgnet/TLRPC$PhotoSize;
    if-eqz v8, :cond_1

    .line 3474
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3476
    :cond_1
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->getPhotoSize()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x50

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/telegram/messenger/ImageLoader;->scaleAndSaveImage(Landroid/graphics/Bitmap;FFIZII)Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-result-object v8

    .line 3477
    if-eqz v8, :cond_2

    .line 3478
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3480
    :cond_2
    if-eqz v0, :cond_3

    .line 3481
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3483
    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3484
    const/4 v7, 0x0

    .line 3490
    :goto_0
    return-object v7

    .line 3486
    :cond_4
    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 3487
    new-instance v7, Lorg/telegram/tgnet/TLRPC$TL_photo;

    invoke-direct {v7}, Lorg/telegram/tgnet/TLRPC$TL_photo;-><init>()V

    .line 3488
    .local v7, "photo":Lorg/telegram/tgnet/TLRPC$TL_photo;
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v1

    iput v1, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;->date:I

    .line 3489
    iput-object v9, v7, Lorg/telegram/tgnet/TLRPC$TL_photo;->sizes:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method protected getDelayedMessages(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/SendMessagesHelper$DelayedMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3435
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->delayedMessages:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getNextRandomId()J
    .locals 4

    .prologue
    .line 3439
    const-wide/16 v0, 0x0

    .line 3440
    .local v0, "val":J
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 3441
    sget-object v2, Lorg/telegram/messenger/Utilities;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    goto :goto_0

    .line 3443
    :cond_0
    return-wide v0
.end method

.method public isSendingCallback(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)Z
    .locals 3
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 1068
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendingCurrentLocation(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)Z
    .locals 3
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 1016
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSendingMessage(I)Z
    .locals 2
    .param p1, "mid"    # I

    .prologue
    .line 3138
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public processForwardFromMyName(Lorg/telegram/messenger/MessageObject;J)V
    .locals 18
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "did"    # J

    .prologue
    .line 603
    if-nez p1, :cond_0

    .line 636
    :goto_0
    return-void

    .line 606
    :cond_0
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_6

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaEmpty;

    if-nez v4, :cond_6

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-nez v4, :cond_6

    .line 607
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_photo;

    if-eqz v4, :cond_1

    .line 608
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v6, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->photo:Lorg/telegram/tgnet/TLRPC$Photo;

    check-cast v6, Lorg/telegram/tgnet/TLRPC$TL_photo;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v5 .. v12}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    .line 609
    :cond_1
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_document;

    if-eqz v4, :cond_2

    .line 610
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->document:Lorg/telegram/tgnet/TLRPC$Document;

    check-cast v5, Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v4 .. v12}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto :goto_0

    .line 611
    :cond_2
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaVenue;

    if-nez v4, :cond_3

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaGeo;

    if-eqz v4, :cond_4

    .line 612
    :cond_3
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 613
    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    if-eqz v4, :cond_5

    .line 614
    new-instance v5, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;

    invoke-direct {v5}, Lorg/telegram/tgnet/TLRPC$TL_userContact_old2;-><init>()V

    .line 615
    .local v5, "user":Lorg/telegram/tgnet/TLRPC$User;
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->phone_number:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$User;->phone:Ljava/lang/String;

    .line 616
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->first_name:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$User;->first_name:Ljava/lang/String;

    .line 617
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->last_name:Ljava/lang/String;

    iput-object v4, v5, Lorg/telegram/tgnet/TLRPC$User;->last_name:Ljava/lang/String;

    .line 618
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->user_id:I

    iput v4, v5, Lorg/telegram/tgnet/TLRPC$User;->id:I

    .line 619
    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 621
    .end local v5    # "user":Lorg/telegram/tgnet/TLRPC$User;
    :cond_5
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v16, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto/16 :goto_0

    .line 625
    .end local v16    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    :cond_6
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 626
    const/4 v11, 0x0

    .line 627
    .local v11, "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageMediaWebPage;

    if-eqz v4, :cond_7

    .line 628
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    iget-object v11, v4, Lorg/telegram/tgnet/TLRPC$MessageMedia;->webpage:Lorg/telegram/tgnet/TLRPC$WebPage;

    .line 630
    :cond_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v7, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lorg/telegram/messenger/MessageObject;->replyMessageObject:Lorg/telegram/messenger/MessageObject;

    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v13, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v6, p0

    move-wide/from16 v8, p2

    invoke-virtual/range {v6 .. v15}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 632
    .end local v11    # "webPage":Lorg/telegram/tgnet/TLRPC$WebPage;
    :cond_8
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 633
    .restart local v16    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/util/ArrayList;J)V

    goto/16 :goto_0
.end method

.method protected processSentMessage(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 595
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 596
    .local v0, "prevSize":I
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 598
    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper;->checkUnsentMessages()V

    .line 600
    :cond_0
    return-void
.end method

.method protected processUnsentMessages(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Message;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$User;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$Chat;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$EncryptedChat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3451
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .local p2, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$User;>;"
    .local p3, "chats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Chat;>;"
    .local p4, "encryptedChats":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$EncryptedChat;>;"
    new-instance v0, Lorg/telegram/messenger/SendMessagesHelper$10;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/telegram/messenger/SendMessagesHelper$10;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 3464
    return-void
.end method

.method protected putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V
    .locals 2
    .param p1, "message"    # Lorg/telegram/tgnet/TLRPC$Message;

    .prologue
    .line 3130
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    iget v1, p1, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3131
    return-void
.end method

.method protected removeFromSendingMessages(I)V
    .locals 2
    .param p1, "mid"    # I

    .prologue
    .line 3134
    iget-object v0, p0, Lorg/telegram/messenger/SendMessagesHelper;->sendingMessages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3135
    return-void
.end method

.method public retrySendMessage(Lorg/telegram/messenger/MessageObject;Z)Z
    .locals 10
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "unsent"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 542
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-ltz v4, :cond_0

    .line 591
    :goto_0
    return v2

    .line 545
    :cond_0
    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    if-eqz v4, :cond_e

    .line 546
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    const/16 v6, 0x20

    shr-long/2addr v4, v6

    long-to-int v0, v4

    .line 547
    .local v0, "enc_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v1

    .line 548
    .local v1, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-nez v1, :cond_1

    .line 549
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    iget-object v5, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesStorage;->markMessageAsSendError(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 550
    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 551
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->messageSendError:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v2

    invoke-virtual {v4, v5, v3}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 552
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/telegram/messenger/SendMessagesHelper;->processSentMessage(I)V

    goto :goto_0

    .line 555
    :cond_1
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    cmp-long v2, v4, v8

    if-nez v2, :cond_2

    .line 556
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v4

    iput-wide v4, v2, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 558
    :cond_2
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionSetMessageTTL;

    if-eqz v2, :cond_4

    .line 559
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendTTLMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    :cond_3
    :goto_1
    move v2, v3

    .line 585
    goto :goto_0

    .line 560
    :cond_4
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionDeleteMessages;

    if-eqz v2, :cond_5

    .line 561
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v7, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesDeleteMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    .line 562
    :cond_5
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionFlushHistory;

    if-eqz v2, :cond_6

    .line 563
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendClearHistoryMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    .line 564
    :cond_6
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNotifyLayer;

    if-eqz v2, :cond_7

    .line 565
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendNotifyLayerMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    .line 566
    :cond_7
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionReadMessages;

    if-eqz v2, :cond_8

    .line 567
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v7, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendMessagesReadMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    .line 568
    :cond_8
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionScreenshotMessages;

    if-eqz v2, :cond_9

    .line 569
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v7, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendScreenshotMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto :goto_1

    .line 570
    :cond_9
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionTyping;

    if-nez v2, :cond_3

    .line 572
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionResend;

    if-nez v2, :cond_3

    .line 574
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionCommitKey;

    if-eqz v2, :cond_a

    .line 575
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendCommitKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_1

    .line 576
    :cond_a
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAbortKey;

    if-eqz v2, :cond_b

    .line 577
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4, v8, v9}, Lorg/telegram/messenger/SecretChatHelper;->sendAbortKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;J)V

    goto/16 :goto_1

    .line 578
    :cond_b
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionRequestKey;

    if-eqz v2, :cond_c

    .line 579
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendRequestKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_1

    .line 580
    :cond_c
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionAcceptKey;

    if-eqz v2, :cond_d

    .line 581
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendAcceptKeyMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_1

    .line 582
    :cond_d
    iget-object v2, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$Message;->action:Lorg/telegram/tgnet/TLRPC$MessageAction;

    iget-object v2, v2, Lorg/telegram/tgnet/TLRPC$MessageAction;->encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_decryptedMessageActionNoop;

    if-eqz v2, :cond_3

    .line 583
    invoke-static {}, Lorg/telegram/messenger/SecretChatHelper;->getInstance()Lorg/telegram/messenger/SecretChatHelper;

    move-result-object v2

    iget-object v4, p1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-virtual {v2, v1, v4}, Lorg/telegram/messenger/SecretChatHelper;->sendNoopMessage(Lorg/telegram/tgnet/TLRPC$EncryptedChat;Lorg/telegram/tgnet/TLRPC$Message;)V

    goto/16 :goto_1

    .line 587
    .end local v0    # "enc_id":I
    .end local v1    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    :cond_e
    if-eqz p2, :cond_f

    .line 588
    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper;->unsentMessages:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_f
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/messenger/MessageObject;)V

    move v2, v3

    .line 591
    goto/16 :goto_0
.end method

.method public sendCallback(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;Lorg/telegram/ui/ChatActivity;)V
    .locals 5
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;
    .param p3, "parentFragment"    # Lorg/telegram/ui/ChatActivity;

    .prologue
    .line 1020
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1023
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v3}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1024
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForCallback:Ljava/util/HashMap;

    invoke-virtual {v2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;-><init>()V

    .line 1026
    .local v1, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v2}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v2

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 1027
    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    iput v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->msg_id:I

    .line 1028
    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    iput-object v2, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_getBotCallbackAnswer;->data:[B

    .line 1029
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v2

    new-instance v3, Lorg/telegram/messenger/SendMessagesHelper$6;

    invoke-direct {v3, p0, p3, p1, v0}, Lorg/telegram/messenger/SendMessagesHelper$6;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Lorg/telegram/ui/ChatActivity;Lorg/telegram/messenger/MessageObject;Ljava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v2, v1, v3, v4}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    goto :goto_0
.end method

.method public sendCurrentLocation(Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$KeyboardButton;)V
    .locals 3
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;
    .param p2, "button"    # Lorg/telegram/tgnet/TLRPC$KeyboardButton;

    .prologue
    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lorg/telegram/tgnet/TLRPC$KeyboardButton;->data:[B

    invoke-static {v2}, Lorg/telegram/messenger/Utilities;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1011
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->waitingForLocation:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    iget-object v1, p0, Lorg/telegram/messenger/SendMessagesHelper;->locationProvider:Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;

    invoke-virtual {v1}, Lorg/telegram/messenger/SendMessagesHelper$LocationProvider;->start()V

    .line 1013
    return-void
.end method

.method public sendMessage(Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLjava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 18
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "peer"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p5, "webPage"    # Lorg/telegram/tgnet/TLRPC$WebPage;
    .param p6, "searchLinks"    # Z
    .param p8, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$WebPage;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$MessageEntity;",
            ">;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1084
    .local p7, "entities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$MessageEntity;>;"
    .local p9, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v15, p7

    move-object/from16 v16, p8

    move-object/from16 v17, p9

    invoke-direct/range {v1 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1085
    return-void
.end method

.method public sendMessage(Ljava/util/ArrayList;J)V
    .locals 34
    .param p2, "peer"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/messenger/MessageObject;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 686
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-wide/from16 v0, p2

    long-to-int v4, v0

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 952
    :cond_0
    return-void

    .line 689
    :cond_1
    move-wide/from16 v0, p2

    long-to-int v0, v0

    move/from16 v21, v0

    .line 690
    .local v21, "lower_id":I
    move-wide/from16 v0, p2

    long-to-int v4, v0

    invoke-static {v4}, Lorg/telegram/messenger/MessagesController;->getPeer(I)Lorg/telegram/tgnet/TLRPC$Peer;

    move-result-object v12

    .line 691
    .local v12, "to_id":Lorg/telegram/tgnet/TLRPC$Peer;
    const/16 v19, 0x0

    .line 692
    .local v19, "isMegagroup":Z
    const/16 v20, 0x0

    .line 693
    .local v20, "isSignature":Z
    if-lez v21, :cond_4

    .line 694
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getUser(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$User;

    move-result-object v31

    .line 695
    .local v31, "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    if-eqz v31, :cond_0

    .line 706
    .end local v31    # "sendToUser":Lorg/telegram/tgnet/TLRPC$User;
    :cond_2
    :goto_0
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 707
    .local v28, "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 708
    .local v14, "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 709
    .local v29, "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 710
    .local v17, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 711
    .local v24, "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-static/range {v21 .. v21}, Lorg/telegram/messenger/MessagesController;->getInputPeer(I)Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-result-object v18

    .line 712
    .local v18, "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    const-wide/16 v22, 0x0

    .line 713
    .local v22, "lastDialogId":J
    const/4 v13, 0x0

    .local v13, "a":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_0

    .line 714
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lorg/telegram/messenger/MessageObject;

    .line 715
    .local v25, "msgObj":Lorg/telegram/messenger/MessageObject;
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    if-gtz v4, :cond_5

    .line 713
    :cond_3
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 699
    .end local v13    # "a":I
    .end local v14    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v17    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .end local v22    # "lastDialogId":J
    .end local v24    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v25    # "msgObj":Lorg/telegram/messenger/MessageObject;
    .end local v28    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v29    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move/from16 v0, v21

    neg-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v15

    .line 700
    .local v15, "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    invoke-static {v15}, Lorg/telegram/messenger/ChatObject;->isChannel(Lorg/telegram/tgnet/TLRPC$Chat;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 701
    iget-boolean v0, v15, Lorg/telegram/tgnet/TLRPC$Chat;->megagroup:Z

    move/from16 v19, v0

    .line 702
    iget-boolean v0, v15, Lorg/telegram/tgnet/TLRPC$Chat;->signatures:Z

    move/from16 v20, v0

    goto :goto_0

    .line 719
    .end local v15    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    .restart local v13    # "a":I
    .restart local v14    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v17    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v18    # "inputPeer":Lorg/telegram/tgnet/TLRPC$InputPeer;
    .restart local v22    # "lastDialogId":J
    .restart local v24    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .restart local v25    # "msgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v28    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .restart local v29    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_5
    new-instance v26, Lorg/telegram/tgnet/TLRPC$TL_message;

    invoke-direct/range {v26 .. v26}, Lorg/telegram/tgnet/TLRPC$TL_message;-><init>()V

    .line 720
    .local v26, "newMsg":Lorg/telegram/tgnet/TLRPC$Message;
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->isForwarded()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 721
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 741
    :goto_3
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    .line 742
    const/4 v4, 0x4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 743
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

    if-eqz v4, :cond_6

    .line 744
    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x200

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 746
    :cond_6
    if-eqz v19, :cond_7

    .line 747
    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    const/high16 v5, -0x80000000

    or-int/2addr v4, v5

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 749
    :cond_7
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    if-eqz v4, :cond_8

    .line 750
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->via_bot_id:I

    .line 751
    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x800

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 753
    :cond_8
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->message:Ljava/lang/String;

    .line 754
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    .line 755
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 756
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    .line 757
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->entities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 758
    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 760
    :cond_9
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    if-nez v4, :cond_a

    .line 761
    const-string/jumbo v4, ""

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    .line 763
    :cond_a
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getNewMessageId()I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->id:I

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->local_id:I

    .line 764
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->out:Z

    .line 765
    iget v4, v12, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-eqz v4, :cond_16

    if-nez v19, :cond_16

    .line 766
    if-eqz v20, :cond_15

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    :goto_4
    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 767
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    .line 772
    :goto_5
    move-object/from16 v0, v26

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_b

    .line 773
    invoke-virtual/range {p0 .. p0}, Lorg/telegram/messenger/SendMessagesHelper;->getNextRandomId()J

    move-result-wide v4

    move-object/from16 v0, v26

    iput-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    .line 775
    :cond_b
    move-object/from16 v0, v26

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    move-object/from16 v0, v26

    iget-wide v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->random_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_msg_id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 778
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/tgnet/ConnectionsManager;->getCurrentTime()I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    .line 779
    move-object/from16 v0, v18

    instance-of v4, v0, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_18

    .line 780
    if-nez v19, :cond_17

    .line 781
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 782
    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 793
    :goto_6
    move-wide/from16 v0, p2

    move-object/from16 v2, v26

    iput-wide v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->dialog_id:J

    .line 794
    move-object/from16 v0, v26

    iput-object v12, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    .line 795
    invoke-static/range {v26 .. v26}, Lorg/telegram/messenger/MessageObject;->isVoiceMessage(Lorg/telegram/tgnet/TLRPC$Message;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v4, :cond_c

    .line 796
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->media_unread:Z

    .line 798
    :cond_c
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_d

    .line 799
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->ttl:I

    .line 801
    :cond_d
    new-instance v27, Lorg/telegram/messenger/MessageObject;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-direct {v0, v1, v4, v5}, Lorg/telegram/messenger/MessageObject;-><init>(Lorg/telegram/tgnet/TLRPC$Message;Ljava/util/AbstractMap;Z)V

    .line 802
    .local v27, "newMsgObj":Lorg/telegram/messenger/MessageObject;
    move-object/from16 v0, v27

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    const/4 v5, 0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$Message;->send_state:I

    .line 803
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    move-object/from16 v0, v26

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/SendMessagesHelper;->putToSendingMessages(Lorg/telegram/tgnet/TLRPC$Message;)V

    .line 807
    const/16 v16, 0x0

    .line 809
    .local v16, "differentDialog":Z
    sget-boolean v4, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-eqz v4, :cond_e

    .line 810
    const-string/jumbo v4, "tmessages"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "forward message user_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->user_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " chat_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->chat_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " channel_id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " access_hash = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    iget-wide v6, v0, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :cond_e
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x64

    if-eq v4, v5, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v13, v4, :cond_f

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v13, v4, :cond_3

    add-int/lit8 v4, v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v4

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_3

    .line 814
    :cond_f
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lorg/telegram/messenger/MessagesStorage;->putMessages(Ljava/util/ArrayList;ZZZI)V

    .line 815
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-wide/from16 v0, p2

    move-object/from16 v2, v28

    invoke-virtual {v4, v0, v1, v2}, Lorg/telegram/messenger/MessagesController;->updateInterfaceWithMessages(JLjava/util/ArrayList;)V

    .line 816
    invoke-static {}, Lorg/telegram/messenger/NotificationCenter;->getInstance()Lorg/telegram/messenger/NotificationCenter;

    move-result-object v4

    sget v5, Lorg/telegram/messenger/NotificationCenter;->dialogsNeedReload:I

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lorg/telegram/messenger/NotificationCenter;->postNotificationName(I[Ljava/lang/Object;)V

    .line 817
    const/4 v4, 0x0

    invoke-static {v4}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 819
    new-instance v30, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;

    invoke-direct/range {v30 .. v30}, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;-><init>()V

    .line 820
    .local v30, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 821
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->to_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    if-eqz v4, :cond_10

    .line 822
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string/jumbo v5, "Notifications"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "silent_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    move-object/from16 v0, v30

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->silent:Z

    .line 824
    :cond_10
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    instance-of v4, v4, Lorg/telegram/tgnet/TLRPC$TL_peerChannel;

    if-eqz v4, :cond_1a

    .line 825
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v4

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MessagesController;->getChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$Chat;

    move-result-object v15

    .line 826
    .restart local v15    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerChannel;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    .line 827
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->channel_id:I

    .line 828
    if-eqz v15, :cond_11

    .line 829
    move-object/from16 v0, v30

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    iget-wide v6, v15, Lorg/telegram/tgnet/TLRPC$Chat;->access_hash:J

    iput-wide v6, v4, Lorg/telegram/tgnet/TLRPC$InputPeer;->access_hash:J

    .line 834
    .end local v15    # "chat":Lorg/telegram/tgnet/TLRPC$Chat;
    :cond_11
    :goto_7
    move-object/from16 v0, v29

    move-object/from16 v1, v30

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->random_id:Ljava/util/ArrayList;

    .line 835
    move-object/from16 v0, v17

    move-object/from16 v1, v30

    iput-object v0, v1, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->id:Ljava/util/ArrayList;

    .line 837
    move-object v11, v14

    .line 838
    .local v11, "newMsgObjArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    move-object/from16 v10, v28

    .line 839
    .local v10, "newMsgArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    move-object/from16 v9, v24

    .line 840
    .local v9, "messagesByRandomIdsFinal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    move/from16 v8, v19

    .line 841
    .local v8, "isMegagroupFinal":Z
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v32

    new-instance v4, Lorg/telegram/messenger/SendMessagesHelper$4;

    move-object/from16 v5, p0

    move-wide/from16 v6, p2

    invoke-direct/range {v4 .. v12}, Lorg/telegram/messenger/SendMessagesHelper$4;-><init>(Lorg/telegram/messenger/SendMessagesHelper;JZLjava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$Peer;)V

    const/16 v5, 0x44

    move-object/from16 v0, v32

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v4, v5}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;I)I

    .line 943
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v13, v4, :cond_3

    .line 944
    new-instance v28, Ljava/util/ArrayList;

    .end local v28    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 945
    .restart local v28    # "objArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 946
    .restart local v14    # "arr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    new-instance v29, Ljava/util/ArrayList;

    .end local v29    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 947
    .restart local v29    # "randomIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 948
    .restart local v17    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v24, Ljava/util/HashMap;

    .end local v24    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .restart local v24    # "messagesByRandomIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    goto/16 :goto_2

    .line 723
    .end local v8    # "isMegagroupFinal":Z
    .end local v9    # "messagesByRandomIdsFinal":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v10    # "newMsgArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MessageObject;>;"
    .end local v11    # "newMsgObjArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/tgnet/TLRPC$Message;>;"
    .end local v16    # "differentDialog":Z
    .end local v27    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .end local v30    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    :cond_12
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;-><init>()V

    move-object/from16 v0, v26

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    .line 724
    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->isFromUser()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 725
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    .line 726
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 739
    :cond_13
    :goto_8
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->date:I

    goto/16 :goto_3

    .line 728
    :cond_14
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_id:I

    .line 729
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 730
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-boolean v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->post:Z

    if-eqz v4, :cond_13

    .line 731
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    invoke-virtual/range {v25 .. v25}, Lorg/telegram/messenger/MessageObject;->getId()I

    move-result v5

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->channel_post:I

    .line 732
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    .line 733
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    if-lez v4, :cond_13

    .line 734
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    move-object/from16 v0, v25

    iget-object v5, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v5, v5, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->from_id:I

    .line 735
    move-object/from16 v0, v26

    iget-object v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->fwd_from:Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;

    iget v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/telegram/tgnet/TLRPC$TL_messageFwdHeader;->flags:I

    goto :goto_8

    .line 766
    :cond_15
    iget v4, v12, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    neg-int v4, v4

    goto/16 :goto_4

    .line 769
    :cond_16
    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v4

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->from_id:I

    .line 770
    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x100

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    goto/16 :goto_5

    .line 784
    :cond_17
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_6

    .line 787
    :cond_18
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_19

    .line 788
    move-object/from16 v0, v25

    iget-object v4, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget v4, v4, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->views:I

    .line 789
    move-object/from16 v0, v26

    iget v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    or-int/lit16 v4, v4, 0x400

    move-object/from16 v0, v26

    iput v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->flags:I

    .line 791
    :cond_19
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lorg/telegram/tgnet/TLRPC$Message;->unread:Z

    goto/16 :goto_6

    .line 832
    .restart local v16    # "differentDialog":Z
    .restart local v27    # "newMsgObj":Lorg/telegram/messenger/MessageObject;
    .restart local v30    # "req":Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;
    :cond_1a
    new-instance v4, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;

    invoke-direct {v4}, Lorg/telegram/tgnet/TLRPC$TL_inputPeerEmpty;-><init>()V

    move-object/from16 v0, v30

    iput-object v4, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_forwardMessages;->from_peer:Lorg/telegram/tgnet/TLRPC$InputPeer;

    goto/16 :goto_7
.end method

.method public sendMessage(Lorg/telegram/messenger/MessageObject;)V
    .locals 20
    .param p1, "retryMessageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 1072
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/MessageObject;->getDialogId()J

    move-result-wide v10

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v12, v2, Lorg/telegram/tgnet/TLRPC$Message;->attachPath:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v17, 0x0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->reply_markup:Lorg/telegram/tgnet/TLRPC$ReplyMarkup;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v0, v2, Lorg/telegram/tgnet/TLRPC$Message;->params:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v3, p0

    move-object/from16 v16, p1

    invoke-direct/range {v3 .. v19}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1073
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$MessageMedia;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 18
    .param p1, "location"    # Lorg/telegram/tgnet/TLRPC$MessageMedia;
    .param p2, "peer"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p5, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$MessageMedia;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1088
    .local p6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v1 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1089
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 18
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$TL_document;
    .param p2, "videoEditedInfo"    # Lorg/telegram/messenger/VideoEditedInfo;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "peer"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p7, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_document;",
            "Lorg/telegram/messenger/VideoEditedInfo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1080
    .local p8, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v7, p1

    move-wide/from16 v8, p4

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    invoke-direct/range {v1 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1081
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 19
    .param p1, "photo"    # Lorg/telegram/tgnet/TLRPC$TL_photo;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "peer"    # J
    .param p5, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p6, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1092
    .local p7, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-wide/from16 v8, p3

    move-object/from16 v10, p2

    move-object/from16 v11, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    invoke-direct/range {v1 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1093
    return-void
.end method

.method public sendMessage(Lorg/telegram/tgnet/TLRPC$User;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V
    .locals 18
    .param p1, "user"    # Lorg/telegram/tgnet/TLRPC$User;
    .param p2, "peer"    # J
    .param p4, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .param p5, "replyMarkup"    # Lorg/telegram/tgnet/TLRPC$ReplyMarkup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/telegram/tgnet/TLRPC$User;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Lorg/telegram/tgnet/TLRPC$ReplyMarkup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1076
    .local p6, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move-wide/from16 v8, p2

    move-object/from16 v11, p4

    move-object/from16 v16, p5

    move-object/from16 v17, p6

    invoke-direct/range {v1 .. v17}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    .line 1077
    return-void
.end method

.method public sendSticker(Lorg/telegram/tgnet/TLRPC$Document;JLorg/telegram/messenger/MessageObject;)V
    .locals 20
    .param p1, "document"    # Lorg/telegram/tgnet/TLRPC$Document;
    .param p2, "peer"    # J
    .param p4, "replyingMessageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 639
    if-nez p1, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    move-wide/from16 v0, p2

    long-to-int v2, v0

    if-nez v2, :cond_3

    .line 643
    const/16 v2, 0x20

    shr-long v2, p2, v2

    long-to-int v15, v2

    .line 644
    .local v15, "high_id":I
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/MessagesController;->getEncryptedChat(Ljava/lang/Integer;)Lorg/telegram/tgnet/TLRPC$EncryptedChat;

    move-result-object v13

    .line 645
    .local v13, "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    if-eqz v13, :cond_0

    .line 648
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    instance-of v2, v2, Lorg/telegram/tgnet/TLRPC$TL_photoSize;

    if-eqz v2, :cond_3

    .line 649
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/telegram/messenger/FileLoader;->getPathToAttach(Lorg/telegram/tgnet/TLObject;Z)Ljava/io/File;

    move-result-object v14

    .line 650
    .local v14, "file":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 652
    :try_start_0
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v0, v2

    move/from16 v16, v0

    .line 653
    .local v16, "len":I
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    new-array v11, v2, [B

    .line 654
    .local v11, "arr":[B
    new-instance v18, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    move-object/from16 v0, v18

    invoke-direct {v0, v14, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 655
    .local v18, "reader":Ljava/io/RandomAccessFile;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 656
    new-instance v17, Lorg/telegram/tgnet/TLRPC$TL_document;

    invoke-direct/range {v17 .. v17}, Lorg/telegram/tgnet/TLRPC$TL_document;-><init>()V

    .line 657
    .local v17, "newDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    new-instance v2, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;

    invoke-direct {v2}, Lorg/telegram/tgnet/TLRPC$TL_photoCachedSize;-><init>()V

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    .line 658
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    .line 659
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->size:I

    .line 660
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->w:I

    .line 661
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    iput v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->h:I

    .line 662
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v3, v3, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    iput-object v3, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->type:Ljava/lang/String;

    .line 663
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iput-object v11, v2, Lorg/telegram/tgnet/TLRPC$PhotoSize;->bytes:[B

    .line 665
    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    move-object/from16 v0, v17

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->id:J

    .line 666
    move-object/from16 v0, p1

    iget-wide v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    move-object/from16 v0, v17

    iput-wide v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->access_hash:J

    .line 667
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->date:I

    move-object/from16 v0, v17

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->date:I

    .line 668
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->mime_type:Ljava/lang/String;

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    .line 669
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->size:I

    move-object/from16 v0, v17

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->size:I

    .line 670
    move-object/from16 v0, p1

    iget v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->dc_id:I

    move-object/from16 v0, v17

    iput v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->dc_id:I

    .line 671
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->attributes:Ljava/util/ArrayList;

    .line 672
    move-object/from16 v0, v17

    iget-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 673
    const-string/jumbo v2, ""

    move-object/from16 v0, v17

    iput-object v2, v0, Lorg/telegram/tgnet/TLRPC$TL_document;->mime_type:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    :cond_2
    move-object/from16 p1, v17

    .line 682
    .end local v11    # "arr":[B
    .end local v13    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .end local v14    # "file":Ljava/io/File;
    .end local v15    # "high_id":I
    .end local v16    # "len":I
    .end local v17    # "newDocument":Lorg/telegram/tgnet/TLRPC$TL_document;
    .end local v18    # "reader":Ljava/io/RandomAccessFile;
    :cond_3
    :goto_1
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v2

    move-object/from16 v3, p1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_document;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    invoke-virtual/range {v2 .. v10}, Lorg/telegram/messenger/SendMessagesHelper;->sendMessage(Lorg/telegram/tgnet/TLRPC$TL_document;Lorg/telegram/messenger/VideoEditedInfo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$ReplyMarkup;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 676
    .restart local v13    # "encryptedChat":Lorg/telegram/tgnet/TLRPC$EncryptedChat;
    .restart local v14    # "file":Ljava/io/File;
    .restart local v15    # "high_id":I
    :catch_0
    move-exception v12

    .line 677
    .local v12, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "tmessages"

    invoke-static {v2, v12}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setCurrentChatInfo(Lorg/telegram/tgnet/TLRPC$ChatFull;)V
    .locals 0
    .param p1, "info"    # Lorg/telegram/tgnet/TLRPC$ChatFull;

    .prologue
    .line 247
    iput-object p1, p0, Lorg/telegram/messenger/SendMessagesHelper;->currentChatInfo:Lorg/telegram/tgnet/TLRPC$ChatFull;

    .line 248
    return-void
.end method

.method protected stopVideoService(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 3116
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MessagesStorage;->getStorageQueue()Lorg/telegram/messenger/DispatchQueue;

    move-result-object v0

    new-instance v1, Lorg/telegram/messenger/SendMessagesHelper$7;

    invoke-direct {v1, p0, p1}, Lorg/telegram/messenger/SendMessagesHelper$7;-><init>(Lorg/telegram/messenger/SendMessagesHelper;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/DispatchQueue;->postRunnable(Ljava/lang/Runnable;)V

    .line 3127
    return-void
.end method

.method public torboSendPhotoMessage(Ljava/lang/CharSequence;Lorg/telegram/tgnet/TLRPC$TL_photo;Ljava/lang/String;JLorg/telegram/messenger/MessageObject;Ljava/util/HashMap;)V
    .locals 18
    .param p1, "caption"    # Ljava/lang/CharSequence;
    .param p2, "photo"    # Lorg/telegram/tgnet/TLRPC$TL_photo;
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "peer"    # J
    .param p6, "reply_to_msg"    # Lorg/telegram/messenger/MessageObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lorg/telegram/tgnet/TLRPC$TL_photo;",
            "Ljava/lang/String;",
            "J",
            "Lorg/telegram/messenger/MessageObject;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2079
    .local p7, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p3

    move-object/from16 v11, p6

    move-object/from16 v16, p7

    invoke-direct/range {v0 .. v16}, Lorg/telegram/messenger/SendMessagesHelper;->SuperSendMessage(Ljava/lang/CharSequence;Ljava/lang/String;Lorg/telegram/tgnet/TLRPC$MessageMedia;Lorg/telegram/tgnet/TLRPC$TL_photo;Lorg/telegram/messenger/VideoEditedInfo;Lorg/telegram/tgnet/TLRPC$User;Lorg/telegram/tgnet/TLRPC$TL_document;JLjava/lang/String;Lorg/telegram/messenger/MessageObject;Lorg/telegram/tgnet/TLRPC$WebPage;ZLorg/telegram/messenger/MessageObject;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 2080
    return-void
.end method
