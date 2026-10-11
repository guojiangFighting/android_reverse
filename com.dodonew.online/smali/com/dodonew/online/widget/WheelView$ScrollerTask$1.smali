.class Lcom/dodonew/online/widget/WheelView$ScrollerTask$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/WheelView$ScrollerTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/dodonew/online/widget/WheelView$ScrollerTask;

.field final synthetic val$divided:I

.field final synthetic val$remainder:I


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/WheelView$ScrollerTask;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/dodonew/online/widget/WheelView$ScrollerTask;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask$1;->this$1:Lcom/dodonew/online/widget/WheelView$ScrollerTask;

    iput p2, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask$1;->val$remainder:I

    iput p3, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask$1;->val$divided:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 581
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask$1;->this$1:Lcom/dodonew/online/widget/WheelView$ScrollerTask;

    iget-object v0, v0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask$1;->this$1:Lcom/dodonew/online/widget/WheelView$ScrollerTask;

    iget-object v2, v2, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v2}, Lcom/dodonew/online/widget/WheelView;->access$800(Lcom/dodonew/online/widget/WheelView;)I

    move-result v2

    iget v3, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask$1;->val$remainder:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask$1;->this$1:Lcom/dodonew/online/widget/WheelView$ScrollerTask;

    iget-object v3, v3, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v3}, Lcom/dodonew/online/widget/WheelView;->access$400(Lcom/dodonew/online/widget/WheelView;)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/dodonew/online/widget/WheelView;->smoothScrollTo(II)V

    .line 582
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask$1;->this$1:Lcom/dodonew/online/widget/WheelView$ScrollerTask;

    iget-object v0, v0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    iget v1, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask$1;->val$divided:I

    iget-object v2, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask$1;->this$1:Lcom/dodonew/online/widget/WheelView$ScrollerTask;

    iget-object v2, v2, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v2}, Lcom/dodonew/online/widget/WheelView;->access$600(Lcom/dodonew/online/widget/WheelView;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/WheelView;->access$502(Lcom/dodonew/online/widget/WheelView;I)I

    .line 583
    iget-object v0, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask$1;->this$1:Lcom/dodonew/online/widget/WheelView$ScrollerTask;

    iget-object v0, v0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v0}, Lcom/dodonew/online/widget/WheelView;->access$700(Lcom/dodonew/online/widget/WheelView;)V

    .line 584
    return-void
.end method
