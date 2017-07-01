.class public final Lorg/telegram/messenger/exoplayer/metadata/id3/BinaryFrame;
.super Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Frame;
.source "BinaryFrame.java"


# instance fields
.field public final data:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/metadata/id3/Id3Frame;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/metadata/id3/BinaryFrame;->data:[B

    .line 28
    return-void
.end method
