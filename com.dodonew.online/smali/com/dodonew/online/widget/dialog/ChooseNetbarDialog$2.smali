.class Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "ChooseNetbarDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->getNetBarByAccount(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$2;->this$0:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
