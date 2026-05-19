.class public final Lio/branch/search/d3$b;
.super Lio/branch/search/d3;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/d3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:J

.field public final f:Ljava/lang/Exception;

.field public final g:Lio/branch/search/x1;


# direct methods
.method public constructor <init>(Lio/branch/search/KBranchRemoteConfiguration;IJLjava/lang/Exception;Lio/branch/search/x1;)V
    .registers 10

    const-string v0, "branchRemoteConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bind"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Lio/branch/search/internal/services/PingService;

    const/16 v1, 0x1f9

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lio/branch/search/d3;-><init>(ILjava/lang/Class;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput p2, p0, Lio/branch/search/d3$b;->d:I

    iput-wide p3, p0, Lio/branch/search/d3$b;->e:J

    iput-object p5, p0, Lio/branch/search/d3$b;->f:Ljava/lang/Exception;

    iput-object p6, p0, Lio/branch/search/d3$b;->g:Lio/branch/search/x1;

    invoke-virtual {p1}, Lio/branch/search/KBranchRemoteConfiguration;->l()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/d3$b;->c:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Lio/branch/search/KBranchRemoteConfiguration;IJLjava/lang/Exception;Lio/branch/search/x1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 16

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_9

    new-instance p6, Lio/branch/search/x1$b;

    invoke-direct {p6}, Lio/branch/search/x1$b;-><init>()V

    :cond_9
    move-object v6, p6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lio/branch/search/d3$b;-><init>(Lio/branch/search/KBranchRemoteConfiguration;IJLjava/lang/Exception;Lio/branch/search/x1;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo$Builder;
    .registers 5

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    invoke-virtual {p1, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    const-wide/16 v1, 0x7530

    invoke-virtual {p1, v1, v2, v0}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v1, p0, Lio/branch/search/d3$b;->c:Ljava/util/List;

    iget-object v2, p0, Lio/branch/search/d3$b;->g:Lio/branch/search/x1;

    invoke-virtual {p0, v1, v2}, Lio/branch/search/d3$b;->a(Ljava/util/List;Lio/branch/search/x1;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PING_PARAMS"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, p0, Lio/branch/search/d3$b;->d:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "QUERY_ID"

    invoke-virtual {v0, v1, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    return-object p1
.end method

.method public final a(Lio/branch/search/x1;Ljava/util/List;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/x1;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p2, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual {p1, v0}, Lio/branch/search/x1;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_22

    goto :goto_23

    :catchall_22
    move-object v3, v2

    :goto_23
    if-eqz v3, :cond_2c

    invoke-static {v3, v1}, Li4/k;->C([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    :cond_2c
    new-instance v1, Lh4/j;

    invoke-direct {v1, v0, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3e
    :goto_3e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_58

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lh4/j;

    iget-object p2, p2, Lh4/j;->b:Ljava/lang/Object;

    if-eqz p2, :cond_51

    const/4 p2, 0x1

    goto :goto_52

    :cond_51
    move p2, v1

    :goto_52
    if-eqz p2, :cond_3e

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_58
    sget-object v9, Lio/branch/search/d3$b$a;->a:Lio/branch/search/d3$b$a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v10, 0x1e

    const-string v4, "&"

    invoke-static/range {v3 .. v10}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/util/List;Lio/branch/search/x1;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/branch/search/x1;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0, p2, p1}, Lio/branch/search/d3$b;->a(Lio/branch/search/x1;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "type=error&id="

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lio/branch/search/d3$b;->d:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "&timestamp="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lio/branch/search/d3$b;->e:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "&error="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lio/branch/search/d3$b;->f:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_3d

    const/16 p2, 0x26

    invoke-static {p0, p2, p1}, La/a;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3d
    return-object p0
.end method

.method public final b()Ljava/lang/Exception;
    .registers 1

    iget-object p0, p0, Lio/branch/search/d3$b;->f:Ljava/lang/Exception;

    return-object p0
.end method
