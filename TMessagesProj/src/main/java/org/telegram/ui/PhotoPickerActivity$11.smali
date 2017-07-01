.class Lorg/telegram/ui/PhotoPickerActivity$11;
.super Ljava/lang/Object;
.source "PhotoPickerActivity.java"

# interfaces
.implements Lorg/telegram/messenger/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoPickerActivity;->searchBingImages(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PhotoPickerActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoPickerActivity;)V
    .locals 0

    .prologue
    .line 931
    iput-object p1, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lorg/telegram/messenger/volley/VolleyError;)V
    .locals 3
    .param p1, "error"    # Lorg/telegram/messenger/volley/VolleyError;

    .prologue
    .line 934
    const-string/jumbo v0, "tmessages"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/telegram/messenger/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->nextSearchBingString:Ljava/lang/String;
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$302(Lorg/telegram/ui/PhotoPickerActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 936
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    const/4 v1, 0x0

    # setter for: Lorg/telegram/ui/PhotoPickerActivity;->searching:Z
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoPickerActivity;->access$502(Lorg/telegram/ui/PhotoPickerActivity;Z)Z

    .line 937
    iget-object v0, p0, Lorg/telegram/ui/PhotoPickerActivity$11;->this$0:Lorg/telegram/ui/PhotoPickerActivity;

    # invokes: Lorg/telegram/ui/PhotoPickerActivity;->updateSearchInterface()V
    invoke-static {v0}, Lorg/telegram/ui/PhotoPickerActivity;->access$900(Lorg/telegram/ui/PhotoPickerActivity;)V

    .line 938
    return-void
.end method
