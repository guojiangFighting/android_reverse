.class Lcom/dodonew/online/ui/MyGuessActivity$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "MyGuessActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/MyGuessActivity;->queryMyGuess()V
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
        "Lcom/dodonew/online/bean/MyGuess;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/MyGuessActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/MyGuessActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/MyGuessActivity;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/dodonew/online/ui/MyGuessActivity$2;->this$0:Lcom/dodonew/online/ui/MyGuessActivity;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
