.class Lorg/telegram/ui/WallpapersActivity$3$1;
.super Ljava/lang/Object;
.source "WallpapersActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/WallpapersActivity$3;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/WallpapersActivity$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/WallpapersActivity$3;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lorg/telegram/ui/WallpapersActivity$3$1;->this$1:Lorg/telegram/ui/WallpapersActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 218
    if-nez p2, :cond_2

    .line 219
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 220
    .local v3, "takePictureIntent":Landroid/content/Intent;
    invoke-static {}, Lorg/telegram/messenger/AndroidUtilities;->generatePicturePath()Ljava/io/File;

    move-result-object v1

    .line 221
    .local v1, "image":Ljava/io/File;
    if-eqz v1, :cond_0

    .line 222
    const-string/jumbo v4, "output"

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 223
    iget-object v4, p0, Lorg/telegram/ui/WallpapersActivity$3$1;->this$1:Lorg/telegram/ui/WallpapersActivity$3;

    iget-object v4, v4, Lorg/telegram/ui/WallpapersActivity$3;->this$0:Lorg/telegram/ui/WallpapersActivity;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    # setter for: Lorg/telegram/ui/WallpapersActivity;->currentPicturePath:Ljava/lang/String;
    invoke-static {v4, v5}, Lorg/telegram/ui/WallpapersActivity;->access$302(Lorg/telegram/ui/WallpapersActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    :cond_0
    iget-object v4, p0, Lorg/telegram/ui/WallpapersActivity$3$1;->this$1:Lorg/telegram/ui/WallpapersActivity$3;

    iget-object v4, v4, Lorg/telegram/ui/WallpapersActivity$3;->this$0:Lorg/telegram/ui/WallpapersActivity;

    const/16 v5, 0xa

    invoke-virtual {v4, v3, v5}, Lorg/telegram/ui/WallpapersActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 234
    .end local v1    # "image":Ljava/io/File;
    .end local v3    # "takePictureIntent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return-void

    .line 226
    :cond_2
    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    .line 227
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.PICK"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 228
    .local v2, "photoPickerIntent":Landroid/content/Intent;
    const-string/jumbo v4, "image/*"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v4, p0, Lorg/telegram/ui/WallpapersActivity$3$1;->this$1:Lorg/telegram/ui/WallpapersActivity$3;

    iget-object v4, v4, Lorg/telegram/ui/WallpapersActivity$3;->this$0:Lorg/telegram/ui/WallpapersActivity;

    const/16 v5, 0xb

    invoke-virtual {v4, v2, v5}, Lorg/telegram/ui/WallpapersActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    .end local v2    # "photoPickerIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "tmessages"

    invoke-static {v4, v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
