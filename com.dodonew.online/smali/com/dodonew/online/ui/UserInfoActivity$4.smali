.class Lcom/dodonew/online/ui/UserInfoActivity$4;
.super Ljava/lang/Object;
.source "UserInfoActivity.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/UserInfoActivity;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/UserInfoActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/UserInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/UserInfoActivity;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/dodonew/online/ui/UserInfoActivity$4;->this$0:Lcom/dodonew/online/ui/UserInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 177
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 178
    iget-object v0, p0, Lcom/dodonew/online/ui/UserInfoActivity$4;->this$0:Lcom/dodonew/online/ui/UserInfoActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/ui/UserInfoActivity;->dissProgress()V

    .line 179
    return-void
.end method
