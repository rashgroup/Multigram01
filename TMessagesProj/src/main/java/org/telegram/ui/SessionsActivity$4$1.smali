.class Lorg/telegram/ui/SessionsActivity$4$1;
.super Ljava/lang/Object;
.source "SessionsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SessionsActivity$4;->run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/SessionsActivity$4;

.field final synthetic val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

.field final synthetic val$response:Lorg/telegram/tgnet/TLObject;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SessionsActivity$4;Lorg/telegram/tgnet/TLRPC$TL_error;Lorg/telegram/tgnet/TLObject;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lorg/telegram/ui/SessionsActivity$4$1;->this$1:Lorg/telegram/ui/SessionsActivity$4;

    iput-object p2, p0, Lorg/telegram/ui/SessionsActivity$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    iput-object p3, p0, Lorg/telegram/ui/SessionsActivity$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 304
    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$4$1;->this$1:Lorg/telegram/ui/SessionsActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    const/4 v4, 0x0

    # setter for: Lorg/telegram/ui/SessionsActivity;->loading:Z
    invoke-static {v3, v4}, Lorg/telegram/ui/SessionsActivity;->access$602(Lorg/telegram/ui/SessionsActivity;Z)Z

    .line 305
    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$4$1;->val$error:Lorg/telegram/tgnet/TLRPC$TL_error;

    if-nez v3, :cond_2

    .line 306
    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$4$1;->this$1:Lorg/telegram/ui/SessionsActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 307
    iget-object v2, p0, Lorg/telegram/ui/SessionsActivity$4$1;->val$response:Lorg/telegram/tgnet/TLObject;

    check-cast v2, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;

    .line 308
    .local v2, "res":Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;
    iget-object v3, v2, Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;->authorizations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;

    .line 309
    .local v0, "authorization":Lorg/telegram/tgnet/TLRPC$TL_authorization;
    iget v3, v0, Lorg/telegram/tgnet/TLRPC$TL_authorization;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 310
    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$4$1;->this$1:Lorg/telegram/ui/SessionsActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    # setter for: Lorg/telegram/ui/SessionsActivity;->currentSession:Lorg/telegram/tgnet/TLRPC$TL_authorization;
    invoke-static {v3, v0}, Lorg/telegram/ui/SessionsActivity;->access$702(Lorg/telegram/ui/SessionsActivity;Lorg/telegram/tgnet/TLRPC$TL_authorization;)Lorg/telegram/tgnet/TLRPC$TL_authorization;

    goto :goto_0

    .line 312
    :cond_0
    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$4$1;->this$1:Lorg/telegram/ui/SessionsActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->sessions:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->access$300(Lorg/telegram/ui/SessionsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 315
    .end local v0    # "authorization":Lorg/telegram/tgnet/TLRPC$TL_authorization;
    :cond_1
    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$4$1;->this$1:Lorg/telegram/ui/SessionsActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    # invokes: Lorg/telegram/ui/SessionsActivity;->updateRows()V
    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->access$400(Lorg/telegram/ui/SessionsActivity;)V

    .line 317
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "res":Lorg/telegram/tgnet/TLRPC$TL_account_authorizations;
    :cond_2
    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$4$1;->this$1:Lorg/telegram/ui/SessionsActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;
    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->access$500(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 318
    iget-object v3, p0, Lorg/telegram/ui/SessionsActivity$4$1;->this$1:Lorg/telegram/ui/SessionsActivity$4;

    iget-object v3, v3, Lorg/telegram/ui/SessionsActivity$4;->this$0:Lorg/telegram/ui/SessionsActivity;

    # getter for: Lorg/telegram/ui/SessionsActivity;->listAdapter:Lorg/telegram/ui/SessionsActivity$ListAdapter;
    invoke-static {v3}, Lorg/telegram/ui/SessionsActivity;->access$500(Lorg/telegram/ui/SessionsActivity;)Lorg/telegram/ui/SessionsActivity$ListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/SessionsActivity$ListAdapter;->notifyDataSetChanged()V

    .line 320
    :cond_3
    return-void
.end method
