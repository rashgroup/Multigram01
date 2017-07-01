.class Lorg/telegram/ui/MediaActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "MediaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/MediaActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/MediaActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/MediaActivity;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 516
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 518
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2000(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    .line 524
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # setter for: Lorg/telegram/ui/MediaActivity;->searching:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/MediaActivity;->access$1902(Lorg/telegram/ui/MediaActivity;Z)Z

    .line 525
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # setter for: Lorg/telegram/ui/MediaActivity;->searchWas:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/MediaActivity;->access$2302(Lorg/telegram/ui/MediaActivity;Z)Z

    .line 526
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)V

    .line 527
    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 520
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :cond_2
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 522
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$2200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSearchExpand()V
    .locals 2

    .prologue
    .line 510
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->dropDownContainer:Lorg/telegram/ui/ActionBar/ActionBarMenuItem;
    invoke-static {v0}, Lorg/telegram/ui/MediaActivity;->access$1800(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/ActionBar/ActionBarMenuItem;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/MediaActivity;->searching:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/MediaActivity;->access$1902(Lorg/telegram/ui/MediaActivity;Z)Z

    .line 512
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 3
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v2, 0x1

    .line 531
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # setter for: Lorg/telegram/ui/MediaActivity;->searchWas:Z
    invoke-static {v1, v2}, Lorg/telegram/ui/MediaActivity;->access$2302(Lorg/telegram/ui/MediaActivity;Z)Z

    .line 534
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # invokes: Lorg/telegram/ui/MediaActivity;->switchToCurrentSelectedMode()V
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1100(Lorg/telegram/ui/MediaActivity;)V

    .line 536
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 537
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2000(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    .line 552
    :cond_1
    :goto_0
    return-void

    .line 540
    :cond_2
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->documentsSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2000(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_0

    .line 541
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 542
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->linksSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2100(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_0

    .line 546
    :cond_4
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->selectedMode:I
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$1000(Lorg/telegram/ui/MediaActivity;)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 547
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 550
    iget-object v1, p0, Lorg/telegram/ui/MediaActivity$2;->this$0:Lorg/telegram/ui/MediaActivity;

    # getter for: Lorg/telegram/ui/MediaActivity;->audioSearchAdapter:Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/MediaActivity;->access$2200(Lorg/telegram/ui/MediaActivity;)Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/MediaActivity$MediaSearchAdapter;->search(Ljava/lang/String;)V

    goto :goto_0
.end method
