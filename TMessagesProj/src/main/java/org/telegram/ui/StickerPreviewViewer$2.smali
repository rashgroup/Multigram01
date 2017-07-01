.class Lorg/telegram/ui/StickerPreviewViewer$2;
.super Ljava/lang/Object;
.source "StickerPreviewViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/StickerPreviewViewer;->onInterceptTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/StickerPreviewViewer;

.field final synthetic val$height:I

.field final synthetic val$listView:Landroid/view/View;


# direct methods
.method constructor <init>(Lorg/telegram/ui/StickerPreviewViewer;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iput-object p2, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$listView:Landroid/view/View;

    iput p3, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 251
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$100(Lorg/telegram/ui/StickerPreviewViewer;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$listView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$listView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 256
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$listView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 261
    :cond_2
    :goto_1
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # setter for: Lorg/telegram/ui/StickerPreviewViewer;->openStickerPreviewRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer;->access$102(Lorg/telegram/ui/StickerPreviewViewer;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 262
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$listView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lorg/telegram/ui/StickerPreviewViewer;->setParentActivity(Landroid/app/Activity;)V

    .line 263
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iget v1, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$height:I

    invoke-virtual {v0, v1}, Lorg/telegram/ui/StickerPreviewViewer;->setKeyboardHeight(I)V

    .line 264
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$200(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    if-eqz v0, :cond_4

    .line 265
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$200(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerEmojiCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 266
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$200(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerEmojiCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/StickerEmojiCell;->setScaled(Z)V

    goto :goto_0

    .line 257
    :cond_3
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$listView:Landroid/view/View;

    instance-of v0, v0, Lorg/telegram/ui/Components/RecyclerListView;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$listView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/RecyclerListView;->setOnItemClickListener(Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;)V

    .line 259
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->val$listView:Landroid/view/View;

    check-cast v0, Lorg/telegram/ui/Components/RecyclerListView;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/RecyclerListView;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    .line 267
    :cond_4
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$200(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/StickerCell;

    if-eqz v0, :cond_5

    .line 268
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$200(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/StickerCell;->getSticker()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 269
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$200(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/StickerCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/StickerCell;->setScaled(Z)V

    goto/16 :goto_0

    .line 270
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$200(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    if-eqz v0, :cond_0

    .line 271
    iget-object v1, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$200(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0}, Lorg/telegram/ui/Cells/ContextLinkCell;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/telegram/ui/StickerPreviewViewer;->open(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 272
    iget-object v0, p0, Lorg/telegram/ui/StickerPreviewViewer$2;->this$0:Lorg/telegram/ui/StickerPreviewViewer;

    # getter for: Lorg/telegram/ui/StickerPreviewViewer;->currentStickerPreviewCell:Landroid/view/View;
    invoke-static {v0}, Lorg/telegram/ui/StickerPreviewViewer;->access$200(Lorg/telegram/ui/StickerPreviewViewer;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/telegram/ui/Cells/ContextLinkCell;

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Cells/ContextLinkCell;->setScaled(Z)V

    goto/16 :goto_0
.end method
