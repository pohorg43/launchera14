.class public final Lcom/pantanal/server/content/broadcast/PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pantanal/server/content/broadcast/PackageReceiver$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 \u00042\u00020\u0001:\u0001\u0005B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0006"
    }
    d2 = {
        "Lcom/pantanal/server/content/broadcast/PackageReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "<init>",
        "()V",
        "b",
        "a",
        "staticmanagersdk_debug"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final b:Lcom/pantanal/server/content/broadcast/PackageReceiver$a;

.field public static volatile c:Z

.field public static d:Lcom/pantanal/server/content/broadcast/PackageReceiver;


# instance fields
.field public a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/pantanal/server/content/broadcast/PackageReceiver$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pantanal/server/content/broadcast/PackageReceiver$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pantanal/server/content/broadcast/PackageReceiver;->b:Lcom/pantanal/server/content/broadcast/PackageReceiver$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string p0, "PackageReceiver"

    const-string v0, " onReceive intent = "

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    if-nez p2, :cond_10

    move-object v0, p0

    goto :goto_14

    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    :goto_14
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_19

    goto :goto_24

    :cond_19
    const/4 v3, 0x2

    const-string v4, "package:"

    invoke-static {v0, v4, v1, v3}, Lk7/m;->s(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v3

    if-ne v3, v2, :cond_24

    move v3, v2

    goto :goto_25

    :cond_24
    :goto_24
    move v3, v1

    :goto_25
    if-eqz v3, :cond_33

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_34

    :cond_33
    move-object v0, p0

    :goto_34
    if-nez v0, :cond_37

    return-void

    :cond_37
    if-nez p2, :cond_3a

    goto :goto_3e

    :cond_3a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    :goto_3e
    if-eqz p0, :cond_135

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v3, 0xa480416

    if-eq p2, v3, :cond_69

    const v3, 0x1f50b9c2

    if-eq p2, v3, :cond_5f

    const v3, 0x5c1076e2

    if-eq p2, v3, :cond_55

    goto/16 :goto_135

    :cond_55
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_73

    goto/16 :goto_135

    :cond_5f
    const-string p2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_73

    goto/16 :goto_135

    :cond_69
    const-string p2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_73

    goto/16 :goto_135

    :cond_73
    sget-boolean p0, Lk3/b;->a:Z

    const-class p0, Lk3/b;

    const-string p2, "pkgName"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_9b

    const-string p0, "CheckSupportSceneUtil"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "observePkgChange("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "), but context is null!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lf3/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_135

    :cond_9b
    const-string p2, "com.oplus.pantanal.ums"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b7

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p2

    monitor-enter p2

    :try_start_a8
    invoke-static {p1}, Lk3/b;->b(Landroid/content/Context;)V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_b4

    monitor-exit p2

    const-string p2, "CheckSupportSceneUtil"

    const-string v3, "UMS package changed!"

    invoke-static {p2, v3}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b7

    :catchall_b4
    move-exception p0

    monitor-exit p2

    throw p0

    :cond_b7
    :goto_b7
    const-string p2, "com.oplus.metis"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d3

    invoke-static {p0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p0

    monitor-enter p0

    :try_start_c4
    invoke-static {p1}, Lk3/b;->a(Landroid/content/Context;)V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_d0

    monitor-exit p0

    const-string p0, "CheckSupportSceneUtil"

    const-string p1, "Metis package changed!"

    invoke-static {p0, p1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d3

    :catchall_d0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_d3
    :goto_d3
    sget-boolean p0, Lk3/b;->a:Z

    if-eqz p0, :cond_dc

    sget-boolean p0, Lk3/b;->b:Z

    if-eqz p0, :cond_dc

    move v1, v2

    :cond_dc
    const-string p0, "CheckSupportSceneUtil"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "observePkgChange package:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", new support scene status:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", old support scene status:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lk3/b;->c:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p0, Lk3/b;->c:Z

    if-eq v1, p0, :cond_135

    sput-boolean v1, Lk3/b;->c:Z

    sget-object p0, Lz2/d;->a:Lz2/d;

    invoke-virtual {p0}, Lz2/d;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_135

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ld3/b;

    sget-boolean p2, Lk3/b;->c:Z

    invoke-interface {p1, p2}, Ld3/b;->onChanged(Z)V

    goto :goto_11d

    :cond_135
    :goto_135
    return-void
.end method
