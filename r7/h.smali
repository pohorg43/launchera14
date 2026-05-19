.class public final Lr7/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineExceptionHandlerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandlerImpl.kt\nkotlinx/coroutines/internal/CoroutineExceptionHandlerImplKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1#2:51\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lm7/g0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lr7/g;->a()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lj7/l;->f(Ljava/util/Iterator;)Lj7/h;

    move-result-object v0

    invoke-static {v0}, Lj7/p;->s(Lj7/h;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lr7/h;->a:Ljava/util/Collection;

    return-void
.end method
