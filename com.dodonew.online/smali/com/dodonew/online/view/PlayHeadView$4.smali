.class Lcom/dodonew/online/view/PlayHeadView$4;
.super Ljava/lang/Object;
.source "PlayHeadView.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/view/PlayHeadView;->queryUrl(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/view/PlayHeadView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/view/PlayHeadView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/view/PlayHeadView;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/dodonew/online/view/PlayHeadView$4;->this$0:Lcom/dodonew/online/view/PlayHeadView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 0
    .param p1, "volleyError"    # Lcom/android/volley/VolleyError;

    .prologue
    .line 120
    invoke-virtual {p1}, Lcom/android/volley/VolleyError;->printStackTrace()V

    .line 122
    return-void
.end method
