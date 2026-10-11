.class Lcom/dodonew/online/ui/PayActivity$2;
.super Ljava/lang/Object;
.source "PayActivity.java"

# interfaces
.implements Lcom/dodonew/online/widget/SmoothCheckBox$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/PayActivity;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/PayActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/PayActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/PayActivity;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/dodonew/online/ui/PayActivity$2;->this$0:Lcom/dodonew/online/ui/PayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Lcom/dodonew/online/widget/SmoothCheckBox;Z)V
    .locals 1
    .param p1, "checkBox"    # Lcom/dodonew/online/widget/SmoothCheckBox;
    .param p2, "isChecked"    # Z

    .prologue
    .line 167
    iget-object v0, p0, Lcom/dodonew/online/ui/PayActivity$2;->this$0:Lcom/dodonew/online/ui/PayActivity;

    invoke-static {v0}, Lcom/dodonew/online/ui/PayActivity;->access$200(Lcom/dodonew/online/ui/PayActivity;)V

    .line 168
    return-void
.end method
