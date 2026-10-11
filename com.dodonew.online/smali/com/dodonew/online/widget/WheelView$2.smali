.class Lcom/dodonew/online/widget/WheelView$2;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/WheelView;->setSelectedIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/WheelView;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/WheelView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/WheelView;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/dodonew/online/widget/WheelView$2;->this$0:Lcom/dodonew/online/widget/WheelView;

    iput p2, p0, Lcom/dodonew/online/widget/WheelView$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 481
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView$2;->this$0:Lcom/dodonew/online/widget/WheelView;

    const/4 v1, 0x0

    iget v2, p0, Lcom/dodonew/online/widget/WheelView$2;->val$index:I

    iget-object v3, p0, Lcom/dodonew/online/widget/WheelView$2;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v3}, Lcom/dodonew/online/widget/WheelView;->access$400(Lcom/dodonew/online/widget/WheelView;)I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/WheelView;->smoothScrollTo(II)V

    .line 483
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView$2;->this$0:Lcom/dodonew/online/widget/WheelView;

    iget v1, p0, Lcom/dodonew/online/widget/WheelView$2;->val$index:I

    iget-object v2, p0, Lcom/dodonew/online/widget/WheelView$2;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v2}, Lcom/dodonew/online/widget/WheelView;->access$600(Lcom/dodonew/online/widget/WheelView;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/WheelView;->access$502(Lcom/dodonew/online/widget/WheelView;I)I

    .line 484
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView$2;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v0}, Lcom/dodonew/online/widget/WheelView;->access$700(Lcom/dodonew/online/widget/WheelView;)V

    .line 485
    return-void
.end method
