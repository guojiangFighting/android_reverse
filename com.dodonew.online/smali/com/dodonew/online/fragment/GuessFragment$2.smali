.class Lcom/dodonew/online/fragment/GuessFragment$2;
.super Lcom/google/gson/reflect/TypeToken;
.source "GuessFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/GuessFragment;->queryGuessData()V
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
        "Ljava/util/List",
        "<",
        "Lcom/dodonew/online/bean/Category;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/GuessFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/GuessFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/GuessFragment;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/dodonew/online/fragment/GuessFragment$2;->this$0:Lcom/dodonew/online/fragment/GuessFragment;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
