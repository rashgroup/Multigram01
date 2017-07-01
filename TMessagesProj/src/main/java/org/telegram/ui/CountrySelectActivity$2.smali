.class Lorg/telegram/ui/CountrySelectActivity$2;
.super Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;
.source "CountrySelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/CountrySelectActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/CountrySelectActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/CountrySelectActivity;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBarMenuItem$ActionBarMenuItemSearchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSearchCollapse()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/CountrySearchAdapter;
    invoke-static {v0}, Lorg/telegram/ui/CountrySelectActivity;->access$100(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->search(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # setter for: Lorg/telegram/ui/CountrySelectActivity;->searching:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/CountrySelectActivity;->access$002(Lorg/telegram/ui/CountrySelectActivity;Z)Z

    .line 88
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # setter for: Lorg/telegram/ui/CountrySelectActivity;->searchWas:Z
    invoke-static {v0, v2}, Lorg/telegram/ui/CountrySelectActivity;->access$202(Lorg/telegram/ui/CountrySelectActivity;Z)Z

    .line 89
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v0}, Lorg/telegram/ui/CountrySelectActivity;->access$400(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->listViewAdapter:Lorg/telegram/ui/Adapters/CountryAdapter;
    invoke-static {v1}, Lorg/telegram/ui/CountrySelectActivity;->access$300(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Adapters/CountryAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 90
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v0}, Lorg/telegram/ui/CountrySelectActivity;->access$400(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    .line 91
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v0}, Lorg/telegram/ui/CountrySelectActivity;->access$400(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    .line 92
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v0}, Lorg/telegram/ui/CountrySelectActivity;->access$400(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    .line 94
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->emptyTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lorg/telegram/ui/CountrySelectActivity;->access$500(Lorg/telegram/ui/CountrySelectActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string/jumbo v1, "ChooseCountry"

    const v2, 0x7f070165

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method

.method public onSearchExpand()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    const/4 v1, 0x1

    # setter for: Lorg/telegram/ui/CountrySelectActivity;->searching:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/CountrySelectActivity;->access$002(Lorg/telegram/ui/CountrySelectActivity;Z)Z

    .line 82
    return-void
.end method

.method public onTextChanged(Landroid/widget/EditText;)V
    .locals 5
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/CountrySearchAdapter;
    invoke-static {v1}, Lorg/telegram/ui/CountrySelectActivity;->access$100(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/telegram/ui/Adapters/CountrySearchAdapter;->search(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # setter for: Lorg/telegram/ui/CountrySelectActivity;->searchWas:Z
    invoke-static {v1, v4}, Lorg/telegram/ui/CountrySelectActivity;->access$202(Lorg/telegram/ui/CountrySelectActivity;Z)Z

    .line 103
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v1}, Lorg/telegram/ui/CountrySelectActivity;->access$400(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v1}, Lorg/telegram/ui/CountrySelectActivity;->access$400(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->searchListViewAdapter:Lorg/telegram/ui/Adapters/CountrySearchAdapter;
    invoke-static {v2}, Lorg/telegram/ui/CountrySelectActivity;->access$100(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Adapters/CountrySearchAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/LetterSectionsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v1}, Lorg/telegram/ui/CountrySelectActivity;->access$400(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollAlwaysVisible(Z)V

    .line 106
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v1}, Lorg/telegram/ui/CountrySelectActivity;->access$400(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/telegram/ui/Components/LetterSectionsListView;->setFastScrollEnabled(Z)V

    .line 107
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->listView:Lorg/telegram/ui/Components/LetterSectionsListView;
    invoke-static {v1}, Lorg/telegram/ui/CountrySelectActivity;->access$400(Lorg/telegram/ui/CountrySelectActivity;)Lorg/telegram/ui/Components/LetterSectionsListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/telegram/ui/Components/LetterSectionsListView;->setVerticalScrollBarEnabled(Z)V

    .line 109
    :cond_0
    iget-object v1, p0, Lorg/telegram/ui/CountrySelectActivity$2;->this$0:Lorg/telegram/ui/CountrySelectActivity;

    # getter for: Lorg/telegram/ui/CountrySelectActivity;->emptyTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lorg/telegram/ui/CountrySelectActivity;->access$500(Lorg/telegram/ui/CountrySelectActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 113
    :cond_1
    return-void
.end method
