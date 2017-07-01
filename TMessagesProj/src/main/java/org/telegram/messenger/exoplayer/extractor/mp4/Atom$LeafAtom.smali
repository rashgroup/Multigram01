.class final Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;
.super Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;
.source "Atom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LeafAtom"
.end annotation


# instance fields
.field public final data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;


# direct methods
.method public constructor <init>(ILorg/telegram/messenger/exoplayer/util/ParsableByteArray;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "data"    # Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .prologue
    .line 154
    invoke-direct {p0, p1}, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom;-><init>(I)V

    .line 155
    iput-object p2, p0, Lorg/telegram/messenger/exoplayer/extractor/mp4/Atom$LeafAtom;->data:Lorg/telegram/messenger/exoplayer/util/ParsableByteArray;

    .line 156
    return-void
.end method
