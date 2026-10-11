.class Lcom/dodonew/online/view/TableView$3;
.super Ljava/lang/Object;
.source "TableView.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/TableView;->requestNetwork(Ljava/lang/String;Ljava/util/Map;Ljava/lang/reflect/Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/TableView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/TableView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/TableView;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/dodonew/online/view/TableView$3;->this$0:Lcom/dodonew/online/view/TableView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 112
    return-void
.end method
