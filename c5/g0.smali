.class public abstract Lc5/g0;
.super Lc5/i;
.source ""

# interfaces
.implements Lz4/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/g0$b;,
        Lc5/g0$a;,
        Lc5/g0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lc5/i<",
        "TV;>;",
        "Lz4/n<",
        "TV;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nKPropertyImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KPropertyImpl.kt\nkotlin/reflect/jvm/internal/KPropertyImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,333:1\n1#2:334\n*E\n"
    }
.end annotation


# static fields
.field public static final l:Ljava/lang/Object;


# instance fields
.field public final f:Lc5/t;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/Object;

.field public final j:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Lc5/p0$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc5/p0$a<",
            "Li5/o0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc5/g0;->l:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lc5/t;Li5/o0;)V
    .registers 10

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Li5/l;->getName()Lh6/f;

    move-result-object v0

    invoke-virtual {v0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v3

    const-string v0, "descriptor.name.asString()"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc5/t0;->a:Lc5/t0;

    invoke-static {p2}, Lc5/t0;->c(Li5/o0;)Lc5/h;

    move-result-object v0

    invoke-virtual {v0}, Lc5/h;->a()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lc5/g0;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Li5/o0;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Li5/o0;Ljava/lang/Object;)V
    .registers 6

    invoke-direct {p0}, Lc5/i;-><init>()V

    iput-object p1, p0, Lc5/g0;->f:Lc5/t;

    iput-object p2, p0, Lc5/g0;->g:Ljava/lang/String;

    iput-object p3, p0, Lc5/g0;->h:Ljava/lang/String;

    iput-object p5, p0, Lc5/g0;->i:Ljava/lang/Object;

    sget-object p1, Lkotlin/a;->b:Lkotlin/a;

    new-instance p2, Lc5/g0$e;

    invoke-direct {p2, p0}, Lc5/g0$e;-><init>(Lc5/g0;)V

    invoke-static {p1, p2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lc5/g0;->j:Lh4/f;

    new-instance p1, Lc5/g0$d;

    invoke-direct {p1, p0}, Lc5/g0$d;-><init>(Lc5/g0;)V

    invoke-static {p4, p1}, Lc5/p0;->c(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;)Lc5/p0$a;

    move-result-object p1

    const-string p2, "lazySoft(descriptorIniti…or(name, signature)\n    }"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lc5/g0;->k:Lc5/p0$a;

    return-void
.end method

.method public constructor <init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 12

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lc5/g0;-><init>(Lc5/t;Ljava/lang/String;Ljava/lang/String;Li5/o0;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public e()Ld5/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld5/f<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lc5/g0;->o()Lc5/g0$b;

    move-result-object p0

    invoke-virtual {p0}, Lc5/g0$b;->e()Ld5/f;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    invoke-static {p1}, Lc5/w0;->c(Ljava/lang/Object;)Lc5/g0;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    :cond_8
    iget-object v1, p0, Lc5/g0;->f:Lc5/t;

    iget-object v2, p1, Lc5/g0;->f:Lc5/t;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lc5/g0;->g:Ljava/lang/String;

    iget-object v2, p1, Lc5/g0;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lc5/g0;->h:Ljava/lang/String;

    iget-object v2, p1, Lc5/g0;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iget-object p0, p0, Lc5/g0;->i:Ljava/lang/Object;

    iget-object p1, p1, Lc5/g0;->i:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    const/4 v0, 0x1

    :cond_31
    return v0
.end method

.method public g()Lc5/t;
    .registers 1

    iget-object p0, p0, Lc5/g0;->f:Lc5/t;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lc5/g0;->g:Ljava/lang/String;

    return-object p0
.end method

.method public h()Ld5/f;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld5/f<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0}, Lc5/g0;->o()Lc5/g0$b;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lc5/g0;->f:Lc5/t;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc5/g0;->g:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/room/util/b;->a(Ljava/lang/String;II)I

    move-result v0

    iget-object p0, p0, Lc5/g0;->h:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public bridge synthetic i()Li5/b;
    .registers 1

    invoke-virtual {p0}, Lc5/g0;->n()Li5/o0;

    move-result-object p0

    return-object p0
.end method

.method public isConst()Z
    .registers 1

    invoke-virtual {p0}, Lc5/g0;->n()Li5/o0;

    move-result-object p0

    invoke-interface {p0}, Li5/f1;->isConst()Z

    move-result p0

    return p0
.end method

.method public isLateinit()Z
    .registers 1

    invoke-virtual {p0}, Lc5/g0;->n()Li5/o0;

    move-result-object p0

    invoke-interface {p0}, Li5/f1;->r0()Z

    move-result p0

    return p0
.end method

.method public isSuspend()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public k()Z
    .registers 2

    iget-object p0, p0, Lc5/g0;->i:Ljava/lang/Object;

    sget-object v0, Lkotlin/jvm/internal/CallableReference;->NO_RECEIVER:Ljava/lang/Object;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final l()Ljava/lang/reflect/Member;
    .registers 6

    invoke-virtual {p0}, Lc5/g0;->n()Li5/o0;

    move-result-object v0

    invoke-interface {v0}, Li5/g1;->x()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    sget-object v0, Lc5/t0;->a:Lc5/t0;

    invoke-virtual {p0}, Lc5/g0;->n()Li5/o0;

    move-result-object v0

    invoke-static {v0}, Lc5/t0;->c(Li5/o0;)Lc5/h;

    move-result-object v0

    instance-of v2, v0, Lc5/h$c;

    if-eqz v2, :cond_51

    check-cast v0, Lc5/h$c;

    iget-object v2, v0, Lc5/h$c;->c:Lf6/a$d;

    iget v3, v2, Lf6/a$d;->b:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_27

    const/4 v3, 0x1

    goto :goto_28

    :cond_27
    const/4 v3, 0x0

    :goto_28
    if-eqz v3, :cond_51

    iget-object v2, v2, Lf6/a$d;->g:Lf6/a$c;

    invoke-virtual {v2}, Lf6/a$c;->f()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-virtual {v2}, Lf6/a$c;->e()Z

    move-result v3

    if-nez v3, :cond_39

    goto :goto_50

    :cond_39
    iget-object v1, v0, Lc5/h$c;->d:Le6/c;

    iget v3, v2, Lf6/a$c;->c:I

    invoke-interface {v1, v3}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lc5/h$c;->d:Le6/c;

    iget v2, v2, Lf6/a$c;->d:I

    invoke-interface {v0, v2}, Le6/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lc5/g0;->f:Lc5/t;

    invoke-virtual {p0, v1, v0}, Lc5/t;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object p0

    return-object p0

    :cond_50
    :goto_50
    return-object v1

    :cond_51
    invoke-virtual {p0}, Lc5/g0;->p()Ljava/lang/reflect/Field;

    move-result-object p0

    return-object p0
.end method

.method public final m(Ljava/lang/reflect/Member;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    :try_start_0
    sget-object v0, Lc5/g0;->l:Ljava/lang/Object;

    if-eq p2, v0, :cond_6

    if-ne p3, v0, :cond_10

    :cond_6
    invoke-virtual {p0}, Lc5/g0;->n()Li5/o0;

    move-result-object v1

    invoke-interface {v1}, Li5/a;->L()Li5/r0;

    move-result-object v1

    if-eqz v1, :cond_f6

    :cond_10
    invoke-virtual {p0}, Lc5/g0;->k()Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lc5/g0;->i:Ljava/lang/Object;

    invoke-virtual {p0}, Lc5/g0;->n()Li5/o0;

    move-result-object v2

    invoke-static {v1, v2}, Ld5/j;->a(Ljava/lang/Object;Li5/b;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_22

    :cond_21
    move-object v1, p2

    :goto_22
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_28

    move v4, v2

    goto :goto_29

    :cond_28
    move v4, v3

    :goto_29
    const/4 v5, 0x0

    if-eqz v4, :cond_2d

    goto :goto_2e

    :cond_2d
    move-object v1, v5

    :goto_2e
    invoke-virtual {p0}, Lc5/g0;->k()Z

    move-result v4

    if-eqz v4, :cond_35

    goto :goto_36

    :cond_35
    move-object p2, p3

    :goto_36
    if-eq p2, v0, :cond_3a

    move p3, v2

    goto :goto_3b

    :cond_3a
    move p3, v3

    :goto_3b
    if-eqz p3, :cond_3e

    goto :goto_3f

    :cond_3e
    move-object p2, v5

    :goto_3f
    instance-of p3, p1, Ljava/lang/reflect/AccessibleObject;

    if-eqz p3, :cond_47

    move-object p3, p1

    check-cast p3, Ljava/lang/reflect/AccessibleObject;

    goto :goto_48

    :cond_47
    move-object p3, v5

    :goto_48
    if-nez p3, :cond_4b

    goto :goto_52

    :cond_4b
    invoke-static {p0}, Lb5/a;->a(Lz4/c;)Z

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    :goto_52
    if-nez p1, :cond_56

    goto/16 :goto_d9

    :cond_56
    instance-of p0, p1, Ljava/lang/reflect/Field;

    if-eqz p0, :cond_62

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_d9

    :cond_62
    instance-of p0, p1, Ljava/lang/reflect/Method;

    if-eqz p0, :cond_da

    move-object p0, p1

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p0

    array-length p0, p0

    if-eqz p0, :cond_d1

    if-eq p0, v2, :cond_b2

    const/4 p3, 0x2

    if-ne p0, p3, :cond_96

    move-object p0, p1

    check-cast p0, Ljava/lang/reflect/Method;

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v1, p3, v3

    if-nez p2, :cond_8f

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    aget-object p1, p1, v2

    const-string p2, "fieldOrMethod.parameterTypes[1]"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc5/w0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    :cond_8f
    aput-object p2, p3, v2

    invoke-virtual {p0, v5, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_d9

    :cond_96
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delegate method "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " should take 0, 1, or 2 parameters"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_b2
    move-object p0, p1

    check-cast p0, Ljava/lang/reflect/Method;

    new-array p2, v2, [Ljava/lang/Object;

    if-nez v1, :cond_ca

    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    aget-object p1, p1, v3

    const-string p3, "fieldOrMethod.parameterTypes[0]"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc5/w0;->e(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    :cond_ca
    aput-object v1, p2, v3

    invoke-virtual {p0, v5, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_d9

    :cond_d1
    check-cast p1, Ljava/lang/reflect/Method;

    new-array p0, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v5, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_d9
    return-object v5

    :cond_da
    new-instance p0, Ljava/lang/AssertionError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "delegate field/method "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " neither field nor method"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_f6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p3, 0x27

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' is not an extension property and thus getExtensionDelegate() is not going to work, use getDelegate() instead"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_112
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_112} :catch_112

    :catch_112
    move-exception p0

    new-instance p1, La5/b;

    invoke-direct {p1, p0}, La5/b;-><init>(Ljava/lang/IllegalAccessException;)V

    throw p1
.end method

.method public n()Li5/o0;
    .registers 2

    iget-object p0, p0, Lc5/g0;->k:Lc5/p0$a;

    invoke-virtual {p0}, Lc5/p0$a;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_descriptor()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Li5/o0;

    return-object p0
.end method

.method public abstract o()Lc5/g0$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc5/g0$b<",
            "TV;>;"
        }
    .end annotation
.end method

.method public final p()Ljava/lang/reflect/Field;
    .registers 1

    iget-object p0, p0, Lc5/g0;->j:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    sget-object v0, Lc5/r0;->a:Lc5/r0;

    invoke-virtual {p0}, Lc5/g0;->n()Li5/o0;

    move-result-object p0

    invoke-static {p0}, Lc5/r0;->d(Li5/o0;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
