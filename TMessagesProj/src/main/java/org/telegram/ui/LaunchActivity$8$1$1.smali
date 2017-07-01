.class Lorg/telegram/ui/LaunchActivity$8$1$1;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity$8$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/LaunchActivity$8$1;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity$8$1;)V
    .locals 0

    .prologue
    .line 1229
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$8$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$8$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 1232
    iget-object v0, p0, Lorg/telegram/ui/LaunchActivity$8$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$8$1;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v0, v0, Lorg/telegram/ui/LaunchActivity$8;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v1, p0, Lorg/telegram/ui/LaunchActivity$8$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$8$1;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v1, v1, Lorg/telegram/ui/LaunchActivity$8;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lorg/telegram/ui/LaunchActivity$8$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$8$1;

    iget-object v2, v2, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v2, v2, Lorg/telegram/ui/LaunchActivity$8;->val$group:Ljava/lang/String;

    iget-object v3, p0, Lorg/telegram/ui/LaunchActivity$8$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$8$1;

    iget-object v3, v3, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v3, v3, Lorg/telegram/ui/LaunchActivity$8;->val$sticker:Ljava/lang/String;

    iget-object v4, p0, Lorg/telegram/ui/LaunchActivity$8$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$8$1;

    iget-object v4, v4, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v4, v4, Lorg/telegram/ui/LaunchActivity$8;->val$botUser:Ljava/lang/String;

    iget-object v5, p0, Lorg/telegram/ui/LaunchActivity$8$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$8$1;

    iget-object v5, v5, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v5, v5, Lorg/telegram/ui/LaunchActivity$8;->val$botChat:Ljava/lang/String;

    iget-object v6, p0, Lorg/telegram/ui/LaunchActivity$8$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$8$1;

    iget-object v6, v6, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v6, v6, Lorg/telegram/ui/LaunchActivity$8;->val$message:Ljava/lang/String;

    iget-object v7, p0, Lorg/telegram/ui/LaunchActivity$8$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$8$1;

    iget-object v7, v7, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-boolean v7, v7, Lorg/telegram/ui/LaunchActivity$8;->val$hasUrl:Z

    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$8$1$1;->this$2:Lorg/telegram/ui/LaunchActivity$8$1;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity$8$1;->this$1:Lorg/telegram/ui/LaunchActivity$8;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity$8;->val$messageId:Ljava/lang/Integer;

    const/4 v9, 0x1

    # invokes: Lorg/telegram/ui/LaunchActivity;->runLinkRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;I)V
    invoke-static/range {v0 .. v9}, Lorg/telegram/ui/LaunchActivity;->access$900(Lorg/telegram/ui/LaunchActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;I)V

    .line 1233
    return-void
.end method
