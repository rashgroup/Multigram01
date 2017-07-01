.class public Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
.super Lorg/telegram/tgnet/TLObject;
.source "TLRPC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/tgnet/TLRPC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocumentAttribute"
.end annotation


# instance fields
.field public alt:Ljava/lang/String;

.field public duration:I

.field public file_name:Ljava/lang/String;

.field public flags:I

.field public h:I

.field public performer:Ljava/lang/String;

.field public stickerset:Lorg/telegram/tgnet/TLRPC$InputStickerSet;

.field public title:Ljava/lang/String;

.field public voice:Z

.field public w:I

.field public waveform:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0}, Lorg/telegram/tgnet/TLObject;-><init>()V

    return-void
.end method

.method public static TLdeserialize(Lorg/telegram/tgnet/AbstractSerializedData;IZ)Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    .locals 6
    .param p0, "stream"    # Lorg/telegram/tgnet/AbstractSerializedData;
    .param p1, "constructor"    # I
    .param p2, "exception"    # Z

    .prologue
    .line 524
    const/4 v0, 0x0

    .line 525
    .local v0, "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    sparse-switch p1, :sswitch_data_0

    .line 557
    :goto_0
    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 558
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "can\'t parse magic %x in DocumentAttribute"

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

    .line 527
    :sswitch_0
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAnimated;-><init>()V

    .line 528
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_0

    .line 530
    :sswitch_1
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_old;-><init>()V

    .line 531
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_0

    .line 533
    :sswitch_2
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeImageSize;-><init>()V

    .line 534
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_0

    .line 536
    :sswitch_3
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_old;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_old;-><init>()V

    .line 537
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_0

    .line 539
    :sswitch_4
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker;-><init>()V

    .line 540
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_0

    .line 542
    :sswitch_5
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeVideo;-><init>()V

    .line 543
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_0

    .line 545
    :sswitch_6
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;-><init>()V

    .line 546
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_0

    .line 548
    :sswitch_7
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_old2;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeSticker_old2;-><init>()V

    .line 549
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_0

    .line 551
    :sswitch_8
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeFilename;-><init>()V

    .line 552
    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_0

    .line 554
    :sswitch_9
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_layer45;

    .end local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio_layer45;-><init>()V

    .restart local v0    # "result":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    goto :goto_0

    .line 560
    :cond_0
    if-eqz v0, :cond_1

    .line 561
    invoke-virtual {v0, p0, p2}, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->readParams(Lorg/telegram/tgnet/AbstractSerializedData;Z)V

    .line 563
    :cond_1
    return-object v0

    .line 525
    nop

    :sswitch_data_0
    .sparse-switch
        -0x67ad063a -> :sswitch_6
        -0x66b3677e -> :sswitch_7
        -0x212de720 -> :sswitch_9
        -0x4f5a8d9 -> :sswitch_1
        0x51448e5 -> :sswitch_3
        0x11b58939 -> :sswitch_0
        0x15590068 -> :sswitch_8
        0x3a556302 -> :sswitch_4
        0x5910cccb -> :sswitch_5
        0x6c37c15c -> :sswitch_2
    .end sparse-switch
.end method
