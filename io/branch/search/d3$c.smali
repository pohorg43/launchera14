.class public final Lio/branch/search/d3$c;
.super Lio/branch/search/d3;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/d3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final c:J


# direct methods
.method public constructor <init>(J)V
    .registers 6

    const-class v0, Lio/branch/search/internal/services/ScheduledQueryService;

    const v1, 0x22946e

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lio/branch/search/d3;-><init>(ILjava/lang/Class;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-wide p1, p0, Lio/branch/search/d3$c;->c:J

    return-void
.end method


# virtual methods
.method public a(Landroid/app/job/JobInfo$Builder;)Landroid/app/job/JobInfo$Builder;
    .registers 6

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v0, p0, Lio/branch/search/d3$c;->c:J

    const/16 p0, 0xa

    int-to-long v2, p0

    div-long v2, v0, v2

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(JJ)Landroid/app/job/JobInfo$Builder;

    return-object p1
.end method
