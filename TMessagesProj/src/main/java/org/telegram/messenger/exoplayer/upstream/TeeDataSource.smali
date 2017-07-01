.class public final Lorg/telegram/messenger/exoplayer/upstream/TeeDataSource;
.super Ljava/lang/Object;
.source "TeeDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/DataSource;


# instance fields
.field private final dataSink:Lorg/telegram/messenger/exoplayer/upstream/DataSink;

.field private final upstream:Lorg/telegram/messenger/exoplayer/upstream/DataSource;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/upstream/DataSource;Lorg/telegram/messenger/exoplayer/upstream/DataSink;)V
    .locals 1
    .param p1, "upstream"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;
    .param p2, "dataSink"    # Lorg/telegram/messenger/exoplayer/upstream/DataSink;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/TeeDataSource;->upstream:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    .line 37
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/upstream/DataSink;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/TeeDataSource;->dataSink:Lorg/telegram/messenger/exoplayer/upstream/DataSink;

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/TeeDataSource;->upstream:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/TeeDataSource;->dataSink:Lorg/telegram/messenger/exoplayer/upstream/DataSink;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/upstream/DataSink;->close()V

    .line 69
    return-void

    .line 67
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/TeeDataSource;->dataSink:Lorg/telegram/messenger/exoplayer/upstream/DataSink;

    invoke-interface {v1}, Lorg/telegram/messenger/exoplayer/upstream/DataSink;->close()V

    throw v0
.end method

.method public open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J
    .locals 10
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 42
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/TeeDataSource;->upstream:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v1, p1}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J

    move-result-wide v6

    .line 43
    .local v6, "dataLength":J
    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->length:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    cmp-long v1, v6, v4

    if-eqz v1, :cond_0

    .line 45
    new-instance v0, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-wide v2, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->absoluteStreamPosition:J

    iget-wide v4, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->position:J

    iget-object v8, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->key:Ljava/lang/String;

    iget v9, p1, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;->flags:I

    invoke-direct/range {v0 .. v9}, Lorg/telegram/messenger/exoplayer/upstream/DataSpec;-><init>(Landroid/net/Uri;JJJLjava/lang/String;I)V

    .end local p1    # "dataSpec":Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    .local v0, "dataSpec":Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    move-object p1, v0

    .line 48
    .end local v0    # "dataSpec":Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    .restart local p1    # "dataSpec":Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    :cond_0
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/TeeDataSource;->dataSink:Lorg/telegram/messenger/exoplayer/upstream/DataSink;

    invoke-interface {v1, p1}, Lorg/telegram/messenger/exoplayer/upstream/DataSink;->open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)Lorg/telegram/messenger/exoplayer/upstream/DataSink;

    .line 49
    return-wide v6
.end method

.method public read([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/TeeDataSource;->upstream:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v1, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    .line 55
    .local v0, "num":I
    if-lez v0, :cond_0

    .line 57
    iget-object v1, p0, Lorg/telegram/messenger/exoplayer/upstream/TeeDataSource;->dataSink:Lorg/telegram/messenger/exoplayer/upstream/DataSink;

    invoke-interface {v1, p1, p2, v0}, Lorg/telegram/messenger/exoplayer/upstream/DataSink;->write([BII)V

    .line 59
    :cond_0
    return v0
.end method
