.class public final Lr7/v;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMainDispatchers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatcherLoader\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,134:1\n1963#2,14:135\n*S KotlinDebug\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MainDispatcherLoader\n*L\n38#1:135,14\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lm7/b2;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    const-string v0, "kotlinx.coroutines.fast.service.loader"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ly1/a;->e(Ljava/lang/String;Z)Z

    :try_start_6
    invoke-static {}, Lr7/u;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lj7/l;->f(Ljava/util/Iterator;)Lj7/h;

    move-result-object v0

    invoke-static {v0}, Lj7/p;->s(Lj7/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1e

    const/4 v1, 0x0

    goto :goto_47

    :cond_1e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2a

    :goto_28
    move-object v1, v2

    goto :goto_47

    :cond_2a
    move-object v3, v2

    check-cast v3, Lr7/t;

    invoke-interface {v3}, Lr7/t;->c()I

    move-result v3

    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lr7/t;

    invoke-interface {v5}, Lr7/t;->c()I

    move-result v5

    if-ge v3, v5, :cond_40

    move-object v2, v4

    move v3, v5

    :cond_40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_31

    goto :goto_28

    :goto_47
    check-cast v1, Lr7/t;
    :try_end_49
    .catchall {:try_start_6 .. :try_end_49} :catchall_61

    if-eqz v1, :cond_59

    :try_start_4b
    invoke-interface {v1, v0}, Lr7/t;->b(Ljava/util/List;)Lm7/b2;

    move-result-object v0
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_54

    if-eqz v0, :cond_59

    sput-object v0, Lr7/v;->a:Lm7/b2;

    return-void

    :catchall_54
    move-exception v0

    :try_start_55
    invoke-interface {v1}, Lr7/t;->a()Ljava/lang/String;

    throw v0

    :cond_59
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. \'kotlinx-coroutines-android\' and ensure it has the same version as \'kotlinx-coroutines-core\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_61
    .catchall {:try_start_55 .. :try_end_61} :catchall_61

    :catchall_61
    move-exception v0

    throw v0
.end method
