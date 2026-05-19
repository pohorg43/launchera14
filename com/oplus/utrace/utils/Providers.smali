.class public final Lcom/oplus/utrace/utils/Providers;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/utrace/utils/Providers;

.field private static coreAuthority:Ljava/lang/String;

.field private static coreUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/utrace/utils/Providers;

    invoke-direct {v0}, Lcom/oplus/utrace/utils/Providers;-><init>()V

    sput-object v0, Lcom/oplus/utrace/utils/Providers;->INSTANCE:Lcom/oplus/utrace/utils/Providers;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic callCoreProvider$default(Lcom/oplus/utrace/utils/Providers;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_9

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/utrace/utils/Providers;->callCoreProvider(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private final checkAuthority(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_4
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_15

    const-wide/16 v0, 0x80

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    goto :goto_21

    :cond_15
    const/16 p1, 0x80

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1c

    goto :goto_21

    :catchall_1c
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_21
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "UTrace.Lib.Providers"

    if-nez p1, :cond_2a

    goto :goto_39

    :cond_2a
    sget-object v1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "checkAuthority() exception="

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_39
    instance-of p1, p0, Lh4/k$a;

    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    move-object p0, v1

    :cond_3f
    check-cast p0, Landroid/content/pm/ProviderInfo;

    if-nez p0, :cond_44

    goto :goto_63

    :cond_44
    sget-object p1, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAuthority() authority="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " result="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, p0

    :goto_63
    if-eqz v1, :cond_67

    const/4 p0, 0x1

    goto :goto_68

    :cond_67
    const/4 p0, 0x0

    :goto_68
    return p0
.end method

.method private final resolveAuthority(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    sget-object p0, Lcom/oplus/utrace/lib/PackageNames;->INSTANCE:Lcom/oplus/utrace/lib/PackageNames;

    invoke-virtual {p0}, Lcom/oplus/utrace/lib/PackageNames;->getCORE_APPS()[Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_2c

    aget-object v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_2c
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_30
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/oplus/utrace/utils/Providers;->INSTANCE:Lcom/oplus/utrace/utils/Providers;

    invoke-direct {v1, p1, v0}, Lcom/oplus/utrace/utils/Providers;->checkAuthority(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_47

    :cond_46
    const/4 p2, 0x0

    :goto_47
    check-cast p2, Ljava/lang/String;

    return-object p2
.end method

.method private final resolveCoreAuthority(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/oplus/utrace/utils/Providers;->coreAuthority:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-direct {p0, p1, p2}, Lcom/oplus/utrace/utils/Providers;->resolveAuthority(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/oplus/utrace/utils/Providers;->coreAuthority:Ljava/lang/String;

    :cond_a
    sget-object p0, Lcom/oplus/utrace/utils/Providers;->coreAuthority:Ljava/lang/String;

    return-object p0
.end method

.method private final resolveCoreUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 3

    sget-object v0, Lcom/oplus/utrace/utils/Providers;->coreUri:Landroid/net/Uri;

    if-nez v0, :cond_c

    const-string v0, "UTraceProvider"

    invoke-direct {p0, p1, v0}, Lcom/oplus/utrace/utils/Providers;->resolveCoreUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    sput-object p0, Lcom/oplus/utrace/utils/Providers;->coreUri:Landroid/net/Uri;

    :cond_c
    sget-object p0, Lcom/oplus/utrace/utils/Providers;->coreUri:Landroid/net/Uri;

    return-object p0
.end method

.method private final resolveCoreUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/utrace/utils/Providers;->resolveCoreAuthority(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_12

    :cond_8
    const-string p1, "content://"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_12
    return-object p0
.end method

.method public static synthetic resolveProviderComponent$default(Lcom/oplus/utrace/utils/Providers;Landroid/content/Context;Landroid/content/ComponentName;ZILjava/lang/Object;)Landroid/net/Uri;
    .registers 6

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_5

    const/4 p3, 0x1

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/utrace/utils/Providers;->resolveProviderComponent(Landroid/content/Context;Landroid/content/ComponentName;Z)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic unstableProviderCall$default(Lcom/oplus/utrace/utils/Providers;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;
    .registers 14

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_6

    const-string p4, ""

    :cond_6
    move-object v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_10

    new-instance p5, Landroid/os/Bundle;

    invoke-direct {p5}, Landroid/os/Bundle;-><init>()V

    :cond_10
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/oplus/utrace/utils/Providers;->unstableProviderCall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final callCoreProvider(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 15

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v1, "queryByProvider, method = "

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTrace.Lib.Providers"

    invoke-virtual {v0, v2, v1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_1d
    invoke-direct {p0, p1}, Lcom/oplus/utrace/utils/Providers;->resolveCoreUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_25

    move-object p0, v0

    goto :goto_37

    :cond_25
    const/4 v7, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v8, p3

    invoke-static/range {v3 .. v10}, Lcom/oplus/utrace/utils/Providers;->unstableProviderCall$default(Lcom/oplus/utrace/utils/Providers;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_32

    goto :goto_37

    :catchall_32
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_37
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_3e

    goto :goto_56

    :cond_3e
    sget-object p3, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    const-string v1, "queryByProvider() method="

    const-string v3, " exception="

    invoke-static {v1, p2, v3}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v2, p2, p1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_56
    instance-of p1, p0, Lh4/k$a;

    if-eqz p1, :cond_5b

    goto :goto_5c

    :cond_5b
    move-object v0, p0

    :goto_5c
    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public final resolveProviderComponent(Landroid/content/Context;Landroid/content/ComponentName;Z)Landroid/net/Uri;
    .registers 8

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    :try_start_e
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    if-lt p1, v0, :cond_1f

    const-wide/16 v0, 0x80

    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    goto :goto_2b

    :cond_1f
    const/16 p1, 0x80

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_26

    goto :goto_2b

    :catchall_26
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_2b
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    const-string v0, "resolveProviderComponent() name="

    const-string v1, "UTrace.Lib.Providers"

    if-nez p1, :cond_36

    goto :goto_5a

    :cond_36
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_55

    sget-object p3, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p3, v1, p1}, Lcom/oplus/utrace/utils/Logs;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    :cond_55
    sget-object p3, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    invoke-virtual {p3, v1, p1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5a
    instance-of p1, p0, Lh4/k$a;

    const/4 p3, 0x0

    if-eqz p1, :cond_60

    move-object p0, p3

    :cond_60
    check-cast p0, Landroid/content/pm/ProviderInfo;

    if-nez p0, :cond_65

    goto :goto_74

    :cond_65
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    if-nez p0, :cond_6a

    goto :goto_74

    :cond_6a
    const-string p1, "content://"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    :goto_74
    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " result="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p3
.end method

.method public final resolveUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authoritySuffix"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/utrace/utils/Providers;->resolveAuthority(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_12

    const/4 p0, 0x0

    goto :goto_1c

    :cond_12
    const-string p1, "content://"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_1c
    return-object p0
.end method

.method public final unstableProviderCall(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "uri"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "method"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "arg"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "extras"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/utrace/utils/Logs;->INSTANCE:Lcom/oplus/utrace/utils/Logs;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unstableProviderCall("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTrace.Lib.Providers"

    invoke-virtual {p0, v1, v0}, Lcom/oplus/utrace/utils/Logs;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_56

    goto :goto_66

    :cond_56
    :try_start_56
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_5e

    move-object p2, p1

    goto :goto_62

    :cond_5e
    invoke-virtual {p0, p2, p3, p4, p5}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p2
    :try_end_62
    .catchall {:try_start_56 .. :try_end_62} :catchall_67

    :goto_62
    invoke-static {p0, p1}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_66
    return-object p1

    :catchall_67
    move-exception p1

    :try_start_68
    throw p1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception p2

    invoke-static {p0, p1}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method
