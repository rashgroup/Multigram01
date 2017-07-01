.class public Lorg/telegram/tgnet/TLRPC$SendMessageAction;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendMessageAction"
.end annotation


# instance fields
.field public progress:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2016
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 2020
    const/4 v0, 0x0

    .line 2021
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    sparse-switch p1, :sswitch_data_0

    .line 2065
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 2066
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in SendMessageAction"

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

    .line 2023
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordAudioAction;-><init>()V

    .line 2024
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    goto :goto_0

    .line 2026
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction_old;-><init>()V

    .line 2027
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    goto :goto_0

    .line 2029
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction_old;-><init>()V

    .line 2030
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    goto :goto_0

    .line 2032
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadAudioAction;-><init>()V

    .line 2033
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    goto :goto_0

    .line 2035
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction;-><init>()V

    .line 2036
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    goto :goto_0

    .line 2038
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction_old;-><init>()V

    .line 2039
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    goto :goto_0

    .line 2041
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadVideoAction;-><init>()V

    .line 2042
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    goto :goto_0

    .line 2044
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageCancelAction;-><init>()V

    .line 2045
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    goto :goto_0

    .line 2047
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGeoLocationAction;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageGeoLocationAction;-><init>()V

    .line 2048
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    goto :goto_0

    .line 2050
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageChooseContactAction;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageChooseContactAction;-><init>()V

    .line 2051
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    goto :goto_0

    .line 2053
    :sswitch_a
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageTypingAction;-><init>()V

    .line 2054
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    goto :goto_0

    .line 2056
    :sswitch_b
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadPhotoAction_old;-><init>()V

    .line 2057
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    goto :goto_0

    .line 2059
    :sswitch_c
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageUploadDocumentAction;-><init>()V

    .line 2060
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    goto :goto_0

    .line 2062
    :sswitch_d
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordVideoAction;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_sendMessageRecordVideoAction;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$SendMessageAction;
    goto :goto_0

    .line 2068
    :cond_0
    if-eqz v0, :cond_1

    .line 2069
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$SendMessageAction;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 2071
    :cond_1
    return-object v0

    .line 2021
    nop

    :sswitch_data_0
    .sparse-switch
        -0x70511672 -> :sswitch_5
        -0x6dfbd009 -> :sswitch_1
        -0x66f5c3e6 -> :sswitch_b
        -0x5e782991 -> :sswitch_d
        -0x55f3261c -> :sswitch_c
        -0x2e2cb5da -> :sswitch_4
        -0x2ad08c09 -> :sswitch_0
        -0x19537591 -> :sswitch_2
        -0x1689c514 -> :sswitch_6
        -0xcae2855 -> :sswitch_3
        -0x2a1370b -> :sswitch_7
        0x16bf744e -> :sswitch_a
        0x176f8ba1 -> :sswitch_8
        0x628cbc6f -> :sswitch_9
    .end sparse-switch
.end method
