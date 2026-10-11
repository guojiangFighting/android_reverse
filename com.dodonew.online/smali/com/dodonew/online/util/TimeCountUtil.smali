.class public Lcom/dodonew/online/util/TimeCountUtil;
.super Landroid/os/CountDownTimer;
.source "TimeCountUtil.java"


# instance fields
.field private btn:Landroid/widget/Button;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Button;JJ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "btn"    # Landroid/widget/Button;
    .param p3, "millisInFuture"    # J
    .param p5, "countDownInterval"    # J

    .prologue
    .line 28
    invoke-direct {p0, p3, p4, p5, p6}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 29
    iput-object p1, p0, Lcom/dodonew/online/util/TimeCountUtil;->context:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/dodonew/online/util/TimeCountUtil;->btn:Landroid/widget/Button;

    .line 31
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/dodonew/online/util/TimeCountUtil;->btn:Landroid/widget/Button;

    const-string v1, "\u91cd\u83b7\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/dodonew/online/util/TimeCountUtil;->btn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 48
    iget-object v0, p0, Lcom/dodonew/online/util/TimeCountUtil;->btn:Landroid/widget/Button;

    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 49
    return-void
.end method

.method public onTick(J)V
    .locals 7
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v6, 0x0

    .line 35
    iget-object v2, p0, Lcom/dodonew/online/util/TimeCountUtil;->btn:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setClickable(Z)V

    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x3e8

    div-long v4, p1, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u79d2\u540e\u53ef\u91cd\u65b0\u53d1\u9001"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/dodonew/online/util/TimeCountUtil;->btn:Landroid/widget/Button;

    const v3, 0x7f02005e

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 39
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 40
    .local v0, "span":Landroid/text/Spannable;
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const/high16 v3, -0x10000

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v3, 0x2

    const/16 v4, 0x21

    invoke-interface {v0, v2, v6, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 41
    iget-object v2, p0, Lcom/dodonew/online/util/TimeCountUtil;->btn:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 42
    return-void
.end method
