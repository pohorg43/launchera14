.class public final Lz6/f$a;
.super Lz6/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lz6/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lz6/f$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lz6/f$a;

    invoke-direct {v0}, Lz6/f$a;-><init>()V

    sput-object v0, Lz6/f$a;->a:Lz6/f$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lz6/f;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lh6/b;)Li5/e;
    .registers 2

    const-string p0, "classId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public c(Li5/e;Lkotlin/jvm/functions/Function0;)Lr6/i;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lr6/i;",
            ">(",
            "Li5/e;",
            "Lkotlin/jvm/functions/Function0<",
            "+TS;>;)TS;"
        }
    .end annotation

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "compute"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Li5/s0$b;

    invoke-virtual {p2}, Li5/s0$b;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr6/i;

    return-object p0
.end method

.method public d(Li5/e0;)Z
    .registers 2

    const-string p0, "moduleDescriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public e(Ly6/j1;)Z
    .registers 2

    const-string p0, "typeConstructor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public f(Li5/l;)Li5/h;
    .registers 2

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public g(Li5/e;)Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li5/e;",
            ")",
            "Ljava/util/Collection<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/h;->h()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "classDescriptor.typeConstructor.supertypes"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public h(Lc7/i;)Ly6/l0;
    .registers 2

    const-string p0, "type"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ly6/l0;

    return-object p1
.end method
