.class public final Lx7/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lkotlinx/serialization/descriptors/SerialDescriptor;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public final b:[Ljava/lang/String;

.field public final c:[Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public final d:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final f:[Lkotlinx/serialization/descriptors/SerialDescriptor;

.field public final g:Lh4/f;

.field public final h:Ljava/lang/String;

.field public final i:Lx7/i;

.field public final j:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lx7/i;ILjava/util/List;Lx7/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lx7/i;",
            "I",
            "Ljava/util/List<",
            "+",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            ">;",
            "Lx7/a;",
            ")V"
        }
    .end annotation

    const-string v0, "serialName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameters"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx7/e;->h:Ljava/lang/String;

    iput-object p2, p0, Lx7/e;->i:Lx7/i;

    iput p3, p0, Lx7/e;->j:I

    iget-object p1, p5, Lx7/a;->a:Ljava/util/List;

    iput-object p1, p0, Lx7/e;->a:Ljava/util/List;

    iget-object p1, p5, Lx7/a;->b:Ljava/util/List;

    const/4 p2, 0x0

    new-array p3, p2, [Ljava/lang/String;

    invoke-interface {p1, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lx7/e;->b:[Ljava/lang/String;

    iget-object p1, p5, Lx7/a;->d:Ljava/util/List;

    invoke-static {p1}, Lz7/w0;->a(Ljava/util/List;)[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    iput-object p1, p0, Lx7/e;->c:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    iget-object p1, p5, Lx7/a;->e:Ljava/util/List;

    new-array v0, p2, [Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, [Ljava/util/List;

    iput-object p1, p0, Lx7/e;->d:[Ljava/util/List;

    iget-object p1, p5, Lx7/a;->f:Ljava/util/List;

    const-string p3, "<this>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p3

    new-array p3, p3, [Z

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_71

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    add-int/lit8 v0, p2, 0x1

    aput-boolean p5, p3, p2

    move p2, v0

    goto :goto_5b

    :cond_71
    iget-object p1, p0, Lx7/e;->b:[Ljava/lang/String;

    invoke-static {p1}, Li4/k;->Q([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    const/16 p3, 0xa

    invoke-static {p1, p3}, Li4/p;->l(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast p1, Li4/d0;

    invoke-virtual {p1}, Li4/d0;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_88
    move-object p3, p1

    check-cast p3, Li4/e0;

    invoke-virtual {p3}, Li4/e0;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_a8

    invoke-virtual {p3}, Li4/e0;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Li4/c0;

    iget-object p5, p3, Li4/c0;->b:Ljava/lang/Object;

    iget p3, p3, Li4/c0;->a:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v0, Lh4/j;

    invoke-direct {v0, p5, p3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_88

    :cond_a8
    invoke-static {p2}, Li4/k0;->k(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lx7/e;->e:Ljava/util/Map;

    invoke-static {p4}, Lz7/w0;->a(Ljava/util/List;)[Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p1

    iput-object p1, p0, Lx7/e;->f:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    new-instance p1, Lx7/e$a;

    invoke-direct {p1, p0}, Lx7/e$a;-><init>(Lx7/e;)V

    invoke-static {p1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object p1

    iput-object p1, p0, Lx7/e;->g:Lh4/f;

    return-void
.end method


# virtual methods
.method public a()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public b(Ljava/lang/String;)I
    .registers 3

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lx7/e;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_15

    :cond_14
    const/4 p0, -0x3

    :goto_15
    return p0
.end method

.method public c()I
    .registers 1

    iget p0, p0, Lx7/e;->j:I

    return p0
.end method

.method public d(I)Ljava/lang/String;
    .registers 2

    iget-object p0, p0, Lx7/e;->b:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;
    .registers 2

    iget-object p0, p0, Lx7/e;->c:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    aget-object p0, p0, p1

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_6

    goto/16 :goto_6b

    :cond_6
    instance-of v2, p1, Lx7/e;

    if-nez v2, :cond_c

    :goto_a
    move v0, v1

    goto :goto_6b

    :cond_c
    iget-object v2, p0, Lx7/e;->h:Ljava/lang/String;

    move-object v3, p1

    check-cast v3, Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v0

    if-eqz v2, :cond_1d

    goto :goto_a

    :cond_1d
    check-cast p1, Lx7/e;

    iget-object v2, p0, Lx7/e;->f:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    iget-object p1, p1, Lx7/e;->f:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto :goto_a

    :cond_2a
    iget p1, p0, Lx7/e;->j:I

    invoke-interface {v3}, Lkotlinx/serialization/descriptors/SerialDescriptor;->c()I

    move-result v2

    if-eq p1, v2, :cond_33

    goto :goto_a

    :cond_33
    iget p1, p0, Lx7/e;->j:I

    move v2, v1

    :goto_36
    if-ge v2, p1, :cond_6b

    iget-object v4, p0, Lx7/e;->c:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v0

    if-eqz v4, :cond_50

    goto :goto_a

    :cond_50
    iget-object v4, p0, Lx7/e;->c:[Lkotlinx/serialization/descriptors/SerialDescriptor;

    aget-object v4, v4, v2

    invoke-interface {v4}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object v4

    invoke-interface {v3, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v5

    invoke-interface {v5}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v0

    if-eqz v4, :cond_68

    goto :goto_a

    :cond_68
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    :cond_6b
    :goto_6b
    return v0
.end method

.method public f()Lx7/i;
    .registers 1

    iget-object p0, p0, Lx7/e;->i:Lx7/i;

    return-object p0
.end method

.method public g()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lx7/e;->h:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lx7/e;->g:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 11

    iget v0, p0, Lx7/e;->j:I

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ly4/h;->e(II)Ly4/d;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lx7/e;->h:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-static {v0, v1, v3}, Landroidx/constraintlayout/core/motion/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    new-instance v8, Lx7/e$b;

    invoke-direct {v8, p0}, Lx7/e$b;-><init>(Lx7/e;)V

    const/16 v9, 0x18

    const-string v3, ", "

    const-string v5, ")"

    invoke-static/range {v2 .. v9}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
