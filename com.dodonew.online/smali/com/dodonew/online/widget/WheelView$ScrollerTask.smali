.class Lcom/dodonew/online/widget/WheelView$ScrollerTask;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/WheelView;


# direct methods
.method private constructor <init>(Lcom/dodonew/online/widget/WheelView;)V
    .locals 0

    .prologue
    .line 561
    iput-object p1, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dodonew/online/widget/WheelView;Lcom/dodonew/online/widget/WheelView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/dodonew/online/widget/WheelView;
    .param p2, "x1"    # Lcom/dodonew/online/widget/WheelView$1;

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lcom/dodonew/online/widget/WheelView$ScrollerTask;-><init>(Lcom/dodonew/online/widget/WheelView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 566
    iget-object v3, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v3}, Lcom/dodonew/online/widget/WheelView;->access$400(Lcom/dodonew/online/widget/WheelView;)I

    move-result v3

    if-nez v3, :cond_0

    .line 600
    :goto_0
    return-void

    .line 569
    :cond_0
    iget-object v3, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-virtual {v3}, Lcom/dodonew/online/widget/WheelView;->getScrollY()I

    move-result v1

    .line 570
    .local v1, "newY":I
    iget-object v3, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v3}, Lcom/dodonew/online/widget/WheelView;->access$800(Lcom/dodonew/online/widget/WheelView;)I

    move-result v3

    sub-int/2addr v3, v1

    if-nez v3, :cond_3

    .line 571
    iget-object v3, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v3}, Lcom/dodonew/online/widget/WheelView;->access$800(Lcom/dodonew/online/widget/WheelView;)I

    move-result v3

    iget-object v4, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v4}, Lcom/dodonew/online/widget/WheelView;->access$400(Lcom/dodonew/online/widget/WheelView;)I

    move-result v4

    rem-int v2, v3, v4

    .line 572
    .local v2, "remainder":I
    iget-object v3, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v3}, Lcom/dodonew/online/widget/WheelView;->access$800(Lcom/dodonew/online/widget/WheelView;)I

    move-result v3

    iget-object v4, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v4}, Lcom/dodonew/online/widget/WheelView;->access$400(Lcom/dodonew/online/widget/WheelView;)I

    move-result v4

    div-int v0, v3, v4

    .line 573
    .local v0, "divided":I
    if-nez v2, :cond_1

    .line 574
    iget-object v3, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    iget-object v4, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v4}, Lcom/dodonew/online/widget/WheelView;->access$600(Lcom/dodonew/online/widget/WheelView;)I

    move-result v4

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Lcom/dodonew/online/widget/WheelView;->access$502(Lcom/dodonew/online/widget/WheelView;I)I

    .line 575
    iget-object v3, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v3}, Lcom/dodonew/online/widget/WheelView;->access$700(Lcom/dodonew/online/widget/WheelView;)V

    goto :goto_0

    .line 577
    :cond_1
    iget-object v3, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v3}, Lcom/dodonew/online/widget/WheelView;->access$400(Lcom/dodonew/online/widget/WheelView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_2

    .line 578
    iget-object v3, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    new-instance v4, Lcom/dodonew/online/widget/WheelView$ScrollerTask$1;

    invoke-direct {v4, p0, v2, v0}, Lcom/dodonew/online/widget/WheelView$ScrollerTask$1;-><init>(Lcom/dodonew/online/widget/WheelView$ScrollerTask;II)V

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/WheelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 587
    :cond_2
    iget-object v3, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    new-instance v4, Lcom/dodonew/online/widget/WheelView$ScrollerTask$2;

    invoke-direct {v4, p0, v2, v0}, Lcom/dodonew/online/widget/WheelView$ScrollerTask$2;-><init>(Lcom/dodonew/online/widget/WheelView$ScrollerTask;II)V

    invoke-virtual {v3, v4}, Lcom/dodonew/online/widget/WheelView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 598
    .end local v0    # "divided":I
    .end local v2    # "remainder":I
    :cond_3
    iget-object v3, p0, Lcom/dodonew/online/widget/WheelView$ScrollerTask;->this$0:Lcom/dodonew/online/widget/WheelView;

    invoke-static {v3}, Lcom/dodonew/online/widget/WheelView;->access$900(Lcom/dodonew/online/widget/WheelView;)V

    goto :goto_0
.end method
