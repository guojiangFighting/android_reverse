.class Lcom/dodonew/online/widget/SmoothCheckBox$7;
.super Ljava/lang/Object;
.source "SmoothCheckBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/SmoothCheckBox;->drawTickDelayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/SmoothCheckBox;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/SmoothCheckBox;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/SmoothCheckBox;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/dodonew/online/widget/SmoothCheckBox$7;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox$7;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$102(Lcom/dodonew/online/widget/SmoothCheckBox;Z)Z

    .line 396
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox$7;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/SmoothCheckBox;->postInvalidate()V

    .line 397
    return-void
.end method
