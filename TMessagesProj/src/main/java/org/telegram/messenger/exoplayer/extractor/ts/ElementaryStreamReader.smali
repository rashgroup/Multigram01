.class abstract Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;
.super Ljava/lang/Object;
.source "ElementaryStreamReader.java"


# instance fields
.field protected final output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;


# direct methods
.method protected constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 0
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/ts/ElementaryStreamReader;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    .line 33
    return-void
.end method


# virtual methods
.method public abstract consume(Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
.end method

.method public abstract packetFinished()V
.end method

.method public abstract packetStarted(JZ)V
.end method

.method public abstract seek()V
.end method
