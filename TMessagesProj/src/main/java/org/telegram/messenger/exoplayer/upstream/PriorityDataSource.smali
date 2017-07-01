.class public final Lorg/telegram/messenger/exoplayer/upstream/PriorityDataSource;
.super Ljava/lang/Object;
.source "PriorityDataSource.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/upstream/DataSource;


# instance fields
.field private final priority:I

.field private final upstream:Lorg/telegram/messenger/exoplayer/upstream/DataSource;


# direct methods
.method public constructor <init>(ILorg/telegram/messenger/exoplayer/upstream/DataSource;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "upstream"    # Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lorg/telegram/messenger/exoplayer/upstream/PriorityDataSource;->priority:I

    .line 38
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/PriorityDataSource;->upstream:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    .line 39
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/PriorityDataSource;->upstream:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v0}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->close()V

    .line 56
    return-void
.end method

.method public open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J
    .locals 2
    .param p1, "dataSpec"    # Lorg/telegram/messenger/exoplayer/upstream/DataSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    sget-object v0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->instance:Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/upstream/PriorityDataSource;->priority:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->proceedOrThrow(I)V

    .line 44
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/PriorityDataSource;->upstream:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v0, p1}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->open(Lorg/telegram/messenger/exoplayer/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0
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
    .line 49
    sget-object v0, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->instance:Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;

    iget v1, p0, Lorg/telegram/messenger/exoplayer/upstream/PriorityDataSource;->priority:I

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/exoplayer/upstream/NetworkLock;->proceedOrThrow(I)V

    .line 50
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/upstream/PriorityDataSource;->upstream:Lorg/telegram/messenger/exoplayer/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lorg/telegram/messenger/exoplayer/upstream/DataSource;->read([BII)I

    move-result v0

    return v0
.end method
