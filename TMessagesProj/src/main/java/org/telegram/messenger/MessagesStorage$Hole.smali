.class Lorg/telegram/messenger/MessagesStorage$Hole;
.super Ljava/lang/Object;
.source "MessagesStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/MessagesStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Hole"
.end annotation


# instance fields
.field public end:I

.field public start:I

.field final synthetic this$0:Lorg/telegram/messenger/MessagesStorage;

.field public type:I


# direct methods
.method public constructor <init>(Lorg/telegram/messenger/MessagesStorage;II)V
    .locals 0
    .param p2, "s"    # I
    .param p3, "e"    # I

    .prologue
    .line 4974
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4975
    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    .line 4976
    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    .line 4977
    return-void
.end method

.method public constructor <init>(Lorg/telegram/messenger/MessagesStorage;III)V
    .locals 0
    .param p2, "t"    # I
    .param p3, "s"    # I
    .param p4, "e"    # I

    .prologue
    .line 4979
    iput-object p1, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->this$0:Lorg/telegram/messenger/MessagesStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4980
    iput p2, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->type:I

    .line 4981
    iput p3, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->start:I

    .line 4982
    iput p4, p0, Lorg/telegram/messenger/MessagesStorage$Hole;->end:I

    .line 4983
    return-void
.end method
