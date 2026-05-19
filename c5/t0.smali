.class public final Lc5/t0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRuntimeTypeMapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RuntimeTypeMapper.kt\nkotlin/reflect/jvm/internal/RuntimeTypeMapper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,283:1\n1#2:284\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lc5/t0;

.field public static final b:Lh6/b;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lh6/c;

    const-string v1, "java.lang.Void"

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v0

    const-string v1, "topLevel(FqName(\"java.lang.Void\"))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lc5/t0;->b:Lh6/b;

    return-void
.end method

.method public static final a(Ljava/lang/Class;)Lf5/h;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lf5/h;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lp6/d;->b(Ljava/lang/String;)Lp6/d;

    move-result-object p0

    invoke-virtual {p0}, Lp6/d;->e()Lf5/h;

    move-result-object p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return-object p0
.end method

.method public static final b(Li5/x;)Lc5/g$e;
    .registers 6

    new-instance v0, Lc5/g$e;

    new-instance v1, Lg6/d$b;

    invoke-static {p0}, Lr5/l0;->a(Li5/b;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_49

    instance-of v2, p0, Li5/p0;

    const-string v3, "descriptor.propertyIfAccessor.name.asString()"

    if-eqz v2, :cond_24

    invoke-static {p0}, Lo6/c;->m(Li5/b;)Li5/b;

    move-result-object v2

    invoke-interface {v2}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    invoke-virtual {v2}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lr5/e0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    :cond_24
    instance-of v2, p0, Li5/q0;

    if-eqz v2, :cond_3c

    invoke-static {p0}, Lo6/c;->m(Li5/b;)Li5/b;

    move-result-object v2

    invoke-interface {v2}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    invoke-virtual {v2}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lr5/e0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    :cond_3c
    invoke-interface {p0}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    invoke-virtual {v2}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "descriptor.name.asString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_49
    :goto_49
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v4, v4, v3}, La6/x;->b(Li5/x;ZZI)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lg6/d$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lc5/g$e;-><init>(Lg6/d$b;)V

    return-object v0
.end method

.method public static final c(Li5/o0;)Lc5/h;
    .registers 8

    const-string v0, "possiblyOverriddenProperty"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lk6/i;->z(Li5/b;)Li5/b;

    move-result-object p0

    check-cast p0, Li5/o0;

    invoke-interface {p0}, Li5/o0;->a()Li5/o0;

    move-result-object v1

    const-string p0, "unwrapFakeOverride(possi…rriddenProperty).original"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, v1, Lw6/m;

    const/4 v0, 0x0

    if-eqz p0, :cond_38

    move-object p0, v1

    check-cast p0, Lw6/m;

    iget-object v2, p0, Lw6/m;->C:Lc6/n;

    sget-object v3, Lf6/a;->d:Li6/h$f;

    const-string v4, "propertySignature"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Le6/e;->a(Li6/h$d;Li6/h$f;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf6/a$d;

    if-eqz v3, :cond_bc

    new-instance v6, Lc5/h$c;

    iget-object v4, p0, Lw6/m;->D:Le6/c;

    iget-object v5, p0, Lw6/m;->E:Le6/g;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc5/h$c;-><init>(Li5/o0;Lc6/n;Lf6/a$d;Le6/c;Le6/g;)V

    return-object v6

    :cond_38
    instance-of p0, v1, Lt5/f;

    if-eqz p0, :cond_bc

    move-object p0, v1

    check-cast p0, Lt5/f;

    invoke-virtual {p0}, Ll5/n;->getSource()Li5/v0;

    move-result-object p0

    instance-of v2, p0, Lx5/a;

    if-eqz v2, :cond_4a

    check-cast p0, Lx5/a;

    goto :goto_4b

    :cond_4a
    move-object p0, v0

    :goto_4b
    if-eqz p0, :cond_52

    invoke-interface {p0}, Lx5/a;->c()Ly5/l;

    move-result-object p0

    goto :goto_53

    :cond_52
    move-object p0, v0

    :goto_53
    instance-of v2, p0, Lo5/y;

    if-eqz v2, :cond_61

    new-instance v0, Lc5/h$a;

    check-cast p0, Lo5/y;

    iget-object p0, p0, Lo5/y;->a:Ljava/lang/reflect/Field;

    invoke-direct {v0, p0}, Lc5/h$a;-><init>(Ljava/lang/reflect/Field;)V

    goto :goto_97

    :cond_61
    instance-of v2, p0, Lo5/b0;

    if-eqz v2, :cond_98

    new-instance v2, Lc5/h$b;

    check-cast p0, Lo5/b0;

    iget-object p0, p0, Lo5/b0;->a:Ljava/lang/reflect/Method;

    invoke-interface {v1}, Li5/o0;->getSetter()Li5/q0;

    move-result-object v1

    if-eqz v1, :cond_76

    invoke-interface {v1}, Li5/o;->getSource()Li5/v0;

    move-result-object v1

    goto :goto_77

    :cond_76
    move-object v1, v0

    :goto_77
    instance-of v3, v1, Lx5/a;

    if-eqz v3, :cond_7e

    check-cast v1, Lx5/a;

    goto :goto_7f

    :cond_7e
    move-object v1, v0

    :goto_7f
    if-eqz v1, :cond_86

    invoke-interface {v1}, Lx5/a;->c()Ly5/l;

    move-result-object v1

    goto :goto_87

    :cond_86
    move-object v1, v0

    :goto_87
    instance-of v3, v1, Lo5/b0;

    if-eqz v3, :cond_8e

    check-cast v1, Lo5/b0;

    goto :goto_8f

    :cond_8e
    move-object v1, v0

    :goto_8f
    if-eqz v1, :cond_93

    iget-object v0, v1, Lo5/b0;->a:Ljava/lang/reflect/Method;

    :cond_93
    invoke-direct {v2, p0, v0}, Lc5/h$b;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    move-object v0, v2

    :goto_97
    return-object v0

    :cond_98
    new-instance v0, Lc5/n0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect resolution sequence for Java field "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " (source = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bc
    invoke-interface {v1}, Li5/o0;->getGetter()Li5/p0;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lc5/t0;->b(Li5/x;)Lc5/g$e;

    move-result-object p0

    invoke-interface {v1}, Li5/o0;->getSetter()Li5/q0;

    move-result-object v1

    if-eqz v1, :cond_d1

    invoke-static {v1}, Lc5/t0;->b(Li5/x;)Lc5/g$e;

    move-result-object v0

    :cond_d1
    new-instance v1, Lc5/h$d;

    invoke-direct {v1, p0, v0}, Lc5/h$d;-><init>(Lc5/g$e;Lc5/g$e;)V

    return-object v1
.end method

.method public static final d(Li5/x;)Lc5/g;
    .registers 8

    const-string v0, "possiblySubstitutedFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lk6/i;->z(Li5/b;)Li5/b;

    move-result-object v0

    check-cast v0, Li5/x;

    invoke-interface {v0}, Li5/x;->a()Li5/x;

    move-result-object v0

    const-string v1, "unwrapFakeOverride(possi…titutedFunction).original"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, v0, Lw6/b;

    if-eqz v1, :cond_72

    move-object v1, v0

    check-cast v1, Lw6/b;

    invoke-interface {v1}, Lw6/j;->b0()Li6/p;

    move-result-object v2

    instance-of v3, v2, Lc6/i;

    if-eqz v3, :cond_3c

    sget-object v3, Lg6/h;->a:Lg6/h;

    move-object v4, v2

    check-cast v4, Lc6/i;

    invoke-interface {v1}, Lw6/j;->G()Le6/c;

    move-result-object v5

    invoke-interface {v1}, Lw6/j;->B()Le6/g;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lg6/h;->c(Lc6/i;Le6/c;Le6/g;)Lg6/d$b;

    move-result-object v3

    if-eqz v3, :cond_3c

    new-instance p0, Lc5/g$e;

    invoke-direct {p0, v3}, Lc5/g$e;-><init>(Lg6/d$b;)V

    return-object p0

    :cond_3c
    instance-of v3, v2, Lc6/d;

    if-eqz v3, :cond_6d

    sget-object v3, Lg6/h;->a:Lg6/h;

    check-cast v2, Lc6/d;

    invoke-interface {v1}, Lw6/j;->G()Le6/c;

    move-result-object v4

    invoke-interface {v1}, Lw6/j;->B()Le6/g;

    move-result-object v1

    invoke-virtual {v3, v2, v4, v1}, Lg6/h;->a(Lc6/d;Le6/c;Le6/g;)Lg6/d$b;

    move-result-object v1

    if-eqz v1, :cond_6d

    invoke-interface {p0}, Li5/x;->b()Li5/l;

    move-result-object p0

    const-string v0, "possiblySubstitutedFunction.containingDeclaration"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lk6/k;->b(Li5/l;)Z

    move-result p0

    if-eqz p0, :cond_67

    new-instance p0, Lc5/g$e;

    invoke-direct {p0, v1}, Lc5/g$e;-><init>(Lg6/d$b;)V

    goto :goto_6c

    :cond_67
    new-instance p0, Lc5/g$d;

    invoke-direct {p0, v1}, Lc5/g$d;-><init>(Lg6/d$b;)V

    :goto_6c
    return-object p0

    :cond_6d
    invoke-static {v0}, Lc5/t0;->b(Li5/x;)Lc5/g$e;

    move-result-object p0

    return-object p0

    :cond_72
    instance-of p0, v0, Lt5/e;

    const/4 v1, 0x0

    if-eqz p0, :cond_b8

    move-object p0, v0

    check-cast p0, Lt5/e;

    invoke-virtual {p0}, Ll5/n;->getSource()Li5/v0;

    move-result-object p0

    instance-of v2, p0, Lx5/a;

    if-eqz v2, :cond_85

    check-cast p0, Lx5/a;

    goto :goto_86

    :cond_85
    move-object p0, v1

    :goto_86
    if-eqz p0, :cond_8d

    invoke-interface {p0}, Lx5/a;->c()Ly5/l;

    move-result-object p0

    goto :goto_8e

    :cond_8d
    move-object p0, v1

    :goto_8e
    instance-of v2, p0, Lo5/b0;

    if-eqz v2, :cond_95

    move-object v1, p0

    check-cast v1, Lo5/b0;

    :cond_95
    if-eqz v1, :cond_a1

    iget-object p0, v1, Lo5/b0;->a:Ljava/lang/reflect/Method;

    if-eqz p0, :cond_a1

    new-instance v0, Lc5/g$c;

    invoke-direct {v0, p0}, Lc5/g$c;-><init>(Ljava/lang/reflect/Method;)V

    return-object v0

    :cond_a1
    new-instance p0, Lc5/n0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect resolution sequence for Java method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b8
    instance-of p0, v0, Lt5/b;

    const/16 v2, 0x29

    const-string v3, " ("

    if-eqz p0, :cond_119

    move-object p0, v0

    check-cast p0, Lt5/b;

    invoke-virtual {p0}, Ll5/n;->getSource()Li5/v0;

    move-result-object p0

    instance-of v4, p0, Lx5/a;

    if-eqz v4, :cond_ce

    check-cast p0, Lx5/a;

    goto :goto_cf

    :cond_ce
    move-object p0, v1

    :goto_cf
    if-eqz p0, :cond_d5

    invoke-interface {p0}, Lx5/a;->c()Ly5/l;

    move-result-object v1

    :cond_d5
    instance-of p0, v1, Lo5/v;

    if-eqz p0, :cond_e3

    new-instance p0, Lc5/g$b;

    check-cast v1, Lo5/v;

    iget-object v0, v1, Lo5/v;->a:Ljava/lang/reflect/Constructor;

    invoke-direct {p0, v0}, Lc5/g$b;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_f8

    :cond_e3
    instance-of p0, v1, Lo5/s;

    if-eqz p0, :cond_f9

    move-object p0, v1

    check-cast p0, Lo5/s;

    invoke-virtual {p0}, Lo5/s;->m()Z

    move-result v4

    if-eqz v4, :cond_f9

    new-instance v0, Lc5/g$a;

    iget-object p0, p0, Lo5/s;->a:Ljava/lang/Class;

    invoke-direct {v0, p0}, Lc5/g$a;-><init>(Ljava/lang/Class;)V

    move-object p0, v0

    :goto_f8
    return-object p0

    :cond_f9
    new-instance p0, Lc5/n0;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect resolution sequence for Java constructor "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_119
    if-eqz v0, :cond_190

    invoke-interface {v0}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    sget-object v1, Lf5/j;->c:Lh6/f;

    invoke-virtual {p0, v1}, Lh6/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v1, 0x0

    const/4 v4, 0x1

    if-eqz p0, :cond_131

    invoke-static {v0}, Lk6/h;->k(Li5/x;)Z

    move-result p0

    if-eqz p0, :cond_131

    move p0, v4

    goto :goto_132

    :cond_131
    move p0, v1

    :goto_132
    if-nez p0, :cond_164

    invoke-interface {v0}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    sget-object v5, Lf5/j;->a:Lh6/f;

    invoke-virtual {p0, v5}, Lh6/f;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_148

    invoke-static {v0}, Lk6/h;->k(Li5/x;)Z

    move-result p0

    if-eqz p0, :cond_148

    move p0, v4

    goto :goto_149

    :cond_148
    move p0, v1

    :goto_149
    if-eqz p0, :cond_14c

    goto :goto_164

    :cond_14c
    invoke-interface {v0}, Li5/l;->getName()Lh6/f;

    move-result-object p0

    sget-object v5, Lh5/a;->e:Lh5/a;

    sget-object v5, Lh5/a;->f:Lh6/f;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_165

    invoke-interface {v0}, Li5/a;->g()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_165

    :cond_164
    :goto_164
    move v1, v4

    :cond_165
    if-eqz v1, :cond_16c

    invoke-static {v0}, Lc5/t0;->b(Li5/x;)Lc5/g$e;

    move-result-object p0

    return-object p0

    :cond_16c
    new-instance p0, Lc5/n0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown origin of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lc5/n0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_190
    const/16 p0, 0x1c

    invoke-static {p0}, Lk6/h;->a(I)V

    throw v1
.end method
