.class Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "SlideDateTimeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;


# direct methods
.method public constructor <init>(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;Landroid/support/v4/app/FragmentManager;)V
    .locals 0
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;

    .prologue
    .line 341
    iput-object p1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 342
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 343
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$200(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/16 v8, 0x64

    const/16 v3, 0xc

    const/16 v2, 0xb

    .line 347
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$200(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 349
    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$300(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 350
    invoke-static {v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 351
    invoke-static {v2}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 352
    invoke-static {v3}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$400(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Z

    move-result v3

    iget-object v4, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 353
    invoke-static {v4}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$500(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Z

    move-result v4

    .line 348
    invoke-static {v0, v1, v2, v3, v4}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->newInstance(IIIZZ)Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    move-result-object v7

    .line 354
    .local v7, "timeFragment":Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    invoke-virtual {v7, v0, v8}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 378
    .end local v7    # "timeFragment":Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;
    :goto_0
    return-object v7

    .line 357
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 378
    const/4 v7, 0x0

    goto :goto_0

    .line 359
    :pswitch_0
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 360
    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$300(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 361
    invoke-static {v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 362
    invoke-static {v2}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 363
    invoke-static {v3}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 364
    invoke-static {v4}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$600(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Ljava/util/Date;

    move-result-object v4

    iget-object v5, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 365
    invoke-static {v5}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$700(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Ljava/util/Date;

    move-result-object v5

    .line 359
    invoke-static/range {v0 .. v5}, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->newInstance(IIIILjava/util/Date;Ljava/util/Date;)Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;

    move-result-object v6

    .line 366
    .local v6, "dateFragment":Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    invoke-virtual {v6, v0, v8}, Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    move-object v7, v6

    .line 367
    goto :goto_0

    .line 369
    .end local v6    # "dateFragment":Lcom/dodonew/online/widget/slidedatetimepicker/DateFragment;
    :pswitch_1
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 370
    invoke-static {v0}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$300(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 371
    invoke-static {v1}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 372
    invoke-static {v2}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$100(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 373
    invoke-static {v3}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$400(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Z

    move-result v3

    iget-object v4, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    .line 374
    invoke-static {v4}, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;->access$500(Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;)Z

    move-result v4

    .line 369
    invoke-static {v0, v1, v2, v3, v4}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->newInstance(IIIZZ)Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;

    move-result-object v7

    .line 375
    .restart local v7    # "timeFragment":Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;
    iget-object v0, p0, Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment$ViewPagerAdapter;->this$0:Lcom/dodonew/online/widget/slidedatetimepicker/SlideDateTimeDialogFragment;

    const/16 v1, 0xc8

    invoke-virtual {v7, v0, v1}, Lcom/dodonew/online/widget/slidedatetimepicker/TimeFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    goto :goto_0

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
