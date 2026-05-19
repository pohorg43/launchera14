.class public final La7/j;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:La7/j;

.field public static final b:Li5/e0;

.field public static final c:La7/a;

.field public static final d:Ly6/l0;

.field public static final e:Ly6/l0;

.field public static final f:Li5/o0;

.field public static final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Li5/o0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, La7/j;

    invoke-direct {v0}, La7/j;-><init>()V

    sput-object v0, La7/j;->a:La7/j;

    sget-object v0, La7/c;->a:La7/c;

    sput-object v0, La7/j;->b:Li5/e0;

    new-instance v0, La7/a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "unknown class"

    aput-object v4, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "<Error class: %s>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(this, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lh6/f;->h(Ljava/lang/String;)Lh6/f;

    move-result-object v1

    const-string v2, "special(ErrorEntity.ERRO….format(\"unknown class\"))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, La7/a;-><init>(Lh6/f;)V

    sput-object v0, La7/j;->c:La7/a;

    sget-object v0, La7/i;->v:La7/i;

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object v0

    sput-object v0, La7/j;->d:Ly6/l0;

    sget-object v0, La7/i;->x0:La7/i;

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {v0, v1}, La7/j;->c(La7/i;[Ljava/lang/String;)La7/g;

    move-result-object v0

    sput-object v0, La7/j;->e:Ly6/l0;

    new-instance v0, La7/d;

    invoke-direct {v0}, La7/d;-><init>()V

    sput-object v0, La7/j;->f:Li5/o0;

    invoke-static {v0}, Ly0/b;->g(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, La7/j;->g:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final varargs a(La7/f;Z[Ljava/lang/String;)La7/e;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "kind"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatParams"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_19

    new-instance p1, La7/k;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p0, p2}, La7/k;-><init>(La7/f;[Ljava/lang/String;)V

    goto :goto_25

    :cond_19
    new-instance p1, La7/e;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p1, p0, p2}, La7/e;-><init>(La7/f;[Ljava/lang/String;)V

    :goto_25
    return-object p1
.end method

.method public static final varargs b(La7/f;[Ljava/lang/String;)La7/e;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "kind"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "formatParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, La7/j;->a(La7/f;Z[Ljava/lang/String;)La7/e;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs c(La7/i;[Ljava/lang/String;)La7/g;
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "kind"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "formatParams"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, La7/j;->a:La7/j;

    sget-object v3, Li4/y;->a:Li4/y;

    array-length v4, p1

    invoke-static {p1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v2, p0, v0}, La7/j;->d(La7/i;[Ljava/lang/String;)La7/h;

    move-result-object v0

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v2, p0, v3, v0, p1}, La7/j;->e(La7/i;Ljava/util/List;Ly6/j1;[Ljava/lang/String;)La7/g;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Li5/l;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_14

    instance-of v0, p0, La7/a;

    if-nez v0, :cond_12

    invoke-interface {p0}, Li5/l;->b()Li5/l;

    move-result-object v0

    instance-of v0, v0, La7/a;

    if-nez v0, :cond_12

    sget-object v0, La7/j;->b:Li5/e0;

    if-ne p0, v0, :cond_14

    :cond_12
    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method


# virtual methods
.method public final varargs d(La7/i;[Ljava/lang/String;)La7/h;
    .registers 4

    const-string p0, "kind"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "formatParams"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, La7/h;

    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p0, p1, p2}, La7/h;-><init>(La7/i;[Ljava/lang/String;)V

    return-object p0
.end method

.method public final varargs e(La7/i;Ljava/util/List;Ly6/j1;[Ljava/lang/String;)La7/g;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La7/i;",
            "Ljava/util/List<",
            "+",
            "Ly6/q1;",
            ">;",
            "Ly6/j1;",
            "[",
            "Ljava/lang/String;",
            ")",
            "La7/g;"
        }
    .end annotation

    const-string p0, "kind"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "arguments"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "typeConstructor"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "formatParams"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, La7/g;

    sget-object v0, La7/f;->h:La7/f;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, La7/j;->b(La7/f;[Ljava/lang/String;)La7/e;

    move-result-object v2

    array-length v0, p4

    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p4

    move-object v6, p4

    check-cast v6, [Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, La7/g;-><init>(Ly6/j1;Lr6/i;La7/i;Ljava/util/List;Z[Ljava/lang/String;)V

    return-object p0
.end method
