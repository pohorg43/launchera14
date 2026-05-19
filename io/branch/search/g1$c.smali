.class public final Lio/branch/search/g1$c;
.super Landroid/content/pm/LauncherApps$Callback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/g1;-><init>(Landroid/content/Context;Lio/branch/search/v3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lio/branch/search/g1;


# direct methods
.method public constructor <init>(Lio/branch/search/g1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lio/branch/search/g1$c;->a:Lio/branch/search/g1;

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lio/branch/search/g1$c;->a:Lio/branch/search/g1;

    invoke-static {p0}, Lio/branch/search/g1;->a(Lio/branch/search/g1;)Lio/branch/search/v3;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/branch/search/v3;->d(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string p0, "packageName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "user"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p0, p0, Lio/branch/search/g1$c;->a:Lio/branch/search/g1;

    invoke-static {p0}, Lio/branch/search/g1;->a(Lio/branch/search/g1;)Lio/branch/search/v3;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lio/branch/search/v3;->e(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string p0, "packageNames"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "user"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string p0, "packageNames"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "user"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onShortcutsChanged(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V
    .registers 6
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shortcuts"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/List;->size()I

    new-instance p2, Lh4/j;

    invoke-direct {p2, p1, p3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lio/branch/search/g1$c;->a:Lio/branch/search/g1;

    invoke-static {v0, p2}, Lio/branch/search/g1;->a(Lio/branch/search/g1;Lh4/j;)Lio/branch/search/j5;

    move-result-object v0

    new-instance v1, Lio/branch/search/g1$c$a;

    invoke-direct {v1, p0, p2, p1, p3}, Lio/branch/search/g1$c$a;-><init>(Lio/branch/search/g1$c;Lh4/j;Ljava/lang/String;Landroid/os/UserHandle;)V

    invoke-virtual {v0, v1}, Lio/branch/search/j5;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method
