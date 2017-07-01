.class abstract Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader;
.super Ljava/lang/Object;
.source "TagPayloadReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader$UnsupportedFormatException;
    }
.end annotation


# instance fields
.field private durationUs:J

.field protected final output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;


# direct methods
.method protected constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 2
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    .line 48
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader;->durationUs:J

    .line 49
    return-void
.end method


# virtual methods
.method public final consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)V
    .locals 2
    .param p1, "data"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    .param p2, "timeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader;->parseHeader(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader;->parsePayload(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)V

    .line 89
    :cond_0
    return-void
.end method

.method public final getDurationUs()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader;->durationUs:J

    return-wide v0
.end method

.method protected abstract parseHeader(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation
.end method

.method protected abstract parsePayload(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/telegram/messenger/exoplayer/ParserException;
        }
    .end annotation
.end method

.method public abstract seek()V
.end method

.method public final setDurationUs(J)V
    .locals 1
    .param p1, "durationUs"    # J

    .prologue
    .line 57
    iput-wide p1, p0, Lorg/telegram/messenger/exoplayer/extractor/flv/TagPayloadReader;->durationUs:J

    .line 58
    return-void
.end method
