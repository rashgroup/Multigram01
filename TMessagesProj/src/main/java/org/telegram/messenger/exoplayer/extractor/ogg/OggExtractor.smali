.class public Lorg/telegram/messenger/exoplayer/extractor/ogg/OggExtractor;
.super Ljava/lang/Object;
.source "OggExtractor.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/extractor/Extractor;


# instance fields
.field private streamReader:Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;)V
    .locals 2
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;

    .prologue
    .line 66
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->track(I)Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    move-result-object v0

    .line 67
    .local v0, "trackOutput":Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;
    invoke-interface {p1}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;->endTracks()V

    .line 68
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;

    invoke-virtual {v1, p1, v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;->init(Lorg/telegram/messenger/exoplayer/extractor/ExtractorOutput;Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V

    .line 69
    return-void
.end method

.method public read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I
    .locals 1
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .param p2, "seekPosition"    # Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;->read(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/PositionHolder;)I

    move-result v0

    return v0
.end method

.method public release()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method

.method public seek()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;->seek()V

    .line 74
    return-void
.end method

.method public sniff(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;)Z
    .locals 7
    .param p1, "input"    # Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x7

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    :try_start_0
    new-instance v1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    const/16 v4, 0x1b

    new-array v4, v4, [B

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;-><init>([BI)V

    .line 39
    .local v1, "scratch":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;-><init>()V

    .line 40
    .local v0, "header":Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;
    const/4 v4, 0x1

    invoke-static {p1, v0, v1, v4}, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil;->populatePageHeader(Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->type:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget v4, v0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;->bodySize:I

    if-ge v4, v6, :cond_1

    .line 61
    .end local v0    # "header":Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;
    .end local v1    # "scratch":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    :cond_0
    :goto_0
    return v2

    .line 44
    .restart local v0    # "header":Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;
    .restart local v1    # "scratch":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    :cond_1
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset()V

    .line 45
    iget-object v4, v1, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->data:[B

    const/4 v5, 0x0

    const/4 v6, 0x7

    invoke-interface {p1, v4, v5, v6}, Lorg/telegram/messenger/exoplayer/extractor/ExtractorInput;->peekFully([BII)V

    .line 46
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;->verifyBitstreamType(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 47
    new-instance v4, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;

    invoke-direct {v4}, Lorg/telegram/messenger/exoplayer/extractor/ogg/FlacReader;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;

    :goto_1
    move v2, v3

    .line 56
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {v1}, Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;->reset()V

    .line 50
    invoke-static {v1}, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;->verifyBitstreamType(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    new-instance v4, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;

    invoke-direct {v4}, Lorg/telegram/messenger/exoplayer/extractor/ogg/VorbisReader;-><init>()V

    iput-object v4, p0, Lorg/telegram/messenger/exoplayer/extractor/ogg/OggExtractor;->streamReader:Lorg/telegram/messenger/exoplayer/extractor/ogg/StreamReader;
    :try_end_0
    .catch Lorg/telegram/messenger/exoplayer/ParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 57
    .end local v0    # "header":Lorg/telegram/messenger/exoplayer/extractor/ogg/OggUtil$PageHeader;
    .end local v1    # "scratch":Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v2

    throw v2
.end method
