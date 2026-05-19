.class public final Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->onMoveToForeground()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.internal.local.appUsage.AppUsageMonitor$onMoveToForeground$1"
    f = "AppUsageMonitor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

.field public final synthetic b:Lio/branch/search/internal/interfaces/LocalInterface;

.field public final synthetic c:Lio/branch/search/n1;

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public constructor <init>(Lio/branch/search/internal/local/appUsage/AppUsageMonitor;Lio/branch/search/internal/interfaces/LocalInterface;Lio/branch/search/n1;JJLl4/d;)V
    .registers 9

    iput-object p1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->a:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

    iput-object p2, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->b:Lio/branch/search/internal/interfaces/LocalInterface;

    iput-object p3, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->c:Lio/branch/search/n1;

    iput-wide p4, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->d:J

    iput-wide p6, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->e:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p8}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;

    iget-object v1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->a:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

    iget-object v2, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->b:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object v3, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->c:Lio/branch/search/n1;

    iget-wide v4, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->d:J

    iget-wide v6, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->e:J

    move-object v0, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v8}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;-><init>(Lio/branch/search/internal/local/appUsage/AppUsageMonitor;Lio/branch/search/internal/interfaces/LocalInterface;Lio/branch/search/n1;JJLl4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 11

    sget-object v0, Lm4/a;->a:Lm4/a;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->b:Lio/branch/search/internal/interfaces/LocalInterface;

    iget-object p1, p1, Lio/branch/search/internal/interfaces/LocalInterface;->a:Lio/branch/search/v3;

    iget-object v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->c:Lio/branch/search/n1;

    iget-wide v1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->d:J

    iget-wide v3, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->e:J

    const-wide/16 v5, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-static/range {v0 .. v8}, Lio/branch/search/n1;->a(Lio/branch/search/n1;JJJILjava/lang/Object;)Lj7/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/branch/search/v3;->a(Lj7/h;)V

    iget-object v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->c:Lio/branch/search/n1;

    iget-wide v1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->d:J

    iget-wide v3, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->e:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lio/branch/search/n1;->a(JJ)Lj7/h;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/branch/search/v3;->b(Lj7/h;)V

    iget-object p1, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->a:Lio/branch/search/internal/local/appUsage/AppUsageMonitor;

    iget-wide v0, p0, Lio/branch/search/internal/local/appUsage/AppUsageMonitor$b;->e:J

    iget-object p0, p1, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->b:Lio/branch/search/m;

    invoke-virtual {p0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lio/branch/search/b5$a;->a:Lio/branch/search/b5$a;

    invoke-static {p0, v2}, Lio/branch/search/b5;->a(Landroid/content/Context;Lio/branch/search/b5$a;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v2, "BranchSharedPrefs.get(br…redPrefs.Files.analytics)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "app_usages_last_save_time"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p1, Lio/branch/search/internal/local/appUsage/AppUsageMonitor;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
