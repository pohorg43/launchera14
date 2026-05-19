.class public final Lc5/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCacheByClass.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CacheByClass.kt\nkotlin/reflect/jvm/internal/CacheByClassKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,96:1\n1#2:97\n*E\n"
    }
.end annotation


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    :try_start_0
    const-string v0, "java.lang.ClassValue"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    instance-of v1, v0, Lh4/k$a;

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_16

    check-cast v0, Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_16
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v2, v0, Lh4/k$a;

    if-eqz v2, :cond_1d

    move-object v0, v1

    :cond_1d
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    return-void
.end method

.method public static final a(Lkotlin/jvm/functions/Function1;)Lc5/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Class<",
            "*>;+TV;>;)",
            "Lc5/a<",
            "TV;>;"
        }
    .end annotation

    const-string v0, "compute"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lc5/d;

    invoke-direct {v0, p0}, Lc5/d;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method
