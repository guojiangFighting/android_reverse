.class Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$4;
.super Ljava/lang/Object;
.source "ChooseNetbarDialog.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$4;->this$0:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 153
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 154
    iget-object v0, p0, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog$4;->this$0:Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;

    invoke-static {v0}, Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;->access$300(Lcom/dodonew/online/widget/dialog/ChooseNetbarDialog;)Lcom/dodonew/online/widget/MultiStateView;

    move-result-object v0

    sget-object v1, Lcom/dodonew/online/widget/MultiStateView$ViewState;->ERROR:Lcom/dodonew/online/widget/MultiStateView$ViewState;

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/MultiStateView;->setViewState(Lcom/dodonew/online/widget/MultiStateView$ViewState;)V

    .line 155
    return-void
.end method
