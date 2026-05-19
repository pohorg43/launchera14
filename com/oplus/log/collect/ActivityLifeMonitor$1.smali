.class Lcom/oplus/log/collect/ActivityLifeMonitor$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/collect/ActivityLifeMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/log/collect/ActivityLifeMonitor;


# direct methods
.method public constructor <init>(Lcom/oplus/log/collect/ActivityLifeMonitor;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/collect/ActivityLifeMonitor$1;->this$0:Lcom/oplus/log/collect/ActivityLifeMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor$1;->this$0:Lcom/oplus/log/collect/ActivityLifeMonitor;

    invoke-static {v0}, Lcom/oplus/log/collect/ActivityLifeMonitor;->access$100(Lcom/oplus/log/collect/ActivityLifeMonitor;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor$1;->this$0:Lcom/oplus/log/collect/ActivityLifeMonitor;

    invoke-static {v0}, Lcom/oplus/log/collect/ActivityLifeMonitor;->access$100(Lcom/oplus/log/collect/ActivityLifeMonitor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_15

    goto :goto_2f

    :cond_15
    iget-object p0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor$1;->this$0:Lcom/oplus/log/collect/ActivityLifeMonitor;

    invoke-static {p0}, Lcom/oplus/log/collect/ActivityLifeMonitor;->access$100(Lcom/oplus/log/collect/ActivityLifeMonitor;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/log/collect/auto/IAutoCollect;

    invoke-interface {v0, p1}, Lcom/oplus/log/collect/auto/IAutoCollect;->onActivityStart(Landroid/content/Context;)V

    goto :goto_1f

    :cond_2f
    :goto_2f
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor$1;->this$0:Lcom/oplus/log/collect/ActivityLifeMonitor;

    invoke-static {p0}, Lcom/oplus/log/collect/ActivityLifeMonitor;->access$008(Lcom/oplus/log/collect/ActivityLifeMonitor;)I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor$1;->this$0:Lcom/oplus/log/collect/ActivityLifeMonitor;

    invoke-static {v0}, Lcom/oplus/log/collect/ActivityLifeMonitor;->access$100(Lcom/oplus/log/collect/ActivityLifeMonitor;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor$1;->this$0:Lcom/oplus/log/collect/ActivityLifeMonitor;

    invoke-static {v0}, Lcom/oplus/log/collect/ActivityLifeMonitor;->access$100(Lcom/oplus/log/collect/ActivityLifeMonitor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_15

    goto :goto_34

    :cond_15
    iget-object v0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor$1;->this$0:Lcom/oplus/log/collect/ActivityLifeMonitor;

    invoke-static {v0}, Lcom/oplus/log/collect/ActivityLifeMonitor;->access$100(Lcom/oplus/log/collect/ActivityLifeMonitor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/log/collect/auto/IAutoCollect;

    invoke-interface {v1, p1}, Lcom/oplus/log/collect/auto/IAutoCollect;->onActivityStop(Landroid/content/Context;)V

    goto :goto_1f

    :cond_2f
    iget-object p0, p0, Lcom/oplus/log/collect/ActivityLifeMonitor$1;->this$0:Lcom/oplus/log/collect/ActivityLifeMonitor;

    invoke-static {p0}, Lcom/oplus/log/collect/ActivityLifeMonitor;->access$010(Lcom/oplus/log/collect/ActivityLifeMonitor;)I

    :cond_34
    :goto_34
    return-void
.end method
