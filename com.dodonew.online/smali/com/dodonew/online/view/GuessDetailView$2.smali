.class Lcom/dodonew/online/view/GuessDetailView$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "GuessDetailView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/GuessDetailView;->sendGuess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/dodonew/online/bean/ScoreStr;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/GuessDetailView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/GuessDetailView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/GuessDetailView;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/dodonew/online/view/GuessDetailView$2;->this$0:Lcom/dodonew/online/view/GuessDetailView;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
