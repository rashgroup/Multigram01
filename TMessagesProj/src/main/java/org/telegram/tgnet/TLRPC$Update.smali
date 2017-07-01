.class public Lorg/telegram/tgnet/TLRPC$Update;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Update"
.end annotation


# instance fields
.field public action:Lorg/telegram/tgnet/TLRPC$SendMessageAction;

.field public auth_key_id:J

.field public blocked:Z

.field public channel_id:I

.field public chat:Lorg/telegram/tgnet/TLRPC$EncryptedChat;

.field public chat_id:I

.field public data:[B

.field public date:I

.field public dc_options:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$TL_dcOption;",
            ">;"
        }
    .end annotation
.end field

.field public device:Ljava/lang/String;

.field public draft:Lorg/telegram/tgnet/TLRPC$DraftMessage;

.field public enabled:Z

.field public first_name:Ljava/lang/String;

.field public flags:I

.field public foreign_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

.field public geo:Lorg/telegram/tgnet/TLRPC$GeoPoint;

.field public inviter_id:I

.field public is_admin:Z

.field public key:Lorg/telegram/tgnet/TLRPC$PrivacyKey;

.field public last_name:Ljava/lang/String;

.field public location:Ljava/lang/String;

.field public max_date:I

.field public max_id:I

.field public media:Lorg/telegram/tgnet/TLRPC$MessageMedia;

.field public messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public my_link:Lorg/telegram/tgnet/TLRPC$ContactLink;

.field public notify_settings:Lorg/telegram/tgnet/TLRPC$PeerNotifySettings;

.field public offset:Ljava/lang/String;

.field public order:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public participants:Lorg/telegram/tgnet/TLRPC$ChatParticipants;

.field public phone:Ljava/lang/String;

.field public photo:Lorg/telegram/tgnet/TLRPC$UserProfilePhoto;

.field public popup:Z

.field public previous:Z

.field public pts:I

.field public pts_count:I

.field public qts:I

.field public query:Ljava/lang/String;

.field public query_id:J

.field public random_id:J

.field public rules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/telegram/tgnet/TLRPC$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field public status:Lorg/telegram/tgnet/TLRPC$UserStatus;

.field public stickerset:Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;

.field public type:Ljava/lang/String;

.field public user_id:I

.field public username:Ljava/lang/String;

.field public version:I

.field public views:I

.field public webpage:Lorg/telegram/tgnet/TLRPC$WebPage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8990
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    .line 9016
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Update;->dc_options:Ljava/util/ArrayList;

    .line 9019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Update;->rules:Ljava/util/ArrayList;

    .line 9032
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Update;->messages:Ljava/util/ArrayList;

    .line 9036
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/telegram/tgnet/TLRPC$Update;->order:Ljava/util/ArrayList;

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$Update;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 9042
    const/4 v0, 0x0

    .line 9043
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$Update;
    sparse-switch p1, :sswitch_data_0

    .line 9195
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 9196
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in Update"

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

    .line 9045
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdd;-><init>()V

    .line 9046
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9048
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDraftMessage;-><init>()V

    .line 9049
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9051
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSets;-><init>()V

    .line 9052
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9054
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEditChannelMessage;-><init>()V

    .line 9055
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9057
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotCallbackQuery;-><init>()V

    .line 9058
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9060
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineQuery;-><init>()V

    .line 9061
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9063
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNotifySettings;-><init>()V

    .line 9064
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9066
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannel;-><init>()V

    .line 9067
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9069
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantDelete;-><init>()V

    .line 9070
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9072
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserTyping;-><init>()V

    .line 9073
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9075
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserBlocked;-><init>()V

    .line 9076
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9078
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewAuthorization;-><init>()V

    .line 9079
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9081
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactRegistered;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateContactRegistered;-><init>()V

    .line 9082
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9084
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelInbox;-><init>()V

    .line 9085
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9087
    :sswitch_e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewEncryptedMessage;-><init>()V

    .line 9088
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9090
    :sswitch_f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatAdmins;-><init>()V

    .line 9091
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9093
    :sswitch_10
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateSavedGifs;-><init>()V

    .line 9094
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto :goto_0

    .line 9096
    :sswitch_11
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewChannelMessage;-><init>()V

    .line 9097
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9099
    :sswitch_12
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateMessageID;-><init>()V

    .line 9100
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9102
    :sswitch_13
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDcOptions;-><init>()V

    .line 9103
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9105
    :sswitch_14
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipants;-><init>()V

    .line 9106
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9108
    :sswitch_15
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updatePrivacy;-><init>()V

    .line 9109
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9111
    :sswitch_16
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateInlineBotCallbackQuery;-><init>()V

    .line 9112
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9114
    :sswitch_17
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadChannelOutbox;-><init>()V

    .line 9115
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9117
    :sswitch_18
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedChatTyping;-><init>()V

    .line 9118
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9120
    :sswitch_19
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewGeoChatMessage;-><init>()V

    .line 9121
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9123
    :sswitch_1a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserStatus;-><init>()V

    .line 9124
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9126
    :sswitch_1b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelMessageViews;-><init>()V

    .line 9127
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9129
    :sswitch_1c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelTooLong;-><init>()V

    .line 9130
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9132
    :sswitch_1d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateServiceNotification;-><init>()V

    .line 9133
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9135
    :sswitch_1e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatParticipantAdmin;-><init>()V

    .line 9136
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9138
    :sswitch_1f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewStickerSet;-><init>()V

    .line 9139
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9141
    :sswitch_20
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateContactLink;-><init>()V

    .line 9142
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9144
    :sswitch_21
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryInbox;-><init>()V

    .line 9145
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9147
    :sswitch_22
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserName;-><init>()V

    .line 9148
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9150
    :sswitch_23
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateBotInlineSend;-><init>()V

    .line 9151
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9153
    :sswitch_24
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEditMessage;-><init>()V

    .line 9154
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9156
    :sswitch_25
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChannelPinnedMessage;-><init>()V

    .line 9157
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9159
    :sswitch_26
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteChannelMessages;-><init>()V

    .line 9160
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9162
    :sswitch_27
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhone;-><init>()V

    .line 9163
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9165
    :sswitch_28
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateWebPage;-><init>()V

    .line 9166
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9168
    :sswitch_29
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryption;-><init>()V

    .line 9169
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9171
    :sswitch_2a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateNewMessage;-><init>()V

    .line 9172
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9174
    :sswitch_2b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateStickerSetsOrder;-><init>()V

    .line 9175
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9177
    :sswitch_2c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateEncryptedMessagesRead;-><init>()V

    .line 9178
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9180
    :sswitch_2d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadMessagesContents;-><init>()V

    .line 9181
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9183
    :sswitch_2e
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateDeleteMessages;-><init>()V

    .line 9184
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9186
    :sswitch_2f
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateChatUserTyping;-><init>()V

    .line 9187
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9189
    :sswitch_30
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateUserPhoto;-><init>()V

    .line 9190
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9192
    :sswitch_31
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_updateReadHistoryOutbox;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$Update;
    goto/16 :goto_0

    .line 9198
    :cond_0
    if-eqz v0, :cond_1

    .line 9199
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$Update;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 9201
    :cond_1
    return-object v0

    .line 9043
    :sswitch_data_0
    .sparse-switch
        -0x7f1317e6 -> :sswitch_a
        -0x71a1678d -> :sswitch_13
        -0x70f9ad66 -> :sswitch_b
        -0x6c8acbe2 -> :sswitch_10
        -0x6acec4f4 -> :sswitch_30
        -0x67a6db8b -> :sswitch_25
        -0x675ed4b5 -> :sswitch_1b
        -0x669e02a4 -> :sswitch_21
        -0x659a15e1 -> :sswitch_2f
        -0x62d1983b -> :sswitch_20
        -0x5df24f1b -> :sswitch_2e
        -0x59739774 -> :sswitch_4
        -0x58ccd48d -> :sswitch_22
        -0x4b5d1773 -> :sswitch_29
        -0x496fe6a7 -> :sswitch_1e
        -0x492ba9aa -> :sswitch_7
        -0x413d9711 -> :sswitch_6
        -0x3c8ade37 -> :sswitch_26
        -0x1bfc8f5d -> :sswitch_24
        -0x15b4f1a4 -> :sswitch_0
        -0x14fb9805 -> :sswitch_1c
        -0x11d44697 -> :sswitch_1
        -0x11c4d8d6 -> :sswitch_15
        -0xf204baf -> :sswitch_2b
        0x7761198 -> :sswitch_14
        0xe48f964 -> :sswitch_23
        0x12b9417b -> :sswitch_27
        0x12bcbd9a -> :sswitch_e
        0x1710f156 -> :sswitch_18
        0x1b3f4df7 -> :sswitch_3
        0x1bfbd823 -> :sswitch_1a
        0x1f2b0afd -> :sswitch_2a
        0x2575bbb9 -> :sswitch_c
        0x25d6c9c7 -> :sswitch_17
        0x2cbd95af -> :sswitch_16
        0x2f2f21bf -> :sswitch_31
        0x382dd3e4 -> :sswitch_1d
        0x38fe25b7 -> :sswitch_2c
        0x4214f37f -> :sswitch_d
        0x43ae3dec -> :sswitch_2
        0x4e90bfd6 -> :sswitch_12
        0x54826690 -> :sswitch_5
        0x5a68e3f7 -> :sswitch_19
        0x5c486927 -> :sswitch_9
        0x62ba04d9 -> :sswitch_11
        0x688a30aa -> :sswitch_1f
        0x68c13933 -> :sswitch_2d
        0x6e5f8c22 -> :sswitch_8
        0x6e947941 -> :sswitch_f
        0x7f891213 -> :sswitch_28
    .end sparse-switch
.end method
