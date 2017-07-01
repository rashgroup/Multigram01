.class Lorg/telegram/ui/PasscodeActivity$ListAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "PasscodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/PasscodeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/PasscodeActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/PasscodeActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 599
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 600
    iput-object p2, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 601
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1400(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 620
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 625
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 692
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1200(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 699
    :cond_0
    :goto_0
    return v0

    .line 694
    :cond_1
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq p1, v1, :cond_2

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-ne p1, v1, :cond_3

    .line 695
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 696
    :cond_3
    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1500(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-eq p1, v1, :cond_4

    iget-object v1, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I
    invoke-static {v1}, Lorg/telegram/ui/PasscodeActivity;->access$1600(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 697
    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const v10, 0x7f0700c8

    const/4 v6, -0x1

    const/high16 v9, 0x42700000    # 60.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 635
    invoke-virtual {p0, p1}, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 636
    .local v2, "viewType":I
    if-nez v2, :cond_4

    .line 637
    if-nez p2, :cond_0

    .line 638
    new-instance p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v5, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v5}, Lorg/telegram/ui/Cells/TextCheckCell;-><init>(Landroid/content/Context;)V

    .line 639
    .restart local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    move-object v0, p2

    .line 641
    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 643
    .local v0, "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    iget-object v5, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeRow:I
    invoke-static {v5}, Lorg/telegram/ui/PasscodeActivity;->access$900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v5

    if-ne p1, v5, :cond_3

    .line 644
    const-string/jumbo v5, "Passcode"

    const v6, 0x7f0703c2

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {v0, v5, v3, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    .line 687
    .end local v0    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_2
    :goto_0
    return-object p2

    .line 645
    .restart local v0    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_3
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I
    invoke-static {v3}, Lorg/telegram/ui/PasscodeActivity;->access$1200(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v3

    if-ne p1, v3, :cond_2

    .line 646
    const-string/jumbo v3, "UnlockFingerprint"

    const v5, 0x7f0704d6

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget-boolean v5, Lorg/telegram/messenger/UserConfig;->useFingerprint:Z

    invoke-virtual {v0, v3, v5, v4}, Lorg/telegram/ui/Cells/TextCheckCell;->setTextAndCheck(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 648
    .end local v0    # "textCell":Lorg/telegram/ui/Cells/TextCheckCell;
    :cond_4
    if-ne v2, v4, :cond_b

    .line 649
    if-nez p2, :cond_5

    .line 650
    new-instance p2, Lorg/telegram/ui/Cells/TextSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v5, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v5}, Lorg/telegram/ui/Cells/TextSettingsCell;-><init>(Landroid/content/Context;)V

    .line 651
    .restart local p2    # "view":Landroid/view/View;
    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_5
    move-object v0, p2

    .line 653
    check-cast v0, Lorg/telegram/ui/Cells/TextSettingsCell;

    .line 654
    .local v0, "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    iget-object v5, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I
    invoke-static {v5}, Lorg/telegram/ui/PasscodeActivity;->access$800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v5

    if-ne p1, v5, :cond_7

    .line 655
    const-string/jumbo v4, "ChangePasscode"

    const v5, 0x7f0700f7

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setText(Ljava/lang/String;Z)V

    .line 656
    sget-object v3, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    const v3, -0x39393a

    :goto_1
    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto :goto_0

    :cond_6
    const/high16 v3, -0x1000000

    goto :goto_1

    .line 657
    :cond_7
    iget-object v5, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I
    invoke-static {v5}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v5

    if-ne p1, v5, :cond_2

    .line 659
    sget v5, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    if-nez v5, :cond_8

    .line 660
    const-string/jumbo v5, "AutoLockDisabled"

    const v6, 0x7f0700c7

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5, v6, v3}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "val":Ljava/lang/String;
    :goto_2
    const-string/jumbo v3, "AutoLock"

    const v5, 0x7f0700c6

    invoke-static {v3, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v4}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 669
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Lorg/telegram/ui/Cells/TextSettingsCell;->setTextColor(I)V

    goto :goto_0

    .line 661
    .end local v1    # "val":Ljava/lang/String;
    :cond_8
    sget v5, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const/16 v6, 0xe10

    if-ge v5, v6, :cond_9

    .line 662
    const-string/jumbo v5, "AutoLockInTime"

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "Minutes"

    sget v8, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    div-int/lit8 v8, v8, 0x3c

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v10, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "val":Ljava/lang/String;
    goto :goto_2

    .line 663
    .end local v1    # "val":Ljava/lang/String;
    :cond_9
    sget v5, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    const v6, 0x15180

    if-ge v5, v6, :cond_a

    .line 664
    const-string/jumbo v5, "AutoLockInTime"

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "Hours"

    sget v8, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v10, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "val":Ljava/lang/String;
    goto :goto_2

    .line 666
    .end local v1    # "val":Ljava/lang/String;
    :cond_a
    const-string/jumbo v5, "AutoLockInTime"

    new-array v6, v4, [Ljava/lang/Object;

    const-string/jumbo v7, "Days"

    sget v8, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    int-to-float v8, v8

    div-float/2addr v8, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x41c00000    # 24.0f

    div-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->formatPluralString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v10, v6}, Lorg/telegram/messenger/LocaleController;->formatString(Ljava/lang/String;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "val":Ljava/lang/String;
    goto :goto_2

    .line 671
    .end local v0    # "textCell":Lorg/telegram/ui/Cells/TextSettingsCell;
    .end local v1    # "val":Ljava/lang/String;
    :cond_b
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 672
    if-nez p2, :cond_c

    .line 673
    new-instance p2, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v3}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;-><init>(Landroid/content/Context;)V

    .line 675
    .restart local p2    # "view":Landroid/view/View;
    :cond_c
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeDetailRow:I
    invoke-static {v3}, Lorg/telegram/ui/PasscodeActivity;->access$1500(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v3

    if-ne p1, v3, :cond_e

    move-object v3, p2

    .line 676
    check-cast v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v4, "ChangePasscodeInfo"

    const v5, 0x7f0700f9

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 677
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I
    invoke-static {v3}, Lorg/telegram/ui/PasscodeActivity;->access$1600(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v3

    if-eq v3, v6, :cond_d

    .line 678
    const v3, 0x7f020126

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 680
    :cond_d
    const v3, 0x7f020127

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 682
    :cond_e
    iget-object v3, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->autoLockDetailRow:I
    invoke-static {v3}, Lorg/telegram/ui/PasscodeActivity;->access$1600(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v3

    if-ne p1, v3, :cond_2

    move-object v3, p2

    .line 683
    check-cast v3, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;

    const-string/jumbo v4, "AutoLockInfo"

    const v5, 0x7f0700c9

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/Cells/TextInfoPrivacyCell;->setText(Ljava/lang/CharSequence;)V

    .line 684
    const v3, 0x7f020127

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 630
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 610
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->passcodeRow:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$900(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->fingerprintRow:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1200(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->autoLockRow:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1100(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-eq p1, v0, :cond_0

    sget-object v0, Lorg/telegram/messenger/UserConfig;->passcodeHash:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$ListAdapter;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->changePasscodeRow:I
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$800(Lorg/telegram/ui/PasscodeActivity;)I

    move-result v0

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
