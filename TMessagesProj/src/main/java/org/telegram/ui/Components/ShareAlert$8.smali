.class Lorg/telegram/ui/Components/ShareAlert$8;
.super Ljava/lang/Object;
.source "ShareAlert.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ShareAlert;-><init>(Landroid/content/Context;Ljava/util/ArrayList;ZLorg/telegram/ui/Components/ChatActivityEnterView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ShareAlert;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ShareAlert;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lorg/telegram/ui/Components/ShareAlert$8;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 378
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$8;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->captionCheck:Lorg/telegram/ui/Components/Switch;
    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/Switch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$8;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/Components/ShareAlert;->forwardType:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$1202(Lorg/telegram/ui/Components/ShareAlert;I)I

    .line 385
    :goto_0
    return-void

    .line 380
    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$8;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    # getter for: Lorg/telegram/ui/Components/ShareAlert;->captionCheck:Lorg/telegram/ui/Components/Switch;
    invoke-static {v0}, Lorg/telegram/ui/Components/ShareAlert;->access$1800(Lorg/telegram/ui/Components/ShareAlert;)Lorg/telegram/ui/Components/Switch;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$8;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v1, 0x2

    # setter for: Lorg/telegram/ui/Components/ShareAlert;->forwardType:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$1202(Lorg/telegram/ui/Components/ShareAlert;I)I

    goto :goto_0

    .line 383
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/Components/ShareAlert$8;->this$0:Lorg/telegram/ui/Components/ShareAlert;

    const/4 v1, 0x3

    # setter for: Lorg/telegram/ui/Components/ShareAlert;->forwardType:I
    invoke-static {v0, v1}, Lorg/telegram/ui/Components/ShareAlert;->access$1202(Lorg/telegram/ui/Components/ShareAlert;I)I

    goto :goto_0
.end method
