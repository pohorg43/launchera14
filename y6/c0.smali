.class public Ly6/c0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nErasureTypeAttributes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ErasureTypeAttributes.kt\norg/jetbrains/kotlin/types/ErasureTypeAttributes\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,35:1\n1#2:36\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ly6/z1;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Li5/a1;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ly6/s0;


# direct methods
.method public constructor <init>(Ly6/z1;Ljava/util/Set;Ly6/s0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ly6/z1;",
            "Ljava/util/Set<",
            "+",
            "Li5/a1;",
            ">;",
            "Ly6/s0;",
            ")V"
        }
    .end annotation

    const-string v0, "howThisTypeIsUsed"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly6/c0;->a:Ly6/z1;

    iput-object p2, p0, Ly6/c0;->b:Ljava/util/Set;

    iput-object p3, p0, Ly6/c0;->c:Ly6/s0;

    return-void
.end method


# virtual methods
.method public a()Ly6/s0;
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public b()Ly6/z1;
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public c()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Li5/a1;",
            ">;"
        }
    .end annotation

    const p0, 0x0

    throw p0
.end method

.method public d(Li5/a1;)Ly6/c0;
    .registers 2

    const p0, 0x0

    throw p0
.end method

.method public hashCode()I
    .registers 1

    const p0, 0x0

    throw p0
.end method
