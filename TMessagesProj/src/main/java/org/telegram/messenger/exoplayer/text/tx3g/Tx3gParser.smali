.class public final Lorg/telegram/messenger/exoplayer/text/tx3g/Tx3gParser;
.super Ljava/lang/Object;
.source "Tx3gParser.java"

# interfaces
.implements Lorg/telegram/messenger/exoplayer/text/SubtitleParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canParse(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 32
    const-string/jumbo v0, "application/x-quicktime-tx3g"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public parse([BII)Lorg/telegram/messenger/exoplayer/text/Subtitle;
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([BII)V

    .line 38
    .local v0, "cueText":Ljava/lang/String;
    new-instance v1, Lorg/telegram/messenger/exoplayer/text/tx3g/Tx3gSubtitle;

    new-instance v2, Lorg/telegram/messenger/exoplayer/text/Cue;

    invoke-direct {v2, v0}, Lorg/telegram/messenger/exoplayer/text/Cue;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v1, v2}, Lorg/telegram/messenger/exoplayer/text/tx3g/Tx3gSubtitle;-><init>(Lorg/telegram/messenger/exoplayer/text/Cue;)V

    return-object v1
.end method
