.class public Lio/branch/search/v3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lio/branch/search/k2$e;
.implements Lio/branch/search/k2$f;


# instance fields
.field public final a:Landroid/content/SharedPreferences;

.field public final b:Lio/branch/search/q4;

.field public c:Lio/branch/search/u3;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/branch/search/t3;",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/w3;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lio/branch/search/t3;",
            ">;>;"
        }
    .end annotation
.end field

.field public f:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/l3;",
            ">;>;"
        }
    .end annotation
.end field

.field public g:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lio/branch/search/o3;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:Lio/branch/search/o5;

.field public final i:Lio/branch/search/m;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final j:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final k:Landroid/os/UserManager;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public l:Lio/branch/search/h2;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public m:Landroid/content/pm/LauncherApps;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/branch/search/m;)V
    .registers 6
    .param p1  # Lio/branch/search/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lio/branch/search/q4;

    const-string v1, "BranchSQLiteManager"

    invoke-direct {v0, v1}, Lio/branch/search/q4;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/branch/search/v3;->b:Lio/branch/search/q4;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/v3;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/branch/search/v3;->e:Ljava/util/Map;

    new-instance v0, Lio/branch/search/o5;

    const/4 v1, 0x2

    new-array v1, v1, [Lio/branch/search/o5$c;

    new-instance v2, Lio/branch/search/o5$b;

    invoke-direct {v2}, Lio/branch/search/o5$b;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lio/branch/search/o5$a;

    invoke-direct {v2}, Lio/branch/search/o5$a;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lio/branch/search/o5;-><init>([Lio/branch/search/o5$c;)V

    iput-object v0, p0, Lio/branch/search/v3;->h:Lio/branch/search/o5;

    iput-object p1, p0, Lio/branch/search/v3;->i:Lio/branch/search/m;

    invoke-virtual {p1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/branch/search/v3;->j:Landroid/content/Context;

    invoke-virtual {p1}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lio/branch/search/b5$a;->d:Lio/branch/search/b5$a;

    invoke-static {p1, v1}, Lio/branch/search/b5;->a(Landroid/content/Context;Lio/branch/search/b5$a;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lio/branch/search/v3;->a:Landroid/content/SharedPreferences;

    const-class p1, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lio/branch/search/v3;->k:Landroid/os/UserManager;

    const-class p1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lio/branch/search/v3;->m:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method public static synthetic a(Lio/branch/search/v3;Lio/branch/search/t3;Ljava/util/List;Lio/branch/search/i2;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lio/branch/search/v3;->a(Lio/branch/search/t3;Ljava/util/List;Lio/branch/search/i2;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lio/branch/search/v3;->b:Lio/branch/search/q4;

    invoke-virtual {p0}, Lio/branch/search/q4;->b()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public final a(Landroid/content/pm/LauncherActivityInfo;Lio/branch/search/a0$a;)Lio/branch/search/l3;
    .registers 24
    .param p1  # Landroid/content/pm/LauncherActivityInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Lio/branch/search/a0$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-object v3, v0, Lio/branch/search/v3;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/LauncherActivityInfo;->getFirstInstallTime()J

    move-result-wide v5

    long-to-double v5, v5

    const-wide v7, 0x3f50624dd2f1a9fcL  # 0.001

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x3fe0000000000000L  # 0.5

    add-double/2addr v5, v7

    double-to-long v13, v5

    iget-object v5, v0, Lio/branch/search/v3;->i:Lio/branch/search/m;

    invoke-virtual {v5}, Lio/branch/search/m;->e()Lio/branch/search/e;

    move-result-object v5

    invoke-virtual {v5}, Lio/branch/search/e;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lio/branch/search/v3;->c(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-virtual {v0, v3, v4}, Lio/branch/search/v3;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3b

    :cond_37
    invoke-virtual {v4, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_3b
    iget-object v0, v0, Lio/branch/search/v3;->i:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/BranchConfiguration;->b()Lio/branch/search/IBranchAppDataOverrideHandler;

    move-result-object v0

    const/4 v5, 0x0

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lio/branch/search/a0$a;->a()Landroid/os/UserHandle;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lio/branch/search/IBranchAppDataOverrideHandler;->fetchOverride(Ljava/lang/String;Landroid/os/UserHandle;)Lio/branch/search/AppDataOverride;

    move-result-object v0

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lio/branch/search/AppDataOverride;->getLabel()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_59

    :cond_58
    move-object v11, v5

    :goto_59
    new-instance v0, Lio/branch/search/l3;

    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lio/branch/search/a0$a;->b()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x1

    sub-long v3, v1, v13

    const-wide/16 v5, 0x12c

    cmp-long v3, v3, v5

    if-gez v3, :cond_74

    move-wide v15, v13

    goto :goto_75

    :cond_74
    move-wide v15, v1

    :goto_75
    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v20}, Lio/branch/search/l3;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZJJJJ)V

    return-object v0
.end method

.method public final a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;
    .registers 5

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iget-object v1, p0, Lio/branch/search/v3;->j:Landroid/content/Context;

    invoke-static {v1}, Lio/branch/search/Util;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    :try_start_e
    iget-object v1, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iget-object p0, p0, Lio/branch/search/v3;->j:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    iget p0, p2, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_28

    return-object p0

    :catch_28
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public a(Lio/branch/search/BranchLocalSearchRequest;Lio/branch/search/p0;)Ljava/util/List;
    .registers 10
    .param p1  # Lio/branch/search/BranchLocalSearchRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/BranchLocalSearchRequest;",
            "Lio/branch/search/p0;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/BranchLocalAppResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v0}, Lio/branch/search/u3;->e()Lio/branch/search/m3;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/m3;->c()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_18
    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/branch/search/l3;

    iget-object v4, p0, Lio/branch/search/v3;->k:Landroid/os/UserManager;

    iget-object v5, v3, Lio/branch/search/l3;->b:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v4

    iget-object v5, p0, Lio/branch/search/v3;->i:Lio/branch/search/m;

    invoke-virtual {v5}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v3, Lio/branch/search/l3;->a:Ljava/lang/String;

    invoke-static {v5, v6, v4}, Lio/branch/search/Util;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_18

    iget-object v4, v3, Lio/branch/search/l3;->d:Ljava/lang/String;

    if-eqz v4, :cond_43

    goto :goto_45

    :cond_43
    iget-object v4, v3, Lio/branch/search/l3;->c:Ljava/lang/String;

    :goto_45
    iget-object v5, p0, Lio/branch/search/v3;->h:Lio/branch/search/o5;

    invoke-virtual {p1}, Lio/branch/search/BranchLocalSearchRequest;->getQuery()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lio/branch/search/o5;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, v3, Lio/branch/search/l3;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_5a
    iget-object p1, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {p1}, Lio/branch/search/u3;->f()Lio/branch/search/p3;

    move-result-object p1

    invoke-virtual {p1, v1}, Lio/branch/search/p3;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iget-object p0, p0, Lio/branch/search/v3;->i:Lio/branch/search/m;

    invoke-virtual {p0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v1

    const/4 v6, 0x0

    const-string v5, "local_search"

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lio/branch/search/p4;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lio/branch/search/p0;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final a(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/o3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/v3;->m:Landroid/content/pm/LauncherApps;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1, p2}, Lio/branch/search/v3;->c(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-virtual {p0, p1, p2}, Lio/branch/search/v3;->b(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)Ljava/util/List;
    .registers 7
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lio/branch/search/o3;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/BranchShortcutList;

    iget-object p0, p0, Lio/branch/search/v3;->k:Landroid/os/UserManager;

    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lio/branch/search/BranchShortcutList;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v0, p1}, Lio/branch/search/BranchShortcutList;->add(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_13

    :cond_23
    invoke-virtual {v0}, Lio/branch/search/BranchShortcutList;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public a(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lio/branch/search/t3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/v3;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object p0, p0, Lio/branch/search/v3;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0

    :cond_11
    iget-object v0, p0, Lio/branch/search/v3;->a:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "raw_sqlite_local_replica_whitelists_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    if-eqz v0, :cond_48

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lio/branch/search/t3;->valueOf(Ljava/lang/String;)Lio/branch/search/t3;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_34

    :cond_48
    iget-object p0, p0, Lio/branch/search/v3;->e:Ljava/util/Map;

    invoke-interface {p0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public a(I)V
    .registers 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lio/branch/search/v3;->i:Lio/branch/search/m;

    invoke-virtual {v0}, Lio/branch/search/m;->c()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lio/branch/search/a0$b;

    invoke-direct {v1, v0}, Lio/branch/search/a0$b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lio/branch/search/a0$b;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v1}, Lio/branch/search/a0$b;->c()Landroid/os/UserManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v2

    int-to-long v4, p1

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tasked to clear packages for stale user with id "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", however, that user is still valid!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SQLiteManager.removePackagesForStaleUser"

    invoke-static {p1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_48
    iget-object v0, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v0}, Lio/branch/search/u3;->e()Lio/branch/search/m3;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lio/branch/search/m3;->a(J)V

    iget-object v0, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v0}, Lio/branch/search/u3;->f()Lio/branch/search/p3;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lio/branch/search/p3;->a(J)V

    iget-object v0, p0, Lio/branch/search/v3;->l:Lio/branch/search/h2;

    invoke-interface {v0}, Lio/branch/search/h2;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_65
    :goto_65
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ad

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/i2;

    const/4 v2, 0x2

    const-string v3, "local_packages"

    const-string v4, "local_entities"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_7f
    invoke-virtual {v1}, Lio/branch/search/i2;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lio/branch/search/v3;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    const/4 v6, 0x0

    :goto_88
    if-ge v6, v2, :cond_9a

    aget-object v7, v3, v6

    if-eqz v5, :cond_97

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_97

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_97
    add-int/lit8 v6, v6, 0x1

    goto :goto_88

    :cond_9a
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_65

    invoke-virtual {v1, p1, v4}, Lio/branch/search/i2;->a(ILjava/util/List;)Ljava/lang/Exception;
    :try_end_a3
    .catch Landroid/database/SQLException; {:try_start_7f .. :try_end_a3} :catch_a4

    goto :goto_65

    :catch_a4
    move-exception v1

    iget-object v2, p0, Lio/branch/search/v3;->i:Lio/branch/search/m;

    const-string v3, "SQLiteManager.removeDataForStaleUser"

    invoke-virtual {v2, v3, v1}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_65

    :cond_ad
    return-void
.end method

.method public a(Lio/branch/search/e4;)V
    .registers 4
    .param p1  # Lio/branch/search/e4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/v3;->b:Lio/branch/search/q4;

    new-instance v1, Lio/branch/search/v3$d;

    invoke-direct {v1, p0, p1}, Lio/branch/search/v3$d;-><init>(Lio/branch/search/v3;Lio/branch/search/e4;)V

    invoke-virtual {v0, v1}, Lio/branch/search/q4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lio/branch/search/f4;)V
    .registers 4
    .param p1  # Lio/branch/search/f4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/v3;->b:Lio/branch/search/q4;

    new-instance v1, Lio/branch/search/v3$c;

    invoke-direct {v1, p0, p1}, Lio/branch/search/v3$c;-><init>(Lio/branch/search/v3;Lio/branch/search/f4;)V

    invoke-virtual {v0, v1}, Lio/branch/search/q4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lio/branch/search/h2;)V
    .registers 6
    .param p1  # Lio/branch/search/h2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lio/branch/search/u3;

    iget-object v1, p0, Lio/branch/search/v3;->j:Landroid/content/Context;

    invoke-direct {v0, v1}, Lio/branch/search/u3;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    iput-object p1, p0, Lio/branch/search/v3;->l:Lio/branch/search/h2;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/branch/search/v3;->a(Ljava/lang/Runnable;)V

    new-instance v0, Lio/branch/search/x3;

    iget-object v1, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    iget-object v1, v1, Lio/branch/search/s3;->a:Landroidx/room/RoomDatabase;

    invoke-static {}, Lio/branch/search/c5;->b()Lm7/j0;

    move-result-object v2

    iget-object v3, p0, Lio/branch/search/v3;->b:Lio/branch/search/q4;

    invoke-direct {v0, v1, v2, v3}, Lio/branch/search/x3;-><init>(Landroidx/room/RoomDatabase;Lm7/j0;Lio/branch/search/q4;)V

    iget-object v1, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v1}, Lio/branch/search/u3;->e()Lio/branch/search/m3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/branch/search/m3;->a(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/v3;->f:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v1}, Lio/branch/search/u3;->f()Lio/branch/search/p3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/branch/search/p3;->a(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;

    move-result-object v1

    iput-object v1, p0, Lio/branch/search/v3;->g:Landroidx/lifecycle/LiveData;

    iget-object v1, p0, Lio/branch/search/v3;->d:Ljava/util/Map;

    sget-object v2, Lio/branch/search/t3;->c:Lio/branch/search/t3;

    iget-object v3, p0, Lio/branch/search/v3;->f:Landroidx/lifecycle/LiveData;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/branch/search/v3;->d:Ljava/util/Map;

    sget-object v2, Lio/branch/search/t3;->d:Lio/branch/search/t3;

    iget-object v3, p0, Lio/branch/search/v3;->g:Landroidx/lifecycle/LiveData;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/branch/search/v3;->d:Ljava/util/Map;

    sget-object v2, Lio/branch/search/t3;->h:Lio/branch/search/t3;

    iget-object v3, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v3}, Lio/branch/search/u3;->c()Lio/branch/search/n4;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/branch/search/n4;->a(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/branch/search/v3;->d:Ljava/util/Map;

    sget-object v2, Lio/branch/search/t3;->l:Lio/branch/search/t3;

    iget-object v3, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v3}, Lio/branch/search/u3;->d()Lio/branch/search/a4;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/branch/search/a4;->a(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/branch/search/v3;->d:Ljava/util/Map;

    sget-object v2, Lio/branch/search/t3;->g:Lio/branch/search/t3;

    iget-object v3, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v3}, Lio/branch/search/u3;->b()Lio/branch/search/k4;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/branch/search/k4;->a(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/branch/search/v3;->d:Ljava/util/Map;

    sget-object v2, Lio/branch/search/t3;->f:Lio/branch/search/t3;

    iget-object v3, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v3}, Lio/branch/search/u3;->a()Lio/branch/search/c4;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/branch/search/c4;->a(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/branch/search/v3;->d:Ljava/util/Map;

    sget-object v2, Lio/branch/search/t3;->e:Lio/branch/search/t3;

    iget-object v3, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v3}, Lio/branch/search/u3;->a()Lio/branch/search/c4;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/branch/search/c4;->e(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/branch/search/v3;->d:Ljava/util/Map;

    sget-object v2, Lio/branch/search/t3;->i:Lio/branch/search/t3;

    iget-object v3, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v3}, Lio/branch/search/u3;->a()Lio/branch/search/c4;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/branch/search/c4;->d(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/branch/search/v3;->d:Ljava/util/Map;

    sget-object v2, Lio/branch/search/t3;->k:Lio/branch/search/t3;

    iget-object v3, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v3}, Lio/branch/search/u3;->a()Lio/branch/search/c4;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/branch/search/c4;->b(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lio/branch/search/v3;->d:Ljava/util/Map;

    sget-object v2, Lio/branch/search/t3;->j:Lio/branch/search/t3;

    iget-object v3, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v3}, Lio/branch/search/u3;->a()Lio/branch/search/c4;

    move-result-object v3

    invoke-virtual {v3, v0}, Lio/branch/search/c4;->c(Lio/branch/search/x3;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lio/branch/search/v3;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_da
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ef

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Lio/branch/search/v3$a;

    invoke-direct {v2, p0, v1, p1}, Lio/branch/search/v3$a;-><init>(Lio/branch/search/v3;Ljava/util/Map$Entry;Lio/branch/search/h2;)V

    invoke-static {v2}, Lio/branch/search/c5;->a(Lkotlin/jvm/functions/Function0;)V

    goto :goto_da

    :cond_ef
    return-void
.end method

.method public a(Lio/branch/search/i2;)V
    .registers 5
    .param p1  # Lio/branch/search/i2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Lio/branch/search/i2;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/branch/search/i2;->d()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lio/branch/search/v3;->a(Ljava/lang/String;Ljava/util/Set;)V

    iget-object v0, p0, Lio/branch/search/v3;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_15

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/branch/search/t3;

    invoke-virtual {p0, v1, v2, p1}, Lio/branch/search/v3;->a(Lio/branch/search/t3;Ljava/util/List;Lio/branch/search/i2;)V

    goto :goto_15

    :cond_39
    return-void
.end method

.method public a(Lio/branch/search/i4;Ljava/util/List;)V
    .registers 5
    .param p1  # Lio/branch/search/i4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/i4;",
            "Ljava/util/List<",
            "Lio/branch/search/g4;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/v3;->b:Lio/branch/search/q4;

    new-instance v1, Lio/branch/search/v3$e;

    invoke-direct {v1, p0, p1, p2}, Lio/branch/search/v3$e;-><init>(Lio/branch/search/v3;Lio/branch/search/i4;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/branch/search/q4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lio/branch/search/t3;Ljava/util/List;Lio/branch/search/i2;)V
    .registers 5
    .param p1  # Lio/branch/search/t3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3  # Lio/branch/search/i2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/branch/search/t3;",
            "Ljava/util/List<",
            "Lio/branch/search/w3;",
            ">;",
            "Lio/branch/search/i2;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Lio/branch/search/i2;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/branch/search/v3;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_21

    :try_start_10
    new-instance p1, Lio/branch/search/y3;

    invoke-direct {p1, p2}, Lio/branch/search/y3;-><init>(Ljava/util/List;)V

    invoke-virtual {p3, p1}, Lio/branch/search/i2;->a(Lio/branch/search/l2;)Ljava/lang/Exception;
    :try_end_18
    .catch Landroid/database/SQLException; {:try_start_10 .. :try_end_18} :catch_19

    goto :goto_21

    :catch_19
    move-exception p1

    iget-object p0, p0, Lio/branch/search/v3;->i:Lio/branch/search/m;

    const-string p2, "SQLiteManager.maybeCopyIntoRawDatabase"

    invoke-virtual {p0, p2, p1}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public a(Lio/branch/search/z3;)V
    .registers 4
    .param p1  # Lio/branch/search/z3;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/v3;->b:Lio/branch/search/q4;

    new-instance v1, Lio/branch/search/v3$g;

    invoke-direct {v1, p0, p1}, Lio/branch/search/v3$g;-><init>(Lio/branch/search/v3;Lio/branch/search/z3;)V

    invoke-virtual {v0, v1}, Lio/branch/search/q4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lj7/h;)V
    .registers 4
    .param p1  # Lj7/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj7/h<",
            "Ljava/util/List<",
            "Lio/branch/search/j4;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/v3;->b:Lio/branch/search/q4;

    new-instance v1, Lio/branch/search/v3$h;

    invoke-direct {v1, p0, p1}, Lio/branch/search/v3$h;-><init>(Lio/branch/search/v3;Lj7/h;)V

    invoke-virtual {v0, v1}, Lio/branch/search/q4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Ljava/lang/Runnable;)V
    .registers 4
    .param p1  # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/v3;->b:Lio/branch/search/q4;

    new-instance v1, Lio/branch/search/v3$b;

    invoke-direct {v1, p0, p1}, Lio/branch/search/v3$b;-><init>(Lio/branch/search/v3;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lio/branch/search/q4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Set;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lio/branch/search/t3;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/t3;

    invoke-virtual {v2}, Lio/branch/search/t3;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1d
    iget-object v1, p0, Lio/branch/search/v3;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw_sqlite_local_replica_whitelists_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p0, p0, Lio/branch/search/v3;->e:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .registers 4
    .param p1  # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/branch/search/h4;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/v3;->b:Lio/branch/search/q4;

    new-instance v1, Lio/branch/search/v3$f;

    invoke-direct {v1, p0, p1}, Lio/branch/search/v3$f;-><init>(Lio/branch/search/v3;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lio/branch/search/q4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Lio/branch/search/z3;
    .registers 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object p0, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {p0}, Lio/branch/search/u3;->d()Lio/branch/search/a4;

    move-result-object p0

    invoke-virtual {p0}, Lio/branch/search/a4;->d()Lio/branch/search/z3;

    move-result-object p0

    return-object p0
.end method

.method public final b(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/o3;",
            ">;"
        }
    .end annotation

    new-instance v0, Lio/branch/search/BranchShortcutList;

    iget-object v1, p0, Lio/branch/search/v3;->k:Landroid/os/UserManager;

    invoke-virtual {v1, p2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lio/branch/search/BranchShortcutList;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v1, p0, Lio/branch/search/v3;->i:Lio/branch/search/m;

    invoke-virtual {v1}, Lio/branch/search/m;->d()Lio/branch/search/BranchConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lio/branch/search/BranchConfiguration;->p()Lio/branch/search/IBranchShortcutHandler;

    move-result-object v1

    iget-object p0, p0, Lio/branch/search/v3;->j:Landroid/content/Context;

    invoke-interface {v1, p0, p1, p2, v0}, Lio/branch/search/IBranchShortcutHandler;->loadShortcuts(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;Lio/branch/search/BranchShortcutList;)V

    invoke-virtual {v0}, Lio/branch/search/BranchShortcutList;->a()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public b(Lio/branch/search/i2;)V
    .registers 2
    .param p1  # Lio/branch/search/i2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0, p1}, Lio/branch/search/v3;->a(Lio/branch/search/i2;)V

    return-void
.end method

.method public b(Lj7/h;)V
    .registers 4
    .param p1  # Lj7/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj7/h<",
            "Lio/branch/search/m4;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lio/branch/search/v3;->b:Lio/branch/search/q4;

    new-instance v1, Lio/branch/search/v3$i;

    invoke-direct {v1, p0, p1}, Lio/branch/search/v3$i;-><init>(Lio/branch/search/v3;Lj7/h;)V

    invoke-virtual {v0, v1}, Lio/branch/search/q4;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ApplySharedPref"
        }
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0, p1}, Lio/branch/search/v3;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final c(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 7
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lio/branch/search/o3;",
            ">;"
        }
    .end annotation

    const-string v0, "SQLiteManager.loadShortcutsFromSystem"

    const-string v1, "Couldn\'t get shortcuts for "

    :try_start_4
    new-instance v2, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v2}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {v2, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    iget-object v3, p0, Lio/branch/search/v3;->m:Landroid/content/pm/LauncherApps;

    invoke-virtual {v3, v2, p2}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v2}, Lio/branch/search/v3;->a(Ljava/lang/String;Landroid/os/UserHandle;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_22

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V
    :try_end_22
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_22} :catch_37
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_22} :catch_23

    :cond_22
    return-object p2

    :catch_23
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_57

    :catch_37
    move-exception p2

    iget-object p0, p0, Lio/branch/search/v3;->j:Landroid/content/Context;

    invoke-static {p0}, Lio/branch/search/Util;->isDefaultLauncher(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_57

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " even though we are operating as default launcher."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_57
    :goto_57
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public c()V
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lio/branch/search/v3;->d()V

    invoke-virtual {p0}, Lio/branch/search/v3;->e()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_f

    :catch_7
    move-exception p0

    const-string v0, "SQLiteManager.syncLocalData"

    const-string v1, "Exception from syncLocalData."

    invoke-static {v0, v1, p0}, Lio/branch/search/i0;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_f
    return-void
.end method

.method public final c(Ljava/lang/String;)Z
    .registers 2
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lio/branch/search/v3;->j:Landroid/content/Context;

    invoke-static {p0}, Lio/branch/search/Util;->b(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public d()V
    .registers 10
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lio/branch/search/v3;->j:Landroid/content/Context;

    invoke-static {v2}, Lio/branch/search/a0;->a(Landroid/content/Context;)Lio/branch/search/a0$b;

    move-result-object v2

    invoke-virtual {v2}, Lio/branch/search/a0$b;->b()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_18
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v2}, Lio/branch/search/a0$b;->c()Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lio/branch/search/a0$b;->a()Landroid/content/pm/LauncherApps;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_40
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lio/branch/search/v3;->j:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_61

    goto :goto_40

    :cond_61
    iget-object v7, p0, Lio/branch/search/v3;->j:Landroid/content/Context;

    invoke-static {v7, v4}, Lio/branch/search/a0;->a(Landroid/content/Context;Landroid/os/UserHandle;)Lio/branch/search/a0$a;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lio/branch/search/v3;->a(Landroid/content/pm/LauncherActivityInfo;Lio/branch/search/a0$a;)Lio/branch/search/l3;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_6f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    iget-object v4, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v4}, Lio/branch/search/u3;->e()Lio/branch/search/m3;

    move-result-object v4

    invoke-virtual {v4, v0, v2, v3}, Lio/branch/search/m3;->a(Ljava/util/List;J)V

    iget-object p0, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {p0}, Lio/branch/search/u3;->e()Lio/branch/search/m3;

    move-result-object p0

    invoke-virtual {p0, v1}, Lio/branch/search/m3;->a(Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lio/branch/search/v3;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lio/branch/search/v3;->a:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "raw_sqlite_local_replica_whitelists_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public d(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1, p2}, Lio/branch/search/v3;->g(Ljava/lang/String;Landroid/os/UserHandle;)Lio/branch/search/l3;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v1}, Lio/branch/search/u3;->e()Lio/branch/search/m3;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/branch/search/m3;->a(Lio/branch/search/l3;)V

    iget-object v0, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v0}, Lio/branch/search/u3;->f()Lio/branch/search/p3;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lio/branch/search/v3;->a(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/branch/search/p3;->b(Ljava/util/List;)V

    goto :goto_42

    :cond_1d
    iget-object p0, p0, Lio/branch/search/v3;->i:Lio/branch/search/m;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPackageAdded("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") was called but toInstalledLocalPackage(...) returned null."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SQLiteManager"

    invoke-virtual {p0, p2, p1}, Lio/branch/search/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_42
    return-void
.end method

.method public final e()V
    .registers 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v0}, Lio/branch/search/u3;->e()Lio/branch/search/m3;

    move-result-object v0

    invoke-virtual {v0}, Lio/branch/search/m3;->a()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/branch/search/l3;

    iget-object v3, p0, Lio/branch/search/v3;->k:Landroid/os/UserManager;

    iget-object v4, v2, Lio/branch/search/l3;->b:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/os/UserManager;->getUserForSerialNumber(J)Landroid/os/UserHandle;

    move-result-object v3

    iget-object v2, v2, Lio/branch/search/l3;->a:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lio/branch/search/v3;->a(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_13

    :cond_35
    iget-object p0, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {p0}, Lio/branch/search/u3;->f()Lio/branch/search/p3;

    move-result-object p0

    invoke-virtual {p0, v1}, Lio/branch/search/p3;->c(Ljava/util/List;)V

    return-void
.end method

.method public e(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 12
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lio/branch/search/v3;->k:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v7

    iget-object p2, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {p2}, Lio/branch/search/u3;->e()Lio/branch/search/m3;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v2, p1

    move-wide v3, v7

    invoke-virtual/range {v1 .. v6}, Lio/branch/search/m3;->a(Ljava/lang/String;JJ)V

    iget-object p0, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {p0}, Lio/branch/search/u3;->f()Lio/branch/search/p3;

    move-result-object p0

    invoke-virtual {p0, p1, v7, v8}, Lio/branch/search/p3;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public f(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 6
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x19
    .end annotation

    iget-object v0, p0, Lio/branch/search/v3;->k:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    iget-object v2, p0, Lio/branch/search/v3;->c:Lio/branch/search/u3;

    invoke-virtual {v2}, Lio/branch/search/u3;->f()Lio/branch/search/p3;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lio/branch/search/p3;->a(Ljava/lang/String;J)V

    invoke-virtual {p0, p1, p2}, Lio/branch/search/v3;->c(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/branch/search/p3;->b(Ljava/util/List;)V

    return-void
.end method

.method public final g(Ljava/lang/String;Landroid/os/UserHandle;)Lio/branch/search/l3;
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/UserHandle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lio/branch/search/v3;->j:Landroid/content/Context;

    invoke-static {v0, p2}, Lio/branch/search/a0;->a(Landroid/content/Context;Landroid/os/UserHandle;)Lio/branch/search/a0$a;

    move-result-object v0

    iget-object v1, p0, Lio/branch/search/v3;->m:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1, p1, p2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1e

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0, p1, v0}, Lio/branch/search/v3;->a(Landroid/content/pm/LauncherActivityInfo;Lio/branch/search/a0$a;)Lio/branch/search/l3;

    move-result-object p0

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return-object p0
.end method
