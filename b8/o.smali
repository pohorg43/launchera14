.class public final Lb8/o;
.super Ly7/a;
.source ""

# interfaces
.implements La8/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb8/o$a;
    }
.end annotation


# instance fields
.field public final a:Lc8/b;

.field public final b:Lb8/c;

.field public c:Z

.field public d:Z

.field public final e:Lb8/o$a;

.field public final f:La8/a;

.field public final g:Lb8/q;

.field public final h:[La8/m;


# direct methods
.method public constructor <init>(Lb8/o$a;La8/a;Lb8/q;[La8/m;)V
    .registers 6

    const-string v0, "composer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modeReuseCache"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ly7/a;-><init>()V

    iput-object p1, p0, Lb8/o;->e:Lb8/o$a;

    iput-object p2, p0, Lb8/o;->f:La8/a;

    iput-object p3, p0, Lb8/o;->g:Lb8/q;

    iput-object p4, p0, Lb8/o;->h:[La8/m;

    iget-object p1, p2, La8/a;->a:Lb8/c;

    iget-object p2, p1, Lb8/c;->k:Lc8/b;

    iput-object p2, p0, Lb8/o;->a:Lc8/b;

    iput-object p1, p0, Lb8/o;->b:Lb8/c;

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p2, p4, p1

    if-nez p2, :cond_33

    aget-object p2, p4, p1

    if-eq p2, p0, :cond_35

    :cond_33
    aput-object p0, p4, p1

    :cond_35
    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)V
    .registers 3

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb8/o;->e:Lb8/o$a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lb8/p;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-void
.end method

.method public D(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .registers 9

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb8/o;->g:Lb8/q;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x2c

    const/4 v2, 0x1

    if-eq v0, v2, :cond_7a

    const/4 v3, 0x0

    const/16 v4, 0x3a

    const/4 v5, 0x2

    if-eq v0, v5, :cond_52

    const/4 v5, 0x3

    if-eq v0, v5, :cond_3d

    iget-object v0, p0, Lb8/o;->e:Lb8/o$a;

    iget-boolean v3, v0, Lb8/o$a;->b:Z

    if-nez v3, :cond_24

    iget-object v0, v0, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_24
    iget-object v0, p0, Lb8/o;->e:Lb8/o$a;

    invoke-virtual {v0}, Lb8/o$a;->a()V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb8/o;->C(Ljava/lang/String;)V

    iget-object p1, p0, Lb8/o;->e:Lb8/o$a;

    iget-object p1, p1, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb8/o;->e:Lb8/o$a;

    invoke-virtual {p0}, Lb8/o$a;->c()V

    goto :goto_8a

    :cond_3d
    if-nez p2, :cond_41

    iput-boolean v2, p0, Lb8/o;->c:Z

    :cond_41
    if-ne p2, v2, :cond_8a

    iget-object p1, p0, Lb8/o;->e:Lb8/o$a;

    iget-object p1, p1, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lb8/o;->e:Lb8/o$a;

    invoke-virtual {p1}, Lb8/o$a;->c()V

    iput-boolean v3, p0, Lb8/o;->c:Z

    goto :goto_8a

    :cond_52
    iget-object p1, p0, Lb8/o;->e:Lb8/o$a;

    iget-boolean v0, p1, Lb8/o$a;->b:Z

    if-nez v0, :cond_74

    rem-int/2addr p2, v5

    if-nez p2, :cond_67

    iget-object p1, p1, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lb8/o;->e:Lb8/o$a;

    invoke-virtual {p1}, Lb8/o$a;->a()V

    move v3, v2

    goto :goto_71

    :cond_67
    iget-object p1, p1, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lb8/o;->e:Lb8/o$a;

    invoke-virtual {p1}, Lb8/o$a;->c()V

    :goto_71
    iput-boolean v3, p0, Lb8/o;->c:Z

    goto :goto_8a

    :cond_74
    iput-boolean v2, p0, Lb8/o;->c:Z

    invoke-virtual {p1}, Lb8/o$a;->a()V

    goto :goto_8a

    :cond_7a
    iget-object p1, p0, Lb8/o;->e:Lb8/o$a;

    iget-boolean p2, p1, Lb8/o$a;->b:Z

    if-nez p2, :cond_85

    iget-object p1, p1, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_85
    iget-object p0, p0, Lb8/o;->e:Lb8/o$a;

    invoke-virtual {p0}, Lb8/o$a;->a()V

    :cond_8a
    :goto_8a
    return v2
.end method

.method public E()La8/a;
    .registers 1

    iget-object p0, p0, Lb8/o;->f:La8/a;

    return-object p0
.end method

.method public a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/c;
    .registers 6

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb8/o;->f:La8/a;

    invoke-static {v0, p1}, Lp4/c;->e(La8/a;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lb8/q;

    move-result-object v0

    iget-char v1, v0, Lb8/q;->c:C

    if-eqz v1, :cond_20

    iget-object v2, p0, Lb8/o;->e:Lb8/o$a;

    iget-object v2, v2, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb8/o;->e:Lb8/o$a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lb8/o$a;->b:Z

    iget v3, v1, Lb8/o$a;->a:I

    add-int/2addr v3, v2

    iput v3, v1, Lb8/o$a;->a:I

    :cond_20
    iget-boolean v1, p0, Lb8/o;->d:Z

    if-eqz v1, :cond_48

    const/4 v1, 0x0

    iput-boolean v1, p0, Lb8/o;->d:Z

    iget-object v1, p0, Lb8/o;->e:Lb8/o$a;

    invoke-virtual {v1}, Lb8/o$a;->a()V

    iget-object v1, p0, Lb8/o;->b:Lb8/c;

    iget-object v1, v1, Lb8/c;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lb8/o;->C(Ljava/lang/String;)V

    iget-object v1, p0, Lb8/o;->e:Lb8/o$a;

    iget-object v1, v1, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb8/o;->e:Lb8/o$a;

    invoke-virtual {v1}, Lb8/o$a;->c()V

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb8/o;->C(Ljava/lang/String;)V

    :cond_48
    iget-object p1, p0, Lb8/o;->g:Lb8/q;

    if-ne p1, v0, :cond_4d

    return-object p0

    :cond_4d
    iget-object p1, p0, Lb8/o;->h:[La8/m;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget-object p1, p1, v1

    if-eqz p1, :cond_58

    goto :goto_63

    :cond_58
    new-instance p1, Lb8/o;

    iget-object v1, p0, Lb8/o;->e:Lb8/o$a;

    iget-object v2, p0, Lb8/o;->f:La8/a;

    iget-object p0, p0, Lb8/o;->h:[La8/m;

    invoke-direct {p1, v1, v2, v0, p0}, Lb8/o;-><init>(Lb8/o$a;La8/a;Lb8/q;[La8/m;)V

    :goto_63
    return-object p1
.end method

.method public b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 3

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lb8/o;->g:Lb8/q;

    iget-char p1, p1, Lb8/q;->d:C

    if-eqz p1, :cond_21

    iget-object p1, p0, Lb8/o;->e:Lb8/o$a;

    iget v0, p1, Lb8/o$a;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lb8/o$a;->a:I

    invoke-virtual {p1}, Lb8/o$a;->a()V

    iget-object p1, p0, Lb8/o;->e:Lb8/o$a;

    iget-object p0, p0, Lb8/o;->g:Lb8/q;

    iget-char p0, p0, Lb8/q;->d:C

    iget-object p1, p1, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_21
    return-void
.end method

.method public c()Lc8/b;
    .registers 1

    iget-object p0, p0, Lb8/o;->a:Lc8/b;

    return-object p0
.end method

.method public d(D)V
    .registers 4

    iget-boolean v0, p0, Lb8/o;->c:Z

    if-eqz v0, :cond_c

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb8/o;->C(Ljava/lang/String;)V

    goto :goto_13

    :cond_c
    iget-object v0, p0, Lb8/o;->e:Lb8/o$a;

    iget-object v0, v0, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    :goto_13
    iget-object v0, p0, Lb8/o;->b:Lb8/c;

    iget-boolean v0, v0, Lb8/c;->j:Z

    if-nez v0, :cond_41

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_2b

    goto :goto_41

    :cond_2b
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p0, p0, Lb8/o;->e:Lb8/o$a;

    iget-object p0, p0, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "composer.sb.toString()"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lm4/d;->b(Ljava/lang/Number;Ljava/lang/String;)Lb8/e;

    move-result-object p0

    throw p0

    :cond_41
    :goto_41
    return-void
.end method

.method public e(B)V
    .registers 3

    iget-boolean v0, p0, Lb8/o;->c:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb8/o;->C(Ljava/lang/String;)V

    goto :goto_17

    :cond_c
    iget-object p0, p0, Lb8/o;->e:Lb8/o$a;

    iget-object p0, p0, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_17
    return-void
.end method

.method public f(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ly7/c;
    .registers 3

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb8/o;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/c;

    move-result-object p0

    return-object p0
.end method

.method public g(Lkotlinx/serialization/descriptors/SerialDescriptor;I)V
    .registers 4

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb8/o;->C(Ljava/lang/String;)V

    return-void
.end method

.method public i(J)V
    .registers 4

    iget-boolean v0, p0, Lb8/o;->c:Z

    if-eqz v0, :cond_c

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb8/o;->C(Ljava/lang/String;)V

    goto :goto_13

    :cond_c
    iget-object p0, p0, Lb8/o;->e:Lb8/o$a;

    iget-object p0, p0, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :goto_13
    return-void
.end method

.method public k()V
    .registers 2

    iget-object p0, p0, Lb8/o;->e:Lb8/o$a;

    const-string v0, "null"

    invoke-virtual {p0, v0}, Lb8/o$a;->b(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public m(S)V
    .registers 3

    iget-boolean v0, p0, Lb8/o;->c:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb8/o;->C(Ljava/lang/String;)V

    goto :goto_17

    :cond_c
    iget-object p0, p0, Lb8/o;->e:Lb8/o$a;

    iget-object p0, p0, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_17
    return-void
.end method

.method public n(Z)V
    .registers 3

    iget-boolean v0, p0, Lb8/o;->c:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb8/o;->C(Ljava/lang/String;)V

    goto :goto_13

    :cond_c
    iget-object p0, p0, Lb8/o;->e:Lb8/o$a;

    iget-object p0, p0, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :goto_13
    return-void
.end method

.method public p(F)V
    .registers 3

    iget-boolean v0, p0, Lb8/o;->c:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lb8/o;->C(Ljava/lang/String;)V

    goto :goto_13

    :cond_c
    iget-object v0, p0, Lb8/o;->e:Lb8/o$a;

    iget-object v0, v0, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :goto_13
    iget-object v0, p0, Lb8/o;->b:Lb8/c;

    iget-boolean v0, v0, Lb8/c;->j:Z

    if-nez v0, :cond_41

    invoke-static {p1}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_27

    const/4 v0, 0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    if-eqz v0, :cond_2b

    goto :goto_41

    :cond_2b
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lb8/o;->e:Lb8/o$a;

    iget-object p0, p0, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "composer.sb.toString()"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lm4/d;->b(Ljava/lang/Number;Ljava/lang/String;)Lb8/e;

    move-result-object p0

    throw p0

    :cond_41
    :goto_41
    return-void
.end method

.method public q(C)V
    .registers 2

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb8/o;->C(Ljava/lang/String;)V

    return-void
.end method

.method public s()V
    .registers 1

    return-void
.end method

.method public v(Lw7/h;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw7/h<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lz7/b;

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lb8/o;->f:La8/a;

    iget-object v0, v0, La8/a;->a:Lb8/c;

    iget-boolean v0, v0, Lb8/c;->h:Z

    if-eqz v0, :cond_13

    goto/16 :goto_b8

    :cond_13
    const-string v0, "null cannot be cast to non-null type kotlin.Any"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlinx.serialization.internal.AbstractPolymorphicSerializer<kotlin.Any>"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lz7/b;

    invoke-static {p1, p0, p2}, La4/c;->b(Lz7/b;Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)Lw7/h;

    move-result-object v0

    invoke-virtual {p0}, Lb8/o;->E()La8/a;

    move-result-object v1

    iget-object v1, v1, La8/a;->a:Lb8/c;

    iget-object v1, v1, Lb8/c;->i:Ljava/lang/String;

    instance-of v2, p1, Lw7/f;

    if-nez v2, :cond_30

    goto :goto_3e

    :cond_30
    invoke-interface {v0}, Lw7/h;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-static {v2}, Lz7/e0;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_82

    :goto_3e
    invoke-interface {v0}, Lw7/h;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object p1

    const-string v1, "kind"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p1, Lx7/i$b;

    if-nez v1, :cond_76

    instance-of v1, p1, Lx7/d;

    if-nez v1, :cond_6a

    instance-of p1, p1, Lx7/c;

    if-nez p1, :cond_5e

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb8/o;->d:Z

    invoke-interface {v0, p0, p2}, Lw7/h;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    goto :goto_bb

    :cond_5e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Actual serializer for polymorphic cannot be polymorphic itself"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Primitives cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_76
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Enums cannot be serialized polymorphically with \'type\' parameter. You can use \'JsonBuilder.useArrayPolymorphism\' instead"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_82
    invoke-interface {p1}, Lw7/h;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p0

    invoke-interface {p0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0}, Lw7/h;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Sealed class \'"

    const-string v0, "\' cannot be serialized as base class \'"

    const-string v2, "\' because"

    invoke-static {p2, p1, v0, p0, v2}, Landroidx/constraintlayout/core/parser/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " it has property name that conflicts with JSON class discriminator \'"

    const-string p2, "\'. "

    const-string v0, "You can either change class discriminator in JsonConfiguration, "

    invoke-static {p0, p1, v1, p2, v0}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "rename property with @SerialName annotation or fall back to array polymorphism"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b8
    :goto_b8
    invoke-interface {p1, p0, p2}, Lw7/h;->serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V

    :goto_bb
    return-void
.end method

.method public w(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .registers 3

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb8/o;->b:Lb8/c;

    iget-boolean p0, p0, Lb8/c;->a:Z

    return p0
.end method

.method public y(I)V
    .registers 3

    iget-boolean v0, p0, Lb8/o;->c:Z

    if-eqz v0, :cond_c

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb8/o;->C(Ljava/lang/String;)V

    goto :goto_13

    :cond_c
    iget-object p0, p0, Lb8/o;->e:Lb8/o$a;

    iget-object p0, p0, Lb8/o$a;->c:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_13
    return-void
.end method
