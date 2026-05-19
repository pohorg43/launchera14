.class public final Lio/branch/search/e3;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lio/branch/search/m;


# direct methods
.method public constructor <init>(Lio/branch/search/m;)V
    .registers 3

    const-string v0, "branch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/branch/search/e3;->b:Lio/branch/search/m;

    invoke-virtual {p1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object p1

    const-string v0, "branch.applicationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lio/branch/search/e3;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/app/job/JobInfo;
    .registers 4

    iget-object p0, p0, Lio/branch/search/e3;->a:Landroid/content/Context;

    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/app/job/JobScheduler;

    const/4 v1, 0x0

    if-nez v0, :cond_e

    move-object p0, v1

    :cond_e
    check-cast p0, Landroid/app/job/JobScheduler;

    if-eqz p0, :cond_17

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0

    :cond_17
    return-object v1
.end method

.method public final a()Lio/branch/search/m;
    .registers 1

    iget-object p0, p0, Lio/branch/search/e3;->b:Lio/branch/search/m;

    return-object p0
.end method

.method public final a(Landroid/app/job/JobScheduler;)V
    .registers 6

    invoke-static {p1}, Lio/branch/search/f3;->c(Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2b
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_34
    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_52

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const/16 v3, 0x1f9

    if-eq v2, v3, :cond_4b

    const/4 v2, 0x1

    goto :goto_4c

    :cond_4b
    const/4 v2, 0x0

    :goto_4c
    if-eqz v2, :cond_34

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_52
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_56
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    goto :goto_56

    :cond_6a
    return-void
.end method

.method public final a(Lio/branch/search/d3;)Z
    .registers 2

    invoke-virtual {p1}, Lio/branch/search/d3;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lio/branch/search/e3;->a(I)Landroid/app/job/JobInfo;

    move-result-object p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final b(Landroid/app/job/JobScheduler;)V
    .registers 3

    iget-object p0, p0, Lio/branch/search/e3;->b:Lio/branch/search/m;

    invoke-virtual {p0}, Lio/branch/search/m;->i()Lio/branch/search/KBranchRemoteConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/KBranchRemoteConfiguration;->t()I

    move-result p0

    invoke-static {p1}, Lio/branch/search/f3;->b(Landroid/app/job/JobScheduler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p0, v0, :cond_22

    invoke-static {p1}, Lio/branch/search/f3;->a(Landroid/app/job/JobScheduler;)Landroid/app/job/JobInfo;

    move-result-object p0

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getId()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/app/job/JobScheduler;->cancel(I)V

    nop

    :cond_22
    return-void
.end method

.method public final b(Lio/branch/search/d3;)V
    .registers 4

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lio/branch/search/e3;->a:Landroid/content/Context;

    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    if-eqz v0, :cond_56

    instance-of v1, p1, Lio/branch/search/d3$a;

    if-eqz v1, :cond_19

    invoke-virtual {p0, v0}, Lio/branch/search/e3;->b(Landroid/app/job/JobScheduler;)V

    goto :goto_23

    :cond_19
    instance-of v1, p1, Lio/branch/search/d3$b;

    if-eqz v1, :cond_21

    invoke-virtual {p0, v0}, Lio/branch/search/e3;->a(Landroid/app/job/JobScheduler;)V

    goto :goto_23

    :cond_21
    instance-of v1, p1, Lio/branch/search/d3$c;

    :goto_23
    iget-object p0, p0, Lio/branch/search/e3;->a:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lio/branch/search/d3;->a(Landroid/content/Context;)Landroid/app/job/JobInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_31

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    if-nez v0, :cond_56

    const-string p0, "scheduling "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", success = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BranchServiceManager.schedule"

    invoke-static {p1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_56
    return-void
.end method

.method public final c(Lio/branch/search/d3;)V
    .registers 3

    const-string v0, "job"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/branch/search/e3;->a(Lio/branch/search/d3;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Lio/branch/search/e3;->b(Lio/branch/search/d3;)V

    :cond_e
    return-void
.end method
