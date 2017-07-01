.class Lorg/telegram/ui/PasscodeActivity$6$2;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PasscodeActivity$6;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PasscodeActivity$6;

.field final synthetic val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PasscodeActivity$6;Lorg/telegram/ui/Components/NumberPicker;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lorg/telegram/ui/PasscodeActivity$6$2;->this$1:Lorg/telegram/ui/PasscodeActivity$6;

    iput-object p2, p0, Lorg/telegram/ui/PasscodeActivity$6$2;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 374
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$6$2;->val$numberPicker:Lorg/telegram/ui/Components/NumberPicker;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/NumberPicker;->getValue()I

    move-result p2

    .line 375
    if-nez p2, :cond_1

    .line 376
    sput v1, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    .line 386
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/telegram/ui/PasscodeActivity$6$2;->this$1:Lorg/telegram/ui/PasscodeActivity$6;

    iget-object v0, v0, Lorg/telegram/ui/PasscodeActivity$6;->this$0:Lorg/telegram/ui/PasscodeActivity;

    # getter for: Lorg/telegram/ui/PasscodeActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lorg/telegram/ui/PasscodeActivity;->access$1000(Lorg/telegram/ui/PasscodeActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 387
    invoke-static {v1}, Lorg/telegram/messenger/UserConfig;->saveConfig(Z)V

    .line 388
    return-void

    .line 377
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 378
    const/16 v0, 0x3c

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    goto :goto_0

    .line 379
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 380
    const/16 v0, 0x12c

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    goto :goto_0

    .line 381
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 382
    const/16 v0, 0xe10

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    goto :goto_0

    .line 383
    :cond_4
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 384
    const/16 v0, 0x4650

    sput v0, Lorg/telegram/messenger/UserConfig;->autoLockIn:I

    goto :goto_0
.end method
