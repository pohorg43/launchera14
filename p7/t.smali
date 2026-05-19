.class public final Lp7/t;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStateFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StateFlow.kt\nkotlinx/coroutines/flow/StateFlowKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,428:1\n1#2:429\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lr7/f0;

.field public static final b:Lr7/f0;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lr7/f0;

    const-string v1, "NONE"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp7/t;->a:Lr7/f0;

    new-instance v0, Lr7/f0;

    const-string v1, "PENDING"

    invoke-direct {v0, v1}, Lr7/f0;-><init>(Ljava/lang/String;)V

    sput-object v0, Lp7/t;->b:Lr7/f0;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Lp7/m;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lp7/m<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lp7/s;

    if-nez p0, :cond_6

    sget-object p0, Lq7/t;->a:Lr7/f0;

    :cond_6
    invoke-direct {v0, p0}, Lp7/s;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
