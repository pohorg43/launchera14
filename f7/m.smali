.class public final Lf7/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lf7/f;


# static fields
.field public static final a:Lf7/m;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lf7/m;

    invoke-direct {v0}, Lf7/m;-><init>()V

    sput-object v0, Lf7/m;->a:Lf7/m;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Li5/x;)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Lf7/f$a;->a(Lf7/f;Li5/x;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public b(Li5/x;)Z
    .registers 6

    const-string p0, "functionDescriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Li5/a;->g()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li5/e1;

    sget-object p1, Lf5/i;->d:Lf5/i$b;

    const-string v0, "secondParameter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lo6/c;->k(Li5/l;)Li5/e0;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "module"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lf5/j$a;->R:Lh6/b;

    invoke-static {v0, p1}, Li5/w;->a(Li5/e0;Lh6/b;)Li5/e;

    move-result-object p1

    if-nez p1, :cond_2d

    const/4 p1, 0x0

    goto :goto_59

    :cond_2d
    sget-object v0, Ly6/g1;->b:Ly6/g1$a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ly6/g1;->c:Ly6/g1;

    new-instance v1, Ly6/y0;

    invoke-interface {p1}, Li5/h;->h()Ly6/j1;

    move-result-object v2

    invoke-interface {v2}, Ly6/j1;->getParameters()Ljava/util/List;

    move-result-object v2

    const-string v3, "kPropertyClass.typeConstructor.parameters"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Li4/v;->X(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "kPropertyClass.typeConstructor.parameters.single()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Li5/a1;

    invoke-direct {v1, v2}, Ly6/y0;-><init>(Li5/a1;)V

    invoke-static {v1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, p1, v1}, Ly6/m0;->e(Ly6/g1;Li5/e;Ljava/util/List;)Ly6/s0;

    move-result-object p1

    :goto_59
    if-eqz p1, :cond_77

    invoke-interface {p0}, Li5/d1;->getType()Ly6/l0;

    move-result-object p0

    const-string v0, "secondParameter.type"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ly6/a2;->i(Ly6/l0;)Ly6/l0;

    move-result-object p0

    const-string v0, "makeNotNullable(this)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Ld7/c;->j(Ly6/l0;Ly6/l0;)Z

    move-result p0

    goto :goto_78

    :cond_77
    const/4 p0, 0x0

    :goto_78
    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 1

    const-string p0, "second parameter must be of type KProperty<*> or its supertype"

    return-object p0
.end method
