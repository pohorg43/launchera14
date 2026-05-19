.class public final Lio/branch/search/a0$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Landroid/content/pm/LauncherApps;

.field public final b:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "context.getSystemService(LauncherApps::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lio/branch/search/a0$b;->a:Landroid/content/pm/LauncherApps;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "context.getSystemService(UserManager::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lio/branch/search/a0$b;->b:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/pm/LauncherApps;
    .registers 1

    iget-object p0, p0, Lio/branch/search/a0$b;->a:Landroid/content/pm/LauncherApps;

    return-object p0
.end method

.method public final b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/branch/search/a0$b;->a:Landroid/content/pm/LauncherApps;

    invoke-virtual {p0}, Landroid/content/pm/LauncherApps;->getProfiles()Ljava/util/List;

    move-result-object p0

    const-string v0, "launcherApps.profiles"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c()Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lio/branch/search/a0$b;->b:Landroid/os/UserManager;

    return-object p0
.end method
