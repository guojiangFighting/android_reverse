.class Lcom/dodonew/online/widget/dialog/WriteInfoDialog$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "WriteInfoDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/dialog/WriteInfoDialog;->getNetBarByAccount(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken",
        "<",
        "Lcom/dodonew/online/bean/RequestResult",
        "<",
        "Lcom/dodonew/online/bean/NetBarList;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/dialog/WriteInfoDialog;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/dialog/WriteInfoDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/dialog/WriteInfoDialog;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/dodonew/online/widget/dialog/WriteInfoDialog$1;->this$0:Lcom/dodonew/online/widget/dialog/WriteInfoDialog;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
