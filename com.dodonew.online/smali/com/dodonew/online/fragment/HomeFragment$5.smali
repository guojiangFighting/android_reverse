.class Lcom/dodonew/online/fragment/HomeFragment$5;
.super Lcom/google/gson/reflect/TypeToken;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/fragment/HomeFragment;->queryNetbarDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/dodonew/online/bean/NetBars;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/fragment/HomeFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/fragment/HomeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/fragment/HomeFragment;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/dodonew/online/fragment/HomeFragment$5;->this$0:Lcom/dodonew/online/fragment/HomeFragment;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
