.class Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView$1;
.super Ljava/lang/Object;
.source "MaterialFoodView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->setProgressValue(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView$1;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView$1;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    invoke-static {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->access$000(Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;)Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView$1;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    invoke-static {v0}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->access$000(Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;)Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView$1;->this$0:Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;

    invoke-static {v1}, Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;->access$100(Lcom/dodonew/online/widget/materialrefresh/MaterialFoodView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dodonew/online/widget/materialrefresh/CircleProgressBar;->setProgress(I)V

    .line 88
    :cond_0
    return-void
.end method
