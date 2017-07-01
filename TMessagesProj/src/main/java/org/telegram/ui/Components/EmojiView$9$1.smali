.class Lorg/telegram/ui/Components/EmojiView$9$1;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView$9;->onItemClick(Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Components/EmojiView$9;

.field final synthetic val$searchImage:Lorg/telegram/messenger/MediaController$SearchImage;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/EmojiView$9;Lorg/telegram/messenger/MediaController$SearchImage;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$9$1;->this$1:Lorg/telegram/ui/Components/EmojiView$9;

    iput-object p2, p0, Lorg/telegram/ui/Components/EmojiView$9$1;->val$searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 698
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$9$1;->this$1:Lorg/telegram/ui/Components/EmojiView$9;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$9$1;->val$searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 699
    new-instance v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;

    invoke-direct {v0}, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;-><init>()V

    .line 700
    .local v0, "req":Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;
    new-instance v1, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;

    invoke-direct {v1}, Lorg/telegram/tgnet/TLRPC$TL_inputDocument;-><init>()V

    iput-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    .line 701
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$9$1;->val$searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->id:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->id:J

    .line 702
    iget-object v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->id:Lorg/telegram/tgnet/TLRPC$InputDocument;

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$9$1;->val$searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    iget-object v2, v2, Lorg/telegram/messenger/MediaController$SearchImage;->document:Lorg/telegram/tgnet/TLRPC$Document;

    iget-wide v2, v2, Lorg/telegram/tgnet/TLRPC$Document;->access_hash:J

    iput-wide v2, v1, Lorg/telegram/tgnet/TLRPC$InputDocument;->access_hash:J

    .line 703
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/telegram/tgnet/TLRPC$TL_messages_saveGif;->unsave:Z

    .line 704
    invoke-static {}, Lorg/telegram/tgnet/ConnectionsManager;->getInstance()Lorg/telegram/tgnet/ConnectionsManager;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/EmojiView$9$1$1;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/EmojiView$9$1$1;-><init>(Lorg/telegram/ui/Components/EmojiView$9$1;)V

    invoke-virtual {v1, v0, v2}, Lorg/telegram/tgnet/ConnectionsManager;->sendRequest(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/RequestDelegate;)I

    .line 710
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$9$1;->val$searchImage:Lorg/telegram/messenger/MediaController$SearchImage;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesStorage;->removeWebRecent(Lorg/telegram/messenger/MediaController$SearchImage;)V

    .line 711
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$9$1;->this$1:Lorg/telegram/ui/Components/EmojiView$9;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 712
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$9$1;->this$1:Lorg/telegram/ui/Components/EmojiView$9;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->gifsAdapter:Lorg/telegram/ui/Components/EmojiView$GifsAdapter;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2800(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$GifsAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EmojiView$GifsAdapter;->notifyDataSetChanged()V

    .line 714
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$9$1;->this$1:Lorg/telegram/ui/Components/EmojiView$9;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->recentImages:Ljava/util/ArrayList;
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2600(Lorg/telegram/ui/Components/EmojiView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 715
    iget-object v1, p0, Lorg/telegram/ui/Components/EmojiView$9$1;->this$1:Lorg/telegram/ui/Components/EmojiView$9;

    iget-object v1, v1, Lorg/telegram/ui/Components/EmojiView$9;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # invokes: Lorg/telegram/ui/Components/EmojiView;->updateStickerTabs()V
    invoke-static {v1}, Lorg/telegram/ui/Components/EmojiView;->access$2900(Lorg/telegram/ui/Components/EmojiView;)V

    .line 717
    :cond_1
    return-void
.end method
