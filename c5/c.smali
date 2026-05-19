.class public final Lc5/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\ncaches.kt\nKotlin\n*S Kotlin\n*F\n+ 1 caches.kt\nkotlin/reflect/jvm/internal/CachesKt\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,74:1\n73#2,2:75\n1#3:77\n*S KotlinDebug\n*F\n+ 1 caches.kt\nkotlin/reflect/jvm/internal/CachesKt\n*L\n68#1:75,2\n68#1:77\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lc5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/a<",
            "Lc5/o<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Lc5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/a<",
            "Lc5/b0;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lc5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/a<",
            "Lz4/r;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lc5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/a<",
            "Lz4/r;",
            ">;"
        }
    .end annotation
.end field

.field public static final e:Lc5/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/a<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lh4/j<",
            "Ljava/util/List<",
            "Lz4/t;",
            ">;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lz4/r;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lc5/c$d;->a:Lc5/c$d;

    invoke-static {v0}, Lc5/b;->a(Lkotlin/jvm/functions/Function1;)Lc5/a;

    move-result-object v0

    sput-object v0, Lc5/c;->a:Lc5/a;

    sget-object v0, Lc5/c$e;->a:Lc5/c$e;

    invoke-static {v0}, Lc5/b;->a(Lkotlin/jvm/functions/Function1;)Lc5/a;

    move-result-object v0

    sput-object v0, Lc5/c;->b:Lc5/a;

    sget-object v0, Lc5/c$a;->a:Lc5/c$a;

    invoke-static {v0}, Lc5/b;->a(Lkotlin/jvm/functions/Function1;)Lc5/a;

    move-result-object v0

    sput-object v0, Lc5/c;->c:Lc5/a;

    sget-object v0, Lc5/c$c;->a:Lc5/c$c;

    invoke-static {v0}, Lc5/b;->a(Lkotlin/jvm/functions/Function1;)Lc5/a;

    move-result-object v0

    sput-object v0, Lc5/c;->d:Lc5/a;

    sget-object v0, Lc5/c$b;->a:Lc5/c$b;

    invoke-static {v0}, Lc5/b;->a(Lkotlin/jvm/functions/Function1;)Lc5/a;

    move-result-object v0

    sput-object v0, Lc5/c;->e:Lc5/a;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Lc5/o;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lc5/o<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "jClass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc5/c;->a:Lc5/a;

    invoke-virtual {v0, p0}, Lc5/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<T of kotlin.reflect.jvm.internal.CachesKt.getOrCreateKotlinClass>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc5/o;

    return-object p0
.end method
