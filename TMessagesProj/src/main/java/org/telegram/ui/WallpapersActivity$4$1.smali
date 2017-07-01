.class Lorg/telegram/ui/WallpapersActivity$4$1;
.super Ljava/lang/Object;
.source "WallpapersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WallpapersActivity$4;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/WallpapersActivity$4;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WallpapersActivity$4;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity$4$1;->this$1:Lorg/telegram/ui/WallpapersActivity$4;

    iput-object p2, p0, Lorg/telegram/ui/WallpapersActivity$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 447
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$4$1;->this$1:Lorg/telegram/ui/WallpapersActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/WallpapersActivity;->access$400(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 448
    iget-object v2, p0, Lorg/telegram/ui/WallpapersActivity$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$Vector;

    .line 449
    .local v2, "res":Lorg/telegram/tgnet/TLRPC$Vector;
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$4$1;->this$1:Lorg/telegram/ui/WallpapersActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallpappersByIds:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/WallpapersActivity;->access$100(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 450
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$Vector;->objects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 451
    .local v1, "obj":Ljava/lang/Object;
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$4$1;->this$1:Lorg/telegram/ui/WallpapersActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/WallpapersActivity;->access$400(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/ArrayList;

    move-result-object v4

    move-object v3, v1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$WallPaper;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$4$1;->this$1:Lorg/telegram/ui/WallpapersActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallpappersByIds:Ljava/util/HashMap;
    invoke-static {v3}, Lorg/telegram/ui/WallpapersActivity;->access$100(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/HashMap;

    move-result-object v4

    move-object v3, v1

    check-cast v3, Lorg/telegram/tgnet/TLRPC$WallPaper;

    iget v3, v3, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v1, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .end local v1    # "obj":Ljava/lang/Object;
    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 454
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$4$1;->this$1:Lorg/telegram/ui/WallpapersActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;
    invoke-static {v3}, Lorg/telegram/ui/WallpapersActivity;->access$500(Lorg/telegram/ui/WallpapersActivity;)Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 455
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$4$1;->this$1:Lorg/telegram/ui/WallpapersActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;
    invoke-static {v3}, Lorg/telegram/ui/WallpapersActivity;->access$500(Lorg/telegram/ui/WallpapersActivity;)Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 457
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$4$1;->this$1:Lorg/telegram/ui/WallpapersActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->backgroundImage:Landroid/widget/ImageView;
    invoke-static {v3}, Lorg/telegram/ui/WallpapersActivity;->access$700(Lorg/telegram/ui/WallpapersActivity;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 458
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$4$1;->this$1:Lorg/telegram/ui/WallpapersActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # invokes: Lorg/telegram/ui/WallpapersActivity;->processSelectedBackground()V
    invoke-static {v3}, Lorg/telegram/ui/WallpapersActivity;->access$600(Lorg/telegram/ui/WallpapersActivity;)V

    .line 460
    :cond_2
    invoke-static {}, Lorg/telegram/messenger/MessagesStorage;->getInstance()Lorg/telegram/messenger/MessagesStorage;

    move-result-object v3

    iget-object v4, p0, Lorg/telegram/ui/WallpapersActivity$4$1;->this$1:Lorg/telegram/ui/WallpapersActivity$4;

    iget-object v4, v4, Lorg/telegram/ui/WallpapersActivity$4;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/WallpapersActivity;->access$400(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/messenger/MessagesStorage;->putWallpapers(Ljava/util/ArrayList;)V

    .line 461
    return-void
.end method
