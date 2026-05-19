.class public final Lio/branch/search/h5$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/branch/search/h5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lio/branch/search/h5$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lio/branch/search/h5$a;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/Context;Lio/branch/search/IBranchShortcutHandler;ILjava/lang/Object;)Landroid/graphics/drawable/Drawable;
    .registers 14

    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_1e

    invoke-static {}, Lio/branch/search/m;->f()Lio/branch/search/m;

    move-result-object p5

    if-eqz p5, :cond_17

    invoke-virtual {p5}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object p5

    if-eqz p5, :cond_17

    invoke-virtual {p5}, Lio/branch/search/BranchConfiguration;->p()Lio/branch/search/IBranchShortcutHandler;

    move-result-object p5

    if-eqz p5, :cond_17

    goto :goto_1e

    :cond_17
    sget-object p5, Lio/branch/search/IBranchShortcutHandler;->a:Lio/branch/search/IBranchShortcutHandler;

    const-string p6, "IBranchShortcutHandler.DEFAULT"

    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1e
    :goto_1e
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/branch/search/h5$a;->a(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/Context;Lio/branch/search/IBranchShortcutHandler;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/branch/search/h5$a;->a(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object p0

    const-string p2, "::"

    invoke-static {p1, p2}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lio/branch/search/h5;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2c

    goto :goto_6b

    :cond_2c
    :try_start_2c
    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/pm/LauncherApps;->getApplicationInfo(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "icon"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const-string v0, "icon.constantState!!.newDrawable().mutate()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    invoke-virtual {p3, p1, p0}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Lio/branch/search/h5;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_69
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_69} :catch_6a

    goto :goto_6b

    :catch_6a
    const/4 v0, 0x0

    :goto_6b
    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/m;)Landroid/graphics/drawable/Drawable;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "packageName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_17

    sget-object p0, Lio/branch/search/h5;->Companion:Lio/branch/search/h5$a;

    invoke-virtual {p3}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object p3

    const-string v0, "it.applicationContext"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/h5$a;->a(Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return-object p0
.end method

.method public final a(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/Context;Lio/branch/search/IBranchShortcutHandler;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shortcutHandler"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lio/branch/search/h5$a;->a(Landroid/os/UserHandle;)Landroid/os/UserHandle;

    move-result-object p0

    const-string p2, "::"

    invoke-static {p1, p2}, Landroidx/appcompat/widget/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/UserHandle;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lio/branch/search/h5;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_46

    invoke-interface {p5, p4, p3, p1, p0}, Lio/branch/search/IBranchShortcutHandler;->loadShortcutDrawable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_46

    invoke-static {}, Lio/branch/search/h5;->a()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    invoke-static {}, Lio/branch/search/h5;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Lio/branch/search/m;)Landroid/graphics/drawable/Drawable;
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "packageName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "id"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_31

    sget-object v0, Lio/branch/search/h5;->Companion:Lio/branch/search/h5$a;

    invoke-virtual {p4}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v4

    const-string p0, "it.applicationContext"

    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object p0

    const-string p4, "it.branchConfiguration"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/branch/search/BranchConfiguration;->p()Lio/branch/search/IBranchShortcutHandler;

    move-result-object v5

    const-string p0, "it.branchConfiguration.shortcutHandler"

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lio/branch/search/h5$a;->a(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/Context;Lio/branch/search/IBranchShortcutHandler;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_32

    :cond_31
    const/4 p0, 0x0

    :goto_32
    return-object p0
.end method

.method public final a(Landroid/os/UserHandle;)Landroid/os/UserHandle;
    .registers 2

    sget-object p0, Lio/branch/search/h5$a$a;->a:Lio/branch/search/h5$a$a;

    if-eqz p1, :cond_5

    goto :goto_9

    :cond_5
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    :goto_9
    if-eqz p1, :cond_c

    goto :goto_11

    :cond_c
    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lio/branch/search/h5$a$a;->a(I)Landroid/os/UserHandle;

    move-result-object p1

    :goto_11
    return-object p1
.end method

.method public final a()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lio/branch/search/h5;->a()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method
