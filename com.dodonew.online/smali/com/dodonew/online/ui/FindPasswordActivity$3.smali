.class Lcom/dodonew/online/ui/FindPasswordActivity$3;
.super Lcom/google/gson/reflect/TypeToken;
.source "FindPasswordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/FindPasswordActivity;->verificationCode(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/dodonew/online/bean/PhoneCode;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/FindPasswordActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/FindPasswordActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/FindPasswordActivity;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/dodonew/online/ui/FindPasswordActivity$3;->this$0:Lcom/dodonew/online/ui/FindPasswordActivity;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
