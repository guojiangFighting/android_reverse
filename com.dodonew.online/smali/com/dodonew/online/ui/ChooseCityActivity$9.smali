.class Lcom/dodonew/online/ui/ChooseCityActivity$9;
.super Ljava/lang/Object;
.source "ChooseCityActivity.java"

# interfaces
.implements Lcom/dodonew/online/view/CityHeaderView$CityOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dodonew/online/ui/ChooseCityActivity;->setHotCities([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/ui/ChooseCityActivity;


# direct methods
.method constructor <init>(Lcom/dodonew/online/ui/ChooseCityActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/dodonew/online/ui/ChooseCityActivity;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/dodonew/online/ui/ChooseCityActivity$9;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Lcom/dodonew/online/bean/City;)V
    .locals 1
    .param p1, "city"    # Lcom/dodonew/online/bean/City;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/dodonew/online/ui/ChooseCityActivity$9;->this$0:Lcom/dodonew/online/ui/ChooseCityActivity;

    invoke-static {v0, p1}, Lcom/dodonew/online/ui/ChooseCityActivity;->access$200(Lcom/dodonew/online/ui/ChooseCityActivity;Lcom/dodonew/online/bean/City;)V

    .line 370
    return-void
.end method
