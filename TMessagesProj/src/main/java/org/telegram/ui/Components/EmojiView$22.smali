.class Lorg/telegram/ui/Components/EmojiView$22;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;->loadRecentGif()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/EmojiView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView;)V
    .locals 0

    .prologue
    .line 1568
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$22;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 10
    .param p1, "response"    # Lorg/telegram/tgnet/TLObject;
    .param p2, "error"    # Lorg/telegram/tgnet/TLRPC$TL_error;

    .prologue
    .line 1571
    const/4 v1, 0x0

    .line 1572
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    instance-of v6, p1, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;

    if-eqz v6, :cond_0

    .line 1573
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1    # "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    move-object v3, p1

    .line 1574
    check-cast v3, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;

    .line 1575
    .local v3, "res":Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;->gifs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1576
    .local v5, "size":I
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 1577
    new-instance v4, Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-direct {v4}, Lorg/telegram/messenger/MediaController$SearchImage;-><init>()V

    .line 1578
    .local v4, "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    const/4 v6, 0x2

    iput v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->type:I

    .line 1579
    iget-object v6, v3, Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;->gifs:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/telegram/tgnet/TLRPC$Document;

    iput-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    .line 1580
    sub-int v6, v5, v0

    iput v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->date:I

    .line 1581
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v8, v7, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lorg/telegram/messenger/MediaController$SearchImage;->id:Ljava/lang/String;

    .line 1582
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/telegram/messenger/MessagesStorage;->putWebRecent(Ljava/util/ArrayList;)V

    .line 1576
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1586
    .end local v0    # "a":I
    .end local v3    # "res":Lorg/telegram/tgnet/TLRPC$TL_messages_savedGifs;
    .end local v4    # "searchImage":Lorg/telegram/messenger/MediaController$SearchImage;
    .end local v5    # "size":I
    :cond_0
    move-object v2, v1

    .line 1587
    .local v2, "arrayListFinal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/telegram/messenger/MediaController$SearchImage;>;"
    new-instance v6, Lorg/telegram/ui/Components/EmojiView$22$1;

    invoke-direct {v6, p0, v2}, Lorg/telegram/ui/Components/EmojiView$22$1;-><init>(Lorg/telegram/ui/Components/EmojiView$22;Ljava/util/ArrayList;)V

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    .line 1606
    return-void
.end method
