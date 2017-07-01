.class final Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;
.super Lorg/telegram/messenger/exoplayer/chunk/DataChunk;
.source "HlsChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPlaylistChunk"
.end annotation


# instance fields
.field private final playlistParser:Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;

.field private final playlistUrl:Ljava/lang/String;

.field private rawResponse:[B

.field private result:Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

.field public final variantIndex:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;[BLorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;ILjava/lang/String;)V
    .locals 8
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    .param p3, "scratchSpace"    # [B
    .param p4, "playlistParser"    # Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;
    .param p5, "variantIndex"    # I
    .param p6, "playlistUrl"    # Ljava/lang/String;

    .prologue
    .line 906
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lorg/telegram/messenger/exoplayer/chunk/DataChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;IILorg/telegram/messenger/exoplayer/chunk/Format;I[B)V

    .line 908
    iput p5, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->variantIndex:I

    .line 909
    iput-object p4, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->playlistParser:Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;

    .line 910
    iput-object p6, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->playlistUrl:Ljava/lang/String;

    .line 911
    return-void
.end method


# virtual methods
.method protected consume([BI)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 915
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->rawResponse:[B

    .line 916
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->playlistParser:Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->playlistUrl:Ljava/lang/String;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->rawResponse:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/messenger/exoplayer/hls/HlsPlaylistParser;->parse(Ljava/lang/String;Ljava/io/InputStream;)Lorg/telegram/messenger/exoplayer/hls/HlsPlaylist;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->result:Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    .line 918
    return-void
.end method

.method public getRawResponse()[B
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->rawResponse:[B

    return-object v0
.end method

.method public getResult()Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/hls/HlsChunkSource$MediaPlaylistChunk;->result:Lorg/telegram/messenger/exoplayer/hls/HlsMediaPlaylist;

    return-object v0
.end method
