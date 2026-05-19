.class public final Ln5/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPackagePartScopeCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PackagePartScopeCache.kt\norg/jetbrains/kotlin/descriptors/runtime/components/PackagePartScopeCache\n+ 2 MapsJVM.kt\nkotlin/collections/MapsKt__MapsJVMKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n73#2,2:43\n1603#3,9:45\n1855#3:54\n1856#3:56\n1612#3:57\n1603#3,9:58\n1855#3:67\n1856#3:69\n1612#3:70\n1#4:55\n1#4:68\n1#4:71\n*S KotlinDebug\n*F\n+ 1 PackagePartScopeCache.kt\norg/jetbrains/kotlin/descriptors/runtime/components/PackagePartScopeCache\n*L\n22#1:43,2\n27#1:45,9\n27#1:54\n27#1:56\n27#1:57\n35#1:58,9\n35#1:67\n35#1:69\n35#1:70\n27#1:55\n35#1:68\n22#1:71\n*E\n"
    }
.end annotation


# instance fields
.field public final a:La6/j;

.field public final b:Ln5/f;

.field public final c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lh6/b;",
            "Lr6/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La6/j;Ln5/f;)V
    .registers 4

    const-string v0, "resolver"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClassFinder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln5/a;->a:La6/j;

    iput-object p2, p0, Ln5/a;->b:Ln5/f;

    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Ln5/a;->c:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method
