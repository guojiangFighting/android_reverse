.class Lcom/dodonew/online/widget/zxing/ZXingView$1;
.super Ljava/lang/Object;
.source "ZXingView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/zxing/ZXingView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/zxing/ZXingView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/zxing/ZXingView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/zxing/ZXingView;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/dodonew/online/widget/zxing/ZXingView$1;->this$0:Lcom/dodonew/online/widget/zxing/ZXingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView$1;->this$0:Lcom/dodonew/online/widget/zxing/ZXingView;

    invoke-static {v0}, Lcom/dodonew/online/widget/zxing/ZXingView;->access$000(Lcom/dodonew/online/widget/zxing/ZXingView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 83
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView$1;->this$0:Lcom/dodonew/online/widget/zxing/ZXingView;

    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/ZXingView$1;->this$0:Lcom/dodonew/online/widget/zxing/ZXingView;

    invoke-static {v1}, Lcom/dodonew/online/widget/zxing/ZXingView;->access$000(Lcom/dodonew/online/widget/zxing/ZXingView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/zxing/ZXingView;->access$102(Lcom/dodonew/online/widget/zxing/ZXingView;I)I

    .line 84
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView$1;->this$0:Lcom/dodonew/online/widget/zxing/ZXingView;

    iget-object v1, p0, Lcom/dodonew/online/widget/zxing/ZXingView$1;->this$0:Lcom/dodonew/online/widget/zxing/ZXingView;

    invoke-static {v1}, Lcom/dodonew/online/widget/zxing/ZXingView;->access$000(Lcom/dodonew/online/widget/zxing/ZXingView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/zxing/ZXingView;->access$202(Lcom/dodonew/online/widget/zxing/ZXingView;I)I

    .line 85
    iget-object v0, p0, Lcom/dodonew/online/widget/zxing/ZXingView$1;->this$0:Lcom/dodonew/online/widget/zxing/ZXingView;

    invoke-static {v0}, Lcom/dodonew/online/widget/zxing/ZXingView;->access$300(Lcom/dodonew/online/widget/zxing/ZXingView;)V

    .line 86
    return-void
.end method
