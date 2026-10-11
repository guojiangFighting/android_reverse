.class Lcom/dodonew/online/widget/SmoothCheckBox$2;
.super Ljava/lang/Object;
.source "SmoothCheckBox.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/SmoothCheckBox;->drawTickPath(Landroid/graphics/Canvas;)V
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
    .line 326
    iput-object p1, p0, Lcom/dodonew/online/widget/SmoothCheckBox$2;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox$2;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/SmoothCheckBox;->postInvalidate()V

    .line 330
    return-void
.end method
