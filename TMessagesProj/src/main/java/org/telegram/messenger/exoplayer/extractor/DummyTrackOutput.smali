.class public Lorg/telegram/messenger/exoplayer/extractor/DummyTrackOutput;
.super Ljava/lang/Object;
.source "DummyTrackOutput.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V
    .locals 0
    .param p1, "format"    # Lorg/telegram/messenger/exoplayer/MediaFormat;

    .prologue
    .line 30
    return-void
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;IZ)I
    .locals 1
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .param p2, "length"    # I
    .param p3, "allowEndOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-interface {p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->skip(I)I

    move-result v0

    return v0
.end method

.method public sampleData(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;I)V
    .locals 0
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p2, "length"    # I

    .prologue
    .line 40
    invoke-virtual {p1, p2}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->skipBytes(I)V

    .line 41
    return-void
.end method

.method public sampleMetadata(JIII[B)V
    .locals 0
    .param p1, "timeUs"    # J
    .param p3, "flags"    # I
    .param p4, "size"    # I
    .param p5, "offset"    # I
    .param p6, "encryptionKey"    # [B

    .prologue
    .line 46
    return-void
.end method
