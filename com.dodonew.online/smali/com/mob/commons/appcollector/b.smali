.class Lcom/mob/commons/appcollector/b;
.super Landroid/os/HandlerThread;


# instance fields
.field final synthetic a:Lcom/mob/commons/appcollector/PackageCollector;


# direct methods
.method constructor <init>(Lcom/mob/commons/appcollector/PackageCollector;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mob/commons/appcollector/b;->a:Lcom/mob/commons/appcollector/PackageCollector;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/mob/commons/appcollector/b;->a:Lcom/mob/commons/appcollector/PackageCollector;

    invoke-static {v0}, Lcom/mob/commons/appcollector/PackageCollector;->a(Lcom/mob/commons/appcollector/PackageCollector;)Lcom/mob/commons/appcollector/PackageCollector$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mob/commons/appcollector/PackageCollector$a;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mob/commons/appcollector/b;->a:Lcom/mob/commons/appcollector/PackageCollector;

    invoke-static {v0}, Lcom/mob/commons/appcollector/PackageCollector;->a(Lcom/mob/commons/appcollector/PackageCollector;)Lcom/mob/commons/appcollector/PackageCollector$a;

    move-result-object v0

    iget-object v1, p0, Lcom/mob/commons/appcollector/b;->a:Lcom/mob/commons/appcollector/PackageCollector;

    invoke-static {v1}, Lcom/mob/commons/appcollector/PackageCollector;->b(Lcom/mob/commons/appcollector/PackageCollector;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mob/commons/appcollector/PackageCollector$a;->a(Ljava/util/HashMap;)V

    :goto_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/mob/commons/appcollector/b;->a:Lcom/mob/commons/appcollector/PackageCollector;

    invoke-static {v0}, Lcom/mob/commons/appcollector/PackageCollector;->c(Lcom/mob/commons/appcollector/PackageCollector;)V

    goto :goto_0
.end method
