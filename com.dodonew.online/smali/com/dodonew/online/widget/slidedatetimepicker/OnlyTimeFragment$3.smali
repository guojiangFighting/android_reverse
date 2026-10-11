.class Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$3;
.super Ljava/lang/Object;
.source "OnlyTimeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->initButtons()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;


# direct methods
.method constructor <init>(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$3;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$3;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$200(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$TimeChangedListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Listener no longer exists for mOkButton"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$3;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$200(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$TimeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$3;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-static {v1}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$000(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$3;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-static {v2}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$TimeChangedListener;->onDateTimeSet(II)V

    .line 231
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$3;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->dismiss()V

    .line 232
    return-void
.end method
