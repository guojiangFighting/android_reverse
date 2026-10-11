.class Lcom/dodonew/online/ui/GuideActivity$1;
.super Ljava/lang/Object;
.source "GuideActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/GuideActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/GuideActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/GuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/GuideActivity;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/dodonew/online/ui/GuideActivity$1;->this$0:Lcom/dodonew/online/ui/GuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 85
    iget-object v1, p0, Lcom/dodonew/online/ui/GuideActivity$1;->this$0:Lcom/dodonew/online/ui/GuideActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/GuideActivity;->access$100(Lcom/dodonew/online/ui/GuideActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/dodonew/online/ui/GuideActivity$1;->this$0:Lcom/dodonew/online/ui/GuideActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/GuideActivity;->access$100(Lcom/dodonew/online/ui/GuideActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
