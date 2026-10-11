.class Lcom/dodonew/online/widget/SmoothCheckBox$1;
.super Ljava/lang/Object;
.source "SmoothCheckBox.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/SmoothCheckBox;->init(Landroid/util/AttributeSet;)V
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
    .line 120
    iput-object p1, p0, Lcom/dodonew/online/widget/SmoothCheckBox$1;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox$1;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-static {v0}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$000(Lcom/dodonew/online/widget/SmoothCheckBox;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox$1;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/SmoothCheckBox;->toggle()V

    .line 125
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox$1;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$102(Lcom/dodonew/online/widget/SmoothCheckBox;Z)Z

    .line 126
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox$1;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$202(Lcom/dodonew/online/widget/SmoothCheckBox;F)F

    .line 127
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox$1;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/SmoothCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox$1;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-static {v0}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$300(Lcom/dodonew/online/widget/SmoothCheckBox;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/dodonew/online/widget/SmoothCheckBox$1;->this$0:Lcom/dodonew/online/widget/SmoothCheckBox;

    invoke-static {v0}, Lcom/dodonew/online/widget/SmoothCheckBox;->access$400(Lcom/dodonew/online/widget/SmoothCheckBox;)V

    goto :goto_0
.end method
