.class Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$4;
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
    .line 235
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$4;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment$4;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;

    invoke-virtual {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/OnlyTimeFragment;->dismiss()V

    .line 240
    return-void
.end method
