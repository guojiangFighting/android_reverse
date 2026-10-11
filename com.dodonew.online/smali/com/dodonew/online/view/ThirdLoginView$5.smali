.class Lcom/dodonew/online/view/ThirdLoginView$5;
.super Ljava/lang/Object;
.source "ThirdLoginView.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/ThirdLoginView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/ThirdLoginView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/ThirdLoginView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/ThirdLoginView;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/dodonew/online/view/ThirdLoginView$5;->this$0:Lcom/dodonew/online/view/ThirdLoginView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 166
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 167
    iget-object v0, p0, Lcom/dodonew/online/view/ThirdLoginView$5;->this$0:Lcom/dodonew/online/view/ThirdLoginView;

    invoke-static {v0}, Lcom/dodonew/online/view/ThirdLoginView;->access$200(Lcom/dodonew/online/view/ThirdLoginView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/dodonew/online/base/ProgressActivity;

    invoke-virtual {v0}, Lcom/dodonew/online/base/ProgressActivity;->dissProgress()V

    .line 168
    return-void
.end method
