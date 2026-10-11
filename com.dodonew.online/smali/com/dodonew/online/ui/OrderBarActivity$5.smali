.class Lcom/dodonew/online/ui/OrderBarActivity$5;
.super Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;
.source "OrderBarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/ui/OrderBarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/OrderBarActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/OrderBarActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/OrderBarActivity;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/dodonew/online/ui/OrderBarActivity$5;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    invoke-direct {p0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateTimeSet(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity$5;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/OrderBarActivity;->access$400(Lcom/dodonew/online/ui/OrderBarActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/dodonew/online/ui/OrderBarActivity$5;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/OrderBarActivity;->access$300(Lcom/dodonew/online/ui/OrderBarActivity;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/dodonew/online/ui/OrderBarActivity$5;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    iget-object v1, p0, Lcom/dodonew/online/ui/OrderBarActivity$5;->this$0:Lcom/dodonew/online/ui/OrderBarActivity;

    invoke-static {v1}, Lcom/dodonew/online/ui/OrderBarActivity;->access$600(Lcom/dodonew/online/ui/OrderBarActivity;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dodonew/online/ui/OrderBarActivity;->access$502(Lcom/dodonew/online/ui/OrderBarActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    return-void
.end method
