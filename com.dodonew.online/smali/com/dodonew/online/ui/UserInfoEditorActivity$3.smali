.class Lcom/dodonew/online/ui/UserInfoEditorActivity$3;
.super Lcom/google/gson/reflect/TypeToken;
.source "UserInfoEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/UserInfoEditorActivity;->updateUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/dodonew/online/ui/UserInfoEditorActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/UserInfoEditorActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/UserInfoEditorActivity;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/dodonew/online/ui/UserInfoEditorActivity$3;->this$0:Lcom/dodonew/online/ui/UserInfoEditorActivity;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
