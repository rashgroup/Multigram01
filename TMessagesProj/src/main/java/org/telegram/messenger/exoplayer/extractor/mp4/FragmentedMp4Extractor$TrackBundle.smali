.class final Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;
.super Ljava/lang/Object;
.source "FragmentedMp4Extractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TrackBundle"
.end annotation


# instance fields
.field public currentSampleIndex:I

.field public defaultSampleValues:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

.field public final fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

.field public final output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

.field public track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;)V
    .locals 1
    .param p1, "output"    # Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    .prologue
    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    new-instance v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    invoke-direct {v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;-><init>()V

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    .line 1002
    iput-object p1, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    .line 1003
    return-void
.end method


# virtual methods
.method public init(Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;)V
    .locals 2
    .param p1, "track"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;
    .param p2, "defaultSampleValues"    # Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    .prologue
    .line 1006
    invoke-static {p1}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->track:Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;

    .line 1007
    invoke-static {p2}, Lorg/telegram/messenger/exoplayer/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    iput-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->defaultSampleValues:Lorg/telegram/messenger/exoplayer/extractor/mp4/DefaultSampleValues;

    .line 1008
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->output:Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;

    iget-object v1, p1, Lorg/telegram/messenger/exoplayer/extractor/mp4/Track;->mediaFormat:Lorg/telegram/messenger/exoplayer/MediaFormat;

    invoke-interface {v0, v1}, Lorg/telegram/messenger/exoplayer/extractor/TrackOutput;->format(Lorg/telegram/messenger/exoplayer/MediaFormat;)V

    .line 1009
    invoke-virtual {p0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->reset()V

    .line 1010
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->fragment:Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;

    invoke-virtual {v0}, Lorg/telegram/messenger/exoplayer/extractor/mp4/TrackFragment;->reset()V

    .line 1014
    const/4 v0, 0x0

    iput v0, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/FragmentedMp4Extractor$TrackBundle;->currentSampleIndex:I

    .line 1015
    return-void
.end method
