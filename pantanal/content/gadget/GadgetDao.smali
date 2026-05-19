.class public final Lpantanal/content/gadget/GadgetDao;
.super Lpantanal/content/base/IServiceDao;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpantanal/content/gadget/GadgetDao$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lpantanal/content/base/IServiceDao<",
        "Lpantanal/content/GadgetConfig;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGadgetDao.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GadgetDao.kt\npantanal/content/gadget/GadgetDao\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,76:1\n1549#2:77\n1620#2,3:78\n1549#2:81\n1620#2,3:82\n*S KotlinDebug\n*F\n+ 1 GadgetDao.kt\npantanal/content/gadget/GadgetDao\n*L\n33#1:77\n33#1:78,3\n48#1:81\n48#1:82,3\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lpantanal/content/gadget/GadgetDao$Companion;

.field private static final TAG:Ljava/lang/String; = "ConfigDao"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lpantanal/content/gadget/GadgetDao$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lpantanal/content/gadget/GadgetDao$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lpantanal/content/gadget/GadgetDao;->Companion:Lpantanal/content/gadget/GadgetDao$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lpantanal/content/base/IServiceDao;-><init>()V

    return-void
.end method

.method public static synthetic a(Lpantanal/content/gadget/GadgetDao;Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lpantanal/content/gadget/GadgetDao;->registerObserver$lambda$3(Lpantanal/content/gadget/GadgetDao;Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    return-void
.end method

.method private static final registerObserver$lambda$3(Lpantanal/content/gadget/GadgetDao;Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;

    invoke-direct {p0, v1}, Lpantanal/content/gadget/GadgetDao;->toSeedlingSdkBean(Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;)Lpantanal/content/GadgetConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_32
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final toSeedlingSdkBean(Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;)Lpantanal/content/GadgetConfig;
    .registers 12

    new-instance p0, Lpantanal/content/GadgetConfig;

    invoke-virtual {p1}, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;->getServiceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;->getDes()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;->getPreviewImgUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;->getSupportEntrance()I

    move-result v6

    invoke-virtual {p1}, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;->getSize()I

    move-result v7

    invoke-virtual {p1}, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;->getExtraData()Landroid/util/ArrayMap;

    move-result-object v9

    const-string v8, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lpantanal/content/GadgetConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Landroid/util/ArrayMap;)V

    return-object p0
.end method


# virtual methods
.method public getCurrentList(Ljava/util/Set;I)Ljava/util/List;
    .registers 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/List<",
            "Lpantanal/content/GadgetConfig;",
            ">;"
        }
    .end annotation

    const-string p2, "entranceType"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le3/a;->c:Le3/a$a;

    invoke-virtual {p1}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    sget-object p1, Lg3/a;->g:Lg3/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "ConfigCenter"

    const-string v0, "get config info"

    invoke-static {p2, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lg3/f;->a:Lg3/e;

    invoke-virtual {p1}, Lg3/e;->d()Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;

    invoke-direct {p0, v0}, Lpantanal/content/gadget/GadgetDao;->toSeedlingSdkBean(Lcom/pantanal/server/content/upkmanage/config/SeedlingConfig;)Lpantanal/content/GadgetConfig;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_3f
    return-object p2
.end method

.method public getLogTag()Ljava/lang/String;
    .registers 1

    const-string p0, "ConfigDao"

    return-object p0
.end method

.method public getUtraceContext()Lcom/oplus/utrace/sdk/UTraceContext;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public registerObserver(ILkotlin/jvm/functions/Function1;I)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lpantanal/content/GadgetConfig;",
            ">;",
            "Lh4/z;",
            ">;I)V"
        }
    .end annotation

    const-string p1, "observer"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p3, Le3/a;->c:Le3/a$a;

    invoke-virtual {p3}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    new-instance p3, Lcom/android/launcher/w;

    invoke-direct {p3, p0, p2}, Lcom/android/launcher/w;-><init>(Lpantanal/content/gadget/GadgetDao;Lkotlin/jvm/functions/Function1;)V

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lg3/a;->g:Lg3/a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "ConfigCenter"

    const-string v0, "register Config"

    invoke-static {p2, v0}, Lf3/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lg3/f;->c:Lcom/android/launcher/w;

    iget-object p2, p0, Lg3/f;->a:Lg3/e;

    iget-object p3, p0, Lg3/f;->f:Lg3/f$a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lk3/l;->a:Lk3/l;

    sget-object p1, Lm7/y0;->a:Lm7/y0;

    invoke-static {p1}, Lk3/l;->a(Lm7/y0;)Lm7/j1;

    move-result-object p1

    invoke-static {p1}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v0

    new-instance v3, Lg3/c;

    const/4 p1, 0x0

    invoke-direct {v3, p2, p3, p1}, Lg3/c;-><init>(Lg3/e;Landroid/database/ContentObserver;Ll4/d;)V

    const/4 p3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v1, p3

    move v2, v6

    move v4, v7

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object v0

    iput-object v0, p2, Lg3/e;->a:Lm7/s1;

    new-instance v3, Lg3/g;

    invoke-direct {v3, p0, p1}, Lg3/g;-><init>(Lg3/f;Ll4/d;)V

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p1

    iput-object p1, p0, Lg3/f;->e:Lm7/s1;

    return-void
.end method

.method public unregisterObserver(Lkotlin/jvm/functions/Function1;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lpantanal/content/GadgetConfig;",
            ">;",
            "Lh4/z;",
            ">;I)V"
        }
    .end annotation

    const-string p0, "observer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Le3/a;->c:Le3/a$a;

    invoke-virtual {p1}, Le3/a$a;->c()Lcom/pantanal/server/content/sdk/IStaticSdk;

    sget-object p2, Lg3/a;->g:Lg3/a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/pantanal/server/content/upkmanage/config/ContextManager;->a:Lcom/pantanal/server/content/upkmanage/config/ContextManager;

    sget-object v0, Lcom/pantanal/server/content/upkmanage/config/ContextManager;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    const-string v1, "ConfigPropertiesManager"

    if-eqz v0, :cond_2c

    const-string v0, "unregister start, unregister all observers"

    invoke-static {v1, v0}, Lf3/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Le3/a$a;->a()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/pantanal/server/content/upkmanage/config/ContextManager;->e:Lcom/pantanal/server/content/upkmanage/config/ContextManager$a;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_31

    :cond_2c
    const-string p1, "unregister fail, since has not register, just ignore"

    invoke-static {v1, p1}, Lf3/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    iget-object p1, p2, Lg3/f;->a:Lg3/e;

    iget-object p2, p2, Lg3/f;->f:Lg3/f$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lk3/l;->a:Lk3/l;

    sget-object p0, Lm7/y0;->a:Lm7/y0;

    invoke-static {p0}, Lk3/l;->a(Lm7/y0;)Lm7/j1;

    move-result-object p0

    invoke-static {p0}, Lm7/k0;->a(Ll4/f;)Lm7/j0;

    move-result-object v0

    new-instance v3, Lg3/d;

    const/4 p0, 0x0

    invoke-direct {v3, p2, p1, p0}, Lg3/d;-><init>(Landroid/database/ContentObserver;Lg3/e;Ll4/d;)V

    const/4 v1, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    move-result-object p0

    iput-object p0, p1, Lg3/e;->a:Lm7/s1;

    return-void
.end method
