.class public Lorg/telegram/messenger/video/MP4Builder;
.super Ljava/lang/Object;
.source "MP4Builder.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/telegram/messenger/video/MP4Builder$1;,
        Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;
    }
.end annotation


# instance fields
.field private currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

.field private dataOffset:J

.field private fc:Ljava/nio/channels/FileChannel;

.field private fos:Ljava/io/FileOutputStream;

.field private mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

.field private sizeBuffer:Ljava/nio/ByteBuffer;

.field private track2SampleSizes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/telegram/messenger/video/Track;",
            "[J>;"
        }
    .end annotation
.end field

.field private writeNewMdat:Z

.field private writedSinceLastMdat:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    .line 56
    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    .line 57
    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    .line 58
    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    .line 59
    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    .line 60
    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/messenger/video/MP4Builder;->writeNewMdat:Z

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->track2SampleSizes:Ljava/util/HashMap;

    .line 63
    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    .line 167
    return-void
.end method

.method private flushCurrentMdat()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 84
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    .line 85
    .local v0, "oldPosition":J
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getOffset()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 86
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    iget-object v3, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 87
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0, v1}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 88
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setDataOffset(J)V

    .line 89
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v2, v6, v7}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setContentSize(J)V

    .line 90
    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 91
    return-void
.end method

.method public static gcd(JJ)J
    .locals 2
    .param p0, "a"    # J
    .param p2, "b"    # J

    .prologue
    .line 233
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    .line 236
    .end local p0    # "a":J
    :goto_0
    return-wide p0

    .restart local p0    # "a":J
    :cond_0
    rem-long v0, p0, p2

    invoke-static {p2, p3, v0, v1}, Lorg/telegram/messenger/video/MP4Builder;->gcd(JJ)J

    move-result-wide p0

    goto :goto_0
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;Z)I
    .locals 1
    .param p1, "mediaFormat"    # Landroid/media/MediaFormat;
    .param p2, "isAudio"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/video/Mp4Movie;->addTrack(Landroid/media/MediaFormat;Z)I

    move-result v0

    return v0
.end method

.method protected createFileTypeBox()Lcom/coremedia/iso/boxes/FileTypeBox;
    .locals 6

    .prologue
    .line 161
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 162
    .local v0, "minorBrands":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const-string/jumbo v1, "isom"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 163
    const-string/jumbo v1, "3gp4"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Lcom/coremedia/iso/boxes/FileTypeBox;

    const-string/jumbo v2, "isom"

    const-wide/16 v4, 0x0

    invoke-direct {v1, v2, v4, v5, v0}, Lcom/coremedia/iso/boxes/FileTypeBox;-><init>(Ljava/lang/String;JLjava/util/List;)V

    return-object v1
.end method

.method public createMovie(Lorg/telegram/messenger/video/Mp4Movie;)Lorg/telegram/messenger/video/MP4Builder;
    .locals 6
    .param p1, "mp4Movie"    # Lorg/telegram/messenger/video/Mp4Movie;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    iput-object p1, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    .line 68
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getCacheFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    .line 69
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    .line 71
    invoke-virtual {p0}, Lorg/telegram/messenger/video/MP4Builder;->createFileTypeBox()Lcom/coremedia/iso/boxes/FileTypeBox;

    move-result-object v0

    .line 72
    .local v0, "fileTypeBox":Lcom/coremedia/iso/boxes/FileTypeBox;
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/FileTypeBox;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 73
    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/FileTypeBox;->getSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    .line 74
    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    .line 76
    new-instance v1, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;-><init>(Lorg/telegram/messenger/video/MP4Builder;Lorg/telegram/messenger/video/MP4Builder$1;)V

    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    .line 78
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    .line 80
    return-object p0
.end method

.method protected createMovieBox(Lorg/telegram/messenger/video/Mp4Movie;)Lcom/coremedia/iso/boxes/MovieBox;
    .locals 14
    .param p1, "movie"    # Lorg/telegram/messenger/video/Mp4Movie;

    .prologue
    .line 251
    new-instance v3, Lcom/coremedia/iso/boxes/MovieBox;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/MovieBox;-><init>()V

    .line 252
    .local v3, "movieBox":Lcom/coremedia/iso/boxes/MovieBox;
    new-instance v6, Lcom/coremedia/iso/boxes/MovieHeaderBox;

    invoke-direct {v6}, Lcom/coremedia/iso/boxes/MovieHeaderBox;-><init>()V

    .line 254
    .local v6, "mvhd":Lcom/coremedia/iso/boxes/MovieHeaderBox;
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v10}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 255
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6, v10}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 256
    sget-object v10, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v6, v10}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    .line 257
    invoke-virtual {p0, p1}, Lorg/telegram/messenger/video/MP4Builder;->getTimescale(Lorg/telegram/messenger/video/Mp4Movie;)J

    move-result-wide v4

    .line 258
    .local v4, "movieTimeScale":J
    const-wide/16 v0, 0x0

    .line 260
    .local v0, "duration":J
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/video/Track;

    .line 261
    .local v7, "track":Lorg/telegram/messenger/video/Track;
    invoke-virtual {v7}, Lorg/telegram/messenger/video/Track;->getDuration()J

    move-result-wide v10

    mul-long/2addr v10, v4

    invoke-virtual {v7}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v12

    int-to-long v12, v12

    div-long v8, v10, v12

    .line 262
    .local v8, "tracksDuration":J
    cmp-long v10, v8, v0

    if-lez v10, :cond_0

    .line 263
    move-wide v0, v8

    goto :goto_0

    .line 267
    .end local v7    # "track":Lorg/telegram/messenger/video/Track;
    .end local v8    # "tracksDuration":J
    :cond_1
    invoke-virtual {v6, v0, v1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setDuration(J)V

    .line 268
    invoke-virtual {v6, v4, v5}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setTimescale(J)V

    .line 269
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    int-to-long v10, v10

    invoke-virtual {v6, v10, v11}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->setNextTrackId(J)V

    .line 271
    invoke-virtual {v3, v6}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 272
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/telegram/messenger/video/Track;

    .line 273
    .restart local v7    # "track":Lorg/telegram/messenger/video/Track;
    invoke-virtual {p0, v7, p1}, Lorg/telegram/messenger/video/MP4Builder;->createTrackBox(Lorg/telegram/messenger/video/Track;Lorg/telegram/messenger/video/Mp4Movie;)Lcom/coremedia/iso/boxes/TrackBox;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/coremedia/iso/boxes/MovieBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    goto :goto_1

    .line 275
    .end local v7    # "track":Lorg/telegram/messenger/video/Track;
    :cond_2
    return-object v3
.end method

.method protected createStbl(Lorg/telegram/messenger/video/Track;)Lcom/coremedia/iso/boxes/Box;
    .locals 1
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;

    .prologue
    .line 335
    new-instance v0, Lcom/coremedia/iso/boxes/SampleTableBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;-><init>()V

    .line 337
    .local v0, "stbl":Lcom/coremedia/iso/boxes/SampleTableBox;
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStsd(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 338
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStts(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 339
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStss(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 340
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStsc(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 341
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStsz(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 342
    invoke-virtual {p0, p1, v0}, Lorg/telegram/messenger/video/MP4Builder;->createStco(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V

    .line 344
    return-object v0
.end method

.method protected createStco(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 12
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 424
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 425
    .local v2, "chunksOffsets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v4, -0x1

    .line 426
    .local v4, "lastOffset":J
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/messenger/video/Sample;

    .line 427
    .local v8, "sample":Lorg/telegram/messenger/video/Sample;
    invoke-virtual {v8}, Lorg/telegram/messenger/video/Sample;->getOffset()J

    move-result-wide v6

    .line 428
    .local v6, "offset":J
    const-wide/16 v10, -0x1

    cmp-long v10, v4, v10

    if-eqz v10, :cond_0

    cmp-long v10, v4, v6

    if-eqz v10, :cond_0

    .line 429
    const-wide/16 v4, -0x1

    .line 431
    :cond_0
    const-wide/16 v10, -0x1

    cmp-long v10, v4, v10

    if-nez v10, :cond_1

    .line 432
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    :cond_1
    invoke-virtual {v8}, Lorg/telegram/messenger/video/Sample;->getSize()J

    move-result-wide v10

    add-long v4, v6, v10

    .line 435
    goto :goto_0

    .line 436
    .end local v6    # "offset":J
    .end local v8    # "sample":Lorg/telegram/messenger/video/Sample;
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v1, v10, [J

    .line 437
    .local v1, "chunkOffsetsLong":[J
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v0, v10, :cond_3

    .line 438
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    aput-wide v10, v1, v0

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 441
    :cond_3
    new-instance v9, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;

    invoke-direct {v9}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;-><init>()V

    .line 442
    .local v9, "stco":Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;
    invoke-virtual {v9, v1}, Lcom/coremedia/iso/boxes/StaticChunkOffsetBox;->setChunkOffsets([J)V

    .line 443
    invoke-virtual {p2, v9}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 444
    return-void
.end method

.method protected createStsc(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 25
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 378
    new-instance v22, Lcom/coremedia/iso/boxes/SampleToChunkBox;

    invoke-direct/range {v22 .. v22}, Lcom/coremedia/iso/boxes/SampleToChunkBox;-><init>()V

    .line 379
    .local v22, "stsc":Lcom/coremedia/iso/boxes/SampleToChunkBox;
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->setEntries(Ljava/util/List;)V

    .line 382
    const/4 v10, 0x1

    .line 383
    .local v10, "lastChunkNumber":I
    const/4 v11, 0x0

    .line 385
    .local v11, "lastSampleCount":I
    const/4 v15, -0x1

    .line 387
    .local v15, "previousWritedChunkCount":I
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 388
    .local v19, "samplesCount":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_0
    move/from16 v0, v19

    if-ge v2, v0, :cond_4

    .line 389
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/telegram/messenger/video/Sample;

    .line 390
    .local v18, "sample":Lorg/telegram/messenger/video/Sample;
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/video/Sample;->getOffset()J

    move-result-wide v16

    .line 391
    .local v16, "offset":J
    invoke-virtual/range {v18 .. v18}, Lorg/telegram/messenger/video/Sample;->getSize()J

    move-result-wide v20

    .line 393
    .local v20, "size":J
    add-long v12, v16, v20

    .line 394
    .local v12, "lastOffset":J
    add-int/lit8 v11, v11, 0x1

    .line 396
    const/16 v23, 0x0

    .line 397
    .local v23, "write":Z
    add-int/lit8 v3, v19, -0x1

    if-eq v2, v3, :cond_3

    .line 398
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/telegram/messenger/video/Sample;

    .line 399
    .local v14, "nextSample":Lorg/telegram/messenger/video/Sample;
    invoke-virtual {v14}, Lorg/telegram/messenger/video/Sample;->getOffset()J

    move-result-wide v4

    cmp-long v3, v12, v4

    if-eqz v3, :cond_0

    .line 400
    const/16 v23, 0x1

    .line 405
    .end local v14    # "nextSample":Lorg/telegram/messenger/video/Sample;
    :cond_0
    :goto_1
    if-eqz v23, :cond_2

    .line 406
    if-eq v15, v11, :cond_1

    .line 407
    invoke-virtual/range {v22 .. v22}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->getEntries()Ljava/util/List;

    move-result-object v24

    new-instance v3, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;

    int-to-long v4, v10

    int-to-long v6, v11

    const-wide/16 v8, 0x1

    invoke-direct/range {v3 .. v9}, Lcom/coremedia/iso/boxes/SampleToChunkBox$Entry;-><init>(JJJ)V

    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    move v15, v11

    .line 410
    :cond_1
    const/4 v11, 0x0

    .line 411
    add-int/lit8 v10, v10, 0x1

    .line 388
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 403
    :cond_3
    const/16 v23, 0x1

    goto :goto_1

    .line 414
    .end local v12    # "lastOffset":J
    .end local v16    # "offset":J
    .end local v18    # "sample":Lorg/telegram/messenger/video/Sample;
    .end local v20    # "size":J
    .end local v23    # "write":Z
    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 415
    return-void
.end method

.method protected createStsd(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 1
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 348
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 349
    return-void
.end method

.method protected createStss(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 3
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 369
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSyncSamples()[J

    move-result-object v1

    .line 370
    .local v1, "syncSamples":[J
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 371
    new-instance v0, Lcom/coremedia/iso/boxes/SyncSampleBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SyncSampleBox;-><init>()V

    .line 372
    .local v0, "stss":Lcom/coremedia/iso/boxes/SyncSampleBox;
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SyncSampleBox;->setSampleNumber([J)V

    .line 373
    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 375
    .end local v0    # "stss":Lcom/coremedia/iso/boxes/SyncSampleBox;
    :cond_0
    return-void
.end method

.method protected createStsz(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 2
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    .line 418
    new-instance v0, Lcom/coremedia/iso/boxes/SampleSizeBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;-><init>()V

    .line 419
    .local v0, "stsz":Lcom/coremedia/iso/boxes/SampleSizeBox;
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/SampleSizeBox;->setSampleSizes([J)V

    .line 420
    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 421
    return-void
.end method

.method protected createStts(Lorg/telegram/messenger/video/Track;Lcom/coremedia/iso/boxes/SampleTableBox;)V
    .locals 10
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;
    .param p2, "stbl"    # Lcom/coremedia/iso/boxes/SampleTableBox;

    .prologue
    const-wide/16 v8, 0x1

    .line 352
    const/4 v4, 0x0

    .line 353
    .local v4, "lastEntry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;>;"
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Track;->getSampleDurations()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 356
    .local v0, "delta":J
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getDelta()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-nez v6, :cond_0

    .line 357
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->getCount()J

    move-result-wide v6

    add-long/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;->setCount(J)V

    goto :goto_0

    .line 359
    :cond_0
    new-instance v4, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    .end local v4    # "lastEntry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-direct {v4, v8, v9, v0, v1}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    .line 360
    .restart local v4    # "lastEntry":Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 363
    .end local v0    # "delta":J
    :cond_1
    new-instance v5, Lcom/coremedia/iso/boxes/TimeToSampleBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/TimeToSampleBox;-><init>()V

    .line 364
    .local v5, "stts":Lcom/coremedia/iso/boxes/TimeToSampleBox;
    invoke-virtual {v5, v2}, Lcom/coremedia/iso/boxes/TimeToSampleBox;->setEntries(Ljava/util/List;)V

    .line 365
    invoke-virtual {p2, v5}, Lcom/coremedia/iso/boxes/SampleTableBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 366
    return-void
.end method

.method protected createTrackBox(Lorg/telegram/messenger/video/Track;Lorg/telegram/messenger/video/Mp4Movie;)Lcom/coremedia/iso/boxes/TrackBox;
    .locals 16
    .param p1, "track"    # Lorg/telegram/messenger/video/Track;
    .param p2, "movie"    # Lorg/telegram/messenger/video/Mp4Movie;

    .prologue
    .line 279
    new-instance v10, Lcom/coremedia/iso/boxes/TrackBox;

    invoke-direct {v10}, Lcom/coremedia/iso/boxes/TrackBox;-><init>()V

    .line 280
    .local v10, "trackBox":Lcom/coremedia/iso/boxes/TrackBox;
    new-instance v9, Lcom/coremedia/iso/boxes/TrackHeaderBox;

    invoke-direct {v9}, Lcom/coremedia/iso/boxes/TrackHeaderBox;-><init>()V

    .line 282
    .local v9, "tkhd":Lcom/coremedia/iso/boxes/TrackHeaderBox;
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setEnabled(Z)V

    .line 283
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setInMovie(Z)V

    .line 284
    const/4 v12, 0x1

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setInPreview(Z)V

    .line 285
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->isAudio()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 286
    sget-object v12, Lcom/googlecode/mp4parser/util/Matrix;->ROTATE_0:Lcom/googlecode/mp4parser/util/Matrix;

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    .line 290
    :goto_0
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setAlternateGroup(I)V

    .line 291
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getCreationTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 292
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getDuration()J

    move-result-wide v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/video/MP4Builder;->getTimescale(Lorg/telegram/messenger/video/Mp4Movie;)J

    move-result-wide v14

    mul-long/2addr v12, v14

    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v14

    int-to-long v14, v14

    div-long/2addr v12, v14

    invoke-virtual {v9, v12, v13}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setDuration(J)V

    .line 293
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getHeight()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual {v9, v12, v13}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setHeight(D)V

    .line 294
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getWidth()I

    move-result v12

    int-to-double v12, v12

    invoke-virtual {v9, v12, v13}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setWidth(D)V

    .line 295
    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setLayer(I)V

    .line 296
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setModificationTime(Ljava/util/Date;)V

    .line 297
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getTrackId()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    invoke-virtual {v9, v12, v13}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setTrackId(J)V

    .line 298
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getVolume()F

    move-result v12

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setVolume(F)V

    .line 300
    invoke-virtual {v10, v9}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 302
    new-instance v6, Lcom/coremedia/iso/boxes/MediaBox;

    invoke-direct {v6}, Lcom/coremedia/iso/boxes/MediaBox;-><init>()V

    .line 303
    .local v6, "mdia":Lcom/coremedia/iso/boxes/MediaBox;
    invoke-virtual {v10, v6}, Lcom/coremedia/iso/boxes/TrackBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 304
    new-instance v5, Lcom/coremedia/iso/boxes/MediaHeaderBox;

    invoke-direct {v5}, Lcom/coremedia/iso/boxes/MediaHeaderBox;-><init>()V

    .line 305
    .local v5, "mdhd":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getCreationTime()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setCreationTime(Ljava/util/Date;)V

    .line 306
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getDuration()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setDuration(J)V

    .line 307
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v12

    int-to-long v12, v12

    invoke-virtual {v5, v12, v13}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setTimescale(J)V

    .line 308
    const-string/jumbo v12, "eng"

    invoke-virtual {v5, v12}, Lcom/coremedia/iso/boxes/MediaHeaderBox;->setLanguage(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v6, v5}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 310
    new-instance v4, Lcom/coremedia/iso/boxes/HandlerBox;

    invoke-direct {v4}, Lcom/coremedia/iso/boxes/HandlerBox;-><init>()V

    .line 311
    .local v4, "hdlr":Lcom/coremedia/iso/boxes/HandlerBox;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->isAudio()Z

    move-result v12

    if-eqz v12, :cond_1

    const-string/jumbo v12, "SoundHandle"

    :goto_1
    invoke-virtual {v4, v12}, Lcom/coremedia/iso/boxes/HandlerBox;->setName(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getHandler()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/coremedia/iso/boxes/HandlerBox;->setHandlerType(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v6, v4}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 316
    new-instance v7, Lcom/coremedia/iso/boxes/MediaInformationBox;

    invoke-direct {v7}, Lcom/coremedia/iso/boxes/MediaInformationBox;-><init>()V

    .line 317
    .local v7, "minf":Lcom/coremedia/iso/boxes/MediaInformationBox;
    invoke-virtual/range {p1 .. p1}, Lorg/telegram/messenger/video/Track;->getMediaHeaderBox()Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 319
    new-instance v2, Lcom/coremedia/iso/boxes/DataInformationBox;

    invoke-direct {v2}, Lcom/coremedia/iso/boxes/DataInformationBox;-><init>()V

    .line 320
    .local v2, "dinf":Lcom/coremedia/iso/boxes/DataInformationBox;
    new-instance v3, Lcom/coremedia/iso/boxes/DataReferenceBox;

    invoke-direct {v3}, Lcom/coremedia/iso/boxes/DataReferenceBox;-><init>()V

    .line 321
    .local v3, "dref":Lcom/coremedia/iso/boxes/DataReferenceBox;
    invoke-virtual {v2, v3}, Lcom/coremedia/iso/boxes/DataInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 322
    new-instance v11, Lcom/coremedia/iso/boxes/DataEntryUrlBox;

    invoke-direct {v11}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;-><init>()V

    .line 323
    .local v11, "url":Lcom/coremedia/iso/boxes/DataEntryUrlBox;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;->setFlags(I)V

    .line 324
    invoke-virtual {v3, v11}, Lcom/coremedia/iso/boxes/DataReferenceBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 325
    invoke-virtual {v7, v2}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 327
    invoke-virtual/range {p0 .. p1}, Lorg/telegram/messenger/video/MP4Builder;->createStbl(Lorg/telegram/messenger/video/Track;)Lcom/coremedia/iso/boxes/Box;

    move-result-object v8

    .line 328
    .local v8, "stbl":Lcom/coremedia/iso/boxes/Box;
    invoke-virtual {v7, v8}, Lcom/coremedia/iso/boxes/MediaInformationBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 329
    invoke-virtual {v6, v7}, Lcom/coremedia/iso/boxes/MediaBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 331
    return-object v10

    .line 288
    .end local v2    # "dinf":Lcom/coremedia/iso/boxes/DataInformationBox;
    .end local v3    # "dref":Lcom/coremedia/iso/boxes/DataReferenceBox;
    .end local v4    # "hdlr":Lcom/coremedia/iso/boxes/HandlerBox;
    .end local v5    # "mdhd":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .end local v6    # "mdia":Lcom/coremedia/iso/boxes/MediaBox;
    .end local v7    # "minf":Lcom/coremedia/iso/boxes/MediaInformationBox;
    .end local v8    # "stbl":Lcom/coremedia/iso/boxes/Box;
    .end local v11    # "url":Lcom/coremedia/iso/boxes/DataEntryUrlBox;
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lorg/telegram/messenger/video/Mp4Movie;->getMatrix()Lcom/googlecode/mp4parser/util/Matrix;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->setMatrix(Lcom/googlecode/mp4parser/util/Matrix;)V

    goto/16 :goto_0

    .line 311
    .restart local v4    # "hdlr":Lcom/coremedia/iso/boxes/HandlerBox;
    .restart local v5    # "mdhd":Lcom/coremedia/iso/boxes/MediaHeaderBox;
    .restart local v6    # "mdia":Lcom/coremedia/iso/boxes/MediaBox;
    :cond_1
    const-string/jumbo v12, "VideoHandle"

    goto :goto_1
.end method

.method public finishMovie(Z)V
    .locals 10
    .param p1, "error"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v6, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v6}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getContentSize()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 140
    invoke-direct {p0}, Lorg/telegram/messenger/video/MP4Builder;->flushCurrentMdat()V

    .line 143
    :cond_0
    iget-object v6, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    invoke-virtual {v6}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/telegram/messenger/video/Track;

    .line 144
    .local v5, "track":Lorg/telegram/messenger/video/Track;
    invoke-virtual {v5}, Lorg/telegram/messenger/video/Track;->getSamples()Ljava/util/ArrayList;

    move-result-object v3

    .line 145
    .local v3, "samples":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/video/Sample;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    new-array v4, v6, [J

    .line 146
    .local v4, "sizes":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v4

    if-ge v0, v6, :cond_1

    .line 147
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/messenger/video/Sample;

    invoke-virtual {v6}, Lorg/telegram/messenger/video/Sample;->getSize()J

    move-result-wide v6

    aput-wide v6, v4, v0

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    :cond_1
    iget-object v6, p0, Lorg/telegram/messenger/video/MP4Builder;->track2SampleSizes:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 152
    .end local v0    # "i":I
    .end local v3    # "samples":Ljava/util/List;, "Ljava/util/List<Lorg/telegram/messenger/video/Sample;>;"
    .end local v4    # "sizes":[J
    .end local v5    # "track":Lorg/telegram/messenger/video/Track;
    :cond_2
    iget-object v6, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    invoke-virtual {p0, v6}, Lorg/telegram/messenger/video/MP4Builder;->createMovieBox(Lorg/telegram/messenger/video/Mp4Movie;)Lcom/coremedia/iso/boxes/MovieBox;

    move-result-object v2

    .line 153
    .local v2, "moov":Lcom/coremedia/iso/boxes/Box;
    iget-object v6, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-interface {v2, v6}, Lcom/coremedia/iso/boxes/Box;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 154
    iget-object v6, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 156
    iget-object v6, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->close()V

    .line 157
    iget-object v6, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 158
    return-void
.end method

.method public getTimescale(Lorg/telegram/messenger/video/Mp4Movie;)J
    .locals 6
    .param p1, "mp4Movie"    # Lorg/telegram/messenger/video/Mp4Movie;

    .prologue
    .line 240
    const-wide/16 v2, 0x0

    .line 241
    .local v2, "timescale":J
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 242
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/telegram/messenger/video/Track;

    invoke-virtual {v4}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v4

    int-to-long v2, v4

    .line 244
    :cond_0
    invoke-virtual {p1}, Lorg/telegram/messenger/video/Mp4Movie;->getTracks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/telegram/messenger/video/Track;

    .line 245
    .local v1, "track":Lorg/telegram/messenger/video/Track;
    invoke-virtual {v1}, Lorg/telegram/messenger/video/Track;->getTimeScale()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5, v2, v3}, Lorg/telegram/messenger/video/MP4Builder;->gcd(JJ)J

    move-result-wide v2

    .line 246
    goto :goto_0

    .line 247
    .end local v1    # "track":Lorg/telegram/messenger/video/Track;
    :cond_1
    return-wide v2
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)Z
    .locals 10
    .param p1, "trackIndex"    # I
    .param p2, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;
    .param p4, "isAudio"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-wide/32 v8, 0x8000

    const-wide/16 v6, 0x10

    const/4 v2, 0x0

    .line 94
    iget-boolean v1, p0, Lorg/telegram/messenger/video/MP4Builder;->writeNewMdat:Z

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setContentSize(J)V

    .line 96
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    iget-object v3, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    .line 97
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setDataOffset(J)V

    .line 98
    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    .line 99
    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    .line 100
    iput-boolean v2, p0, Lorg/telegram/messenger/video/MP4Builder;->writeNewMdat:Z

    .line 103
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    iget-object v3, p0, Lorg/telegram/messenger/video/MP4Builder;->mdat:Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;

    invoke-virtual {v3}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->getContentSize()J

    move-result-wide v4

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v1, v4, v5}, Lorg/telegram/messenger/video/MP4Builder$InterleaveChunkMdat;->setContentSize(J)V

    .line 104
    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "flush":Z
    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    cmp-long v1, v4, v8

    if-ltz v1, :cond_1

    .line 108
    invoke-direct {p0}, Lorg/telegram/messenger/video/MP4Builder;->flushCurrentMdat()V

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/telegram/messenger/video/MP4Builder;->writeNewMdat:Z

    .line 110
    const/4 v0, 0x1

    .line 111
    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    sub-long/2addr v4, v8

    iput-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->writedSinceLastMdat:J

    .line 114
    :cond_1
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->currentMp4Movie:Lorg/telegram/messenger/video/Mp4Movie;

    iget-wide v4, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    invoke-virtual {v1, p1, v4, v5, p3}, Lorg/telegram/messenger/video/Mp4Movie;->addSample(IJLandroid/media/MediaCodec$BufferInfo;)V

    .line 115
    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    if-eqz p4, :cond_4

    move v1, v2

    :goto_0
    add-int/2addr v1, v3

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v3

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 118
    if-nez p4, :cond_2

    .line 119
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 120
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 121
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 122
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    iget-object v2, p0, Lorg/telegram/messenger/video/MP4Builder;->sizeBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 125
    :cond_2
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fc:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, p2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 126
    iget-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/telegram/messenger/video/MP4Builder;->dataOffset:J

    .line 128
    if-eqz v0, :cond_3

    .line 129
    iget-object v1, p0, Lorg/telegram/messenger/video/MP4Builder;->fos:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 131
    :cond_3
    return v0

    .line 115
    :cond_4
    const/4 v1, 0x4

    goto :goto_0
.end method
