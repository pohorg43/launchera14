.class public final Lio/branch/search/g3;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:I = 0x436a3efa


# direct methods
.method public static final a(Landroid/app/job/JobScheduler;I)Landroid/app/job/JobInfo;
    .registers 2

    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Landroid/app/job/JobParameters;)Z
    .registers 2

    const-string v0, "params"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p0

    sget v0, Lio/branch/search/g3;->a:I

    if-ne p0, v0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public static final a(Lio/branch/search/m;)Z
    .registers 2

    const-string v0, "branchSearchInternal"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/app/job/JobScheduler;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    const-string v0, "jobScheduler"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lio/branch/search/g3;->a:I

    invoke-static {p0, v0}, Lio/branch/search/g3;->a(Landroid/app/job/JobScheduler;I)Landroid/app/job/JobInfo;

    move-result-object v0

    if-eqz v0, :cond_27

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/job/JobScheduler;->cancel(I)V

    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return p0
.end method
