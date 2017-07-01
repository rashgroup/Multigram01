.class public Lorg/telegram/tgnet/TLRPC$MessageAction;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageAction"
.end annotation


# instance fields
.field public address:Ljava/lang/String;

.field public channel_id:I

.field public chat_id:I

.field public encryptedAction:Lorg/telegram/tgnet/TLRPC$DecryptedMessageAction;

.field public inviter_id:I

.field public newUserPhoto:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

.field public photo:Lorg/telegram/tgnet/TLRPC$Photo;

.field public title:Ljava/lang/String;

.field public ttl:I

.field public user_id:I

.field public users:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6446
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 6450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$MessageAction;->users:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$MessageAction;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 6460
    const/4 v0, 0x0

    .line 6461
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    sparse-switch p1, :sswitch_data_0

    .line 6529
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 6530
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in MessageAction"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6463
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionLoginUnknownLocation;-><init>()V

    .line 6464
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6466
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageEncryptedAction;-><init>()V

    .line 6467
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6469
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatCreate;-><init>()V

    .line 6470
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6472
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatMigrateTo;-><init>()V

    .line 6473
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6475
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionHistoryClear;-><init>()V

    .line 6476
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6478
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditPhoto;-><init>()V

    .line 6479
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6481
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelMigrateFrom;-><init>()V

    .line 6482
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6484
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser;-><init>()V

    .line 6485
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6487
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeleteUser;-><init>()V

    .line 6488
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6490
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionCreatedBroadcastList;-><init>()V

    .line 6491
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6493
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserJoined;-><init>()V

    .line 6494
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6496
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionUserUpdatedPhoto;-><init>()V

    .line 6497
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6499
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoChatCheckin;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoChatCheckin;-><init>()V

    .line 6500
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6502
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatJoinedByLink;-><init>()V

    .line 6503
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6505
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatAddUser_old;-><init>()V

    .line 6506
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6508
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionTTLChange;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionTTLChange;-><init>()V

    .line 6509
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6511
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChannelCreate;-><init>()V

    .line 6512
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto :goto_0

    .line 6514
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionPinMessage;-><init>()V

    .line 6515
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto/16 :goto_0

    .line 6517
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatDeletePhoto;-><init>()V

    .line 6518
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto/16 :goto_0

    .line 6520
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionChatEditTitle;-><init>()V

    .line 6521
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto/16 :goto_0

    .line 6523
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionEmpty;-><init>()V

    .line 6524
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto/16 :goto_0

    .line 6526
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoChatCreate;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messageActionGeoChatCreate;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$MessageAction;
    goto/16 :goto_0

    .line 6532
    :cond_0
    if-eqz v0, :cond_1

    .line 6533
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$MessageAction;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 6535
    :cond_1
    return-object v0

    .line 6461
    :sswitch_data_0
    .sparse-switch
        -0x6b42c713 -> :sswitch_11
        -0x6a2d536e -> :sswitch_10
        -0x6a1c0411 -> :sswitch_12
        -0x604549fc -> :sswitch_4
        -0x599c7466 -> :sswitch_2
        -0x4faa1512 -> :sswitch_6
        -0x4d5164f4 -> :sswitch_8
        -0x4a5e31a6 -> :sswitch_13
        -0x49510850 -> :sswitch_14
        -0x7630a18 -> :sswitch_d
        0xc7d53de -> :sswitch_c
        0x488a7337 -> :sswitch_7
        0x51bdb021 -> :sswitch_3
        0x55555550 -> :sswitch_a
        0x55555551 -> :sswitch_b
        0x55555552 -> :sswitch_f
        0x55555557 -> :sswitch_9
        0x555555f5 -> :sswitch_0
        0x555555f7 -> :sswitch_1
        0x5e3cfc4b -> :sswitch_e
        0x6f038ebc -> :sswitch_15
        0x7fcb13a8 -> :sswitch_5
    .end sparse-switch
.end method
