.class Lorg/telegram/ui/WallpapersActivity$3;
.super Ljava/lang/Object;
.source "WallpapersActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WallpapersActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/WallpapersActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WallpapersActivity;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity$3;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 206
    if-nez p2, :cond_2

    .line 207
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$3;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/WallpapersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_1

    .line 246
    :cond_0
    :goto_0
    return-void

    .line 210
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$3;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/WallpapersActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 212
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string/jumbo v4, "FromCamera"

    const v5, 0x7f070243

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "FromGalley"

    const v5, 0x7f07024a

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "Cancel"

    const v5, 0x7f0700f2

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 214
    .local v1, "items":[Ljava/lang/CharSequence;
    new-instance v3, Lorg/telegram/ui/WallpapersActivity$3$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/WallpapersActivity$3$1;-><init>(Lorg/telegram/ui/WallpapersActivity$3;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$3;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/WallpapersActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 238
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "items":[Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v3, p2, -0x1

    if-ltz v3, :cond_0

    add-int/lit8 v3, p2, -0x1

    iget-object v4, p0, Lorg/telegram/ui/WallpapersActivity$3;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;
    invoke-static {v4}, Lorg/telegram/ui/WallpapersActivity;->access$400(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 241
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$3;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->wallPapers:Ljava/util/ArrayList;
    invoke-static {v3}, Lorg/telegram/ui/WallpapersActivity;->access$400(Lorg/telegram/ui/WallpapersActivity;)Ljava/util/ArrayList;

    move-result-object v3

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/telegram/tgnet/TLRPC$WallPaper;

    .line 242
    .local v2, "wallPaper":Lorg/telegram/tgnet/TLRPC$WallPaper;
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$3;->this$0:Lorg/telegram/ui/WallpapersActivity;

    iget v4, v2, Lorg/telegram/tgnet/TLRPC$WallPaper;->id:I

    # setter for: Lorg/telegram/ui/WallpapersActivity;->selectedBackground:I
    invoke-static {v3, v4}, Lorg/telegram/ui/WallpapersActivity;->access$002(Lorg/telegram/ui/WallpapersActivity;I)I

    .line 243
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$3;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # getter for: Lorg/telegram/ui/WallpapersActivity;->listAdapter:Lorg/telegram/ui/WallpapersActivity$ListAdapter;
    invoke-static {v3}, Lorg/telegram/ui/WallpapersActivity;->access$500(Lorg/telegram/ui/WallpapersActivity;)Lorg/telegram/ui/WallpapersActivity$ListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lorg/telegram/ui/WallpapersActivity$ListAdapter;->notifyDataSetChanged()V

    .line 244
    iget-object v3, p0, Lorg/telegram/ui/WallpapersActivity$3;->this$0:Lorg/telegram/ui/WallpapersActivity;

    # invokes: Lorg/telegram/ui/WallpapersActivity;->processSelectedBackground()V
    invoke-static {v3}, Lorg/telegram/ui/WallpapersActivity;->access$600(Lorg/telegram/ui/WallpapersActivity;)V

    goto :goto_0
.end method
