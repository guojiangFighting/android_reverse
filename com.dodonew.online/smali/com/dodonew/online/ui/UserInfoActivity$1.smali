.class Lcom/dodonew/online/ui/UserInfoActivity$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "UserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/UserInfoActivity;->bindQQ(Ljava/lang/String;Ljava/lang/String;)V
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
        "Lcom/dodonew/online/bean/UserResult;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/UserInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/UserInfoActivity;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/dodonew/online/ui/UserInfoActivity$1;->this$0:Lcom/dodonew/online/ui/UserInfoActivity;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
