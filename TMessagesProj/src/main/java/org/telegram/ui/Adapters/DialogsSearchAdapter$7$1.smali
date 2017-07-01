.class Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7$1;
.super Ljava/lang/Object;
.source "DialogsSearchAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 864
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    # getter for: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->needMessagesSearch:I
    invoke-static {v0}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1500(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 865
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$query:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->queryServerSearch(Ljava/lang/String;Z)V

    .line 867
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;

    iget-object v0, v0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->this$0:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    iget-object v1, p0, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7$1;->this$1:Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;

    iget-object v1, v1, Lorg/telegram/ui/Adapters/DialogsSearchAdapter$7;->val$query:Ljava/lang/String;

    # invokes: Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->searchMessagesInternal(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->access$1600(Lorg/telegram/ui/Adapters/DialogsSearchAdapter;Ljava/lang/String;)V

    .line 868
    return-void
.end method
