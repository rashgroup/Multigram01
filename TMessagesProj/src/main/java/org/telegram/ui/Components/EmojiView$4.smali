.class Lorg/telegram/ui/Components/EmojiView$4;
.super Ljava/lang/Object;
.source "EmojiView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/EmojiView;-><init>(ZZLandroid/content/Context;)V
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
    .line 606
    iput-object p1, p0, Lorg/telegram/ui/Components/EmojiView$4;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "i"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 609
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    instance-of v2, p2, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-nez v2, :cond_1

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    invoke-static {}, Lorg/telegram/ui/StickerPreviewViewer;->getInstance()Lorg/telegram/ui/StickerPreviewViewer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/telegram/ui/StickerPreviewViewer;->reset()V

    move-object v0, p2

    .line 613
    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    .line 614
    .local v0, "cell":Lorg/telegram/ui/Cells/StickerEmojiCell;
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 617
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->disable()V

    .line 618
    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    .line 619
    .local v1, "document":Lorg/telegram/tgnet/TLRPC$Document;
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$4;->this$0:Lorg/telegram/ui/Components/EmojiView;

    invoke-virtual {v2, v1}, Lorg/telegram/ui/Components/EmojiView;->addRecentSticker(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 620
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$4;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 621
    iget-object v2, p0, Lorg/telegram/ui/Components/EmojiView$4;->this$0:Lorg/telegram/ui/Components/EmojiView;

    # getter for: Lorg/telegram/ui/Components/EmojiView;->listener:Lorg/telegram/ui/Components/EmojiView$Listener;
    invoke-static {v2}, Lorg/telegram/ui/Components/EmojiView;->access$1400(Lorg/telegram/ui/Components/EmojiView;)Lorg/telegram/ui/Components/EmojiView$Listener;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/telegram/ui/Components/EmojiView$Listener;->onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V

    goto :goto_0
.end method
