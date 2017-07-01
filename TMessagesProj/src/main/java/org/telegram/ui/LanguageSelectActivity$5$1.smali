.class Lorg/telegram/ui/LanguageSelectActivity$5$1;
.super Ljava/lang/Object;
.source "LanguageSelectActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LanguageSelectActivity$5;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/LanguageSelectActivity$5;

.field final synthetic val$finalLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LanguageSelectActivity$5;Lorg/telegram/messenger/LocaleController$LocaleInfo;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lorg/telegram/ui/LanguageSelectActivity$5$1;->this$1:Lorg/telegram/ui/LanguageSelectActivity$5;

    iput-object p2, p0, Lorg/telegram/ui/LanguageSelectActivity$5$1;->val$finalLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 201
    invoke-static {}, Lorg/telegram/messenger/LocaleController;->getInstance()Lorg/telegram/messenger/LocaleController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$5$1;->val$finalLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/LocaleController;->deleteLanguage(Lorg/telegram/messenger/LocaleController$LocaleInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$5$1;->this$1:Lorg/telegram/ui/LanguageSelectActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/LanguageSelectActivity$5;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v0, v0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$5$1;->this$1:Lorg/telegram/ui/LanguageSelectActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/LanguageSelectActivity$5;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    iget-object v0, v0, Lorg/telegram/ui/LanguageSelectActivity;->searchResult:Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/telegram/ui/LanguageSelectActivity$5$1;->val$finalLocaleInfo:Lorg/telegram/messenger/LocaleController$LocaleInfo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$5$1;->this$1:Lorg/telegram/ui/LanguageSelectActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/LanguageSelectActivity$5;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$400(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$5$1;->this$1:Lorg/telegram/ui/LanguageSelectActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/LanguageSelectActivity$5;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->listAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$400(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;->notifyDataSetChanged()V

    .line 208
    :cond_1
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$5$1;->this$1:Lorg/telegram/ui/LanguageSelectActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/LanguageSelectActivity$5;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$500(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p0, Lorg/telegram/ui/LanguageSelectActivity$5$1;->this$1:Lorg/telegram/ui/LanguageSelectActivity$5;

    iget-object v0, v0, Lorg/telegram/ui/LanguageSelectActivity$5;->this$0:Lorg/telegram/ui/LanguageSelectActivity;

    # getter for: Lorg/telegram/ui/LanguageSelectActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
    invoke-static {v0}, Lorg/telegram/ui/LanguageSelectActivity;->access$500(Lorg/telegram/ui/LanguageSelectActivity;)Lorg/telegram/ui/Adapters/BaseFragmentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;->notifyDataSetChanged()V

    .line 212
    :cond_2
    return-void
.end method
