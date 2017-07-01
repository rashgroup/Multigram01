.class public abstract Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;
.super Lorg/telegram/messenger/exoplayer/chunk/Chunk;
.source "MediaChunk.java"


# instance fields
.field public final chunkIndex:I

.field public final endTimeUs:J

.field public final startTimeUs:J


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJI)V
    .locals 13
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    .param p3, "trigger"    # I
    .param p4, "format"    # Lorg/telegram/messenger/exoplayer/chunk/Format;
    .param p5, "startTimeUs"    # J
    .param p7, "endTimeUs"    # J
    .param p9, "chunkIndex"    # I

    .prologue
    .line 42
    const/4 v11, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJII)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;ILorg/telegram/messenger/exoplayer/chunk/Format;JJII)V
    .locals 11
    .param p1, "dataSource"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p2, "dataSpec"    # Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    .param p3, "trigger"    # I
    .param p4, "format"    # Lorg/telegram/messenger/exoplayer/chunk/Format;
    .param p5, "startTimeUs"    # J
    .param p7, "endTimeUs"    # J
    .param p9, "chunkIndex"    # I
    .param p10, "parentId"    # I

    .prologue
    .line 62
    const/4 v5, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p3

    move-object v7, p4

    move/from16 v8, p10

    invoke-direct/range {v2 .. v8}, Lorg/telegram/messenger/exoplayer/chunk/Chunk;-><init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSpec;IILorg/telegram/messenger/exoplayer/chunk/Format;I)V

    .line 63
    invoke-static {p4}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    move-wide/from16 v0, p5

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->startTimeUs:J

    .line 65
    move-wide/from16 v0, p7

    iput-wide v0, p0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->endTimeUs:J

    .line 66
    move/from16 v0, p9

    iput v0, p0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->chunkIndex:I

    .line 67
    return-void
.end method


# virtual methods
.method public getNextChunkIndex()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lorg/telegram/messenger/exoplayer/chunk/MediaChunk;->chunkIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
