.class public abstract Lb8/a;
.super Lz7/l1;
.source ""

# interfaces
.implements La8/d;


# instance fields
.field public final c:Lb8/c;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final d:La8/a;


# direct methods
.method public constructor <init>(La8/a;Lkotlinx/serialization/json/JsonElement;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    invoke-direct {p0}, Lz7/l1;-><init>()V

    iput-object p1, p0, Lb8/a;->d:La8/a;

    iget-object p1, p1, La8/a;->a:Lb8/c;

    iput-object p1, p0, Lb8/a;->c:Lb8/c;

    return-void
.end method


# virtual methods
.method public D()Z
    .registers 1

    invoke-virtual {p0}, Lb8/a;->T()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    instance-of p0, p0, La8/r;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public F()La8/a;
    .registers 1

    iget-object p0, p0, Lb8/a;->d:La8/a;

    return-object p0
.end method

.method public I(Ljava/lang/Object;)Z
    .registers 5

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb8/a;->X(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    iget-object v1, p0, Lb8/a;->d:La8/a;

    iget-object v1, v1, La8/a;->a:Lb8/c;

    iget-boolean v1, v1, Lb8/c;->c:Z

    if-nez v1, :cond_31

    move-object v1, v0

    check-cast v1, La8/p;

    iget-boolean v1, v1, La8/p;->b:Z

    if-nez v1, :cond_1b

    goto :goto_31

    :cond_1b
    const/4 v0, -0x1

    const-string v1, "Boolean literal for key \'"

    const-string v2, "\' should be unquoted.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    invoke-static {v1, p1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lb8/a;->T()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lm4/d;->e(ILjava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0

    :cond_31
    :goto_31
    const-string p0, "$this$boolean"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->a()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb8/p;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public J(Ljava/lang/Object;)B
    .registers 3

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb8/a;->X(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_b
    invoke-static {p1}, Ly0/b;->b(Lkotlinx/serialization/json/JsonPrimitive;)I

    move-result p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_11

    int-to-byte p0, p0

    return p0

    :catchall_11
    const/4 p1, -0x1

    invoke-virtual {p0}, Lb8/a;->T()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to parse \'byte\'"

    invoke-static {p1, v0, p0}, Lm4/d;->e(ILjava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0
.end method

.method public K(Ljava/lang/Object;)C
    .registers 3

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb8/a;->X(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_b
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lk7/t;->a0(Ljava/lang/CharSequence;)C

    move-result p0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_14

    return p0

    :catchall_14
    const/4 p1, -0x1

    invoke-virtual {p0}, Lb8/a;->T()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to parse \'char\'"

    invoke-static {p1, v0, p0}, Lm4/d;->e(ILjava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0
.end method

.method public L(Ljava/lang/Object;)D
    .registers 5

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb8/a;->X(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    :try_start_b
    const-string v1, "$this$double"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_44

    iget-object v2, p0, Lb8/a;->d:La8/a;

    iget-object v2, v2, La8/a;->a:Lb8/c;

    iget-boolean v2, v2, Lb8/c;->j:Z

    if-nez v2, :cond_43

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2e

    const/4 v2, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v2, 0x0

    :goto_2f
    if-eqz v2, :cond_32

    goto :goto_43

    :cond_32
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0}, Lb8/a;->T()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lm4/d;->a(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0

    :cond_43
    :goto_43
    return-wide v0

    :catchall_44
    const/4 p1, -0x1

    invoke-virtual {p0}, Lb8/a;->T()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to parse \'double\'"

    invoke-static {p1, v0, p0}, Lm4/d;->e(ILjava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0
.end method

.method public M(Ljava/lang/Object;)F
    .registers 4

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb8/a;->X(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    :try_start_b
    const-string v1, "$this$float"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_44

    iget-object v1, p0, Lb8/a;->d:La8/a;

    iget-object v1, v1, La8/a;->a:Lb8/c;

    iget-boolean v1, v1, Lb8/c;->j:Z

    if-nez v1, :cond_43

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    if-eqz v1, :cond_32

    goto :goto_43

    :cond_32
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0}, Lb8/a;->T()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lm4/d;->a(Ljava/lang/Number;Ljava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0

    :cond_43
    :goto_43
    return v0

    :catchall_44
    const/4 p1, -0x1

    invoke-virtual {p0}, Lb8/a;->T()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to parse \'float\'"

    invoke-static {p1, v0, p0}, Lm4/d;->e(ILjava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0
.end method

.method public N(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb8/a;->X(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_b
    invoke-static {p1}, Ly0/b;->b(Lkotlinx/serialization/json/JsonPrimitive;)I

    move-result p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_10

    return p0

    :catchall_10
    const/4 p1, -0x1

    invoke-virtual {p0}, Lb8/a;->T()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to parse \'int\'"

    invoke-static {p1, v0, p0}, Lm4/d;->e(ILjava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0
.end method

.method public O(Ljava/lang/Object;)J
    .registers 3

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb8/a;->X(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_b
    const-string v0, "$this$long"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonPrimitive;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_19

    return-wide p0

    :catchall_19
    const/4 p1, -0x1

    invoke-virtual {p0}, Lb8/a;->T()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to parse \'long\'"

    invoke-static {p1, v0, p0}, Lm4/d;->e(ILjava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0
.end method

.method public P(Ljava/lang/Object;)S
    .registers 3

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb8/a;->X(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object p1

    :try_start_b
    invoke-static {p1}, Ly0/b;->b(Lkotlinx/serialization/json/JsonPrimitive;)I

    move-result p0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_11

    int-to-short p0, p0

    return p0

    :catchall_11
    const/4 p1, -0x1

    invoke-virtual {p0}, Lb8/a;->T()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Failed to parse \'short\'"

    invoke-static {p1, v0, p0}, Lm4/d;->e(ILjava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0
.end method

.method public Q(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    check-cast p1, Ljava/lang/String;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb8/a;->X(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;

    move-result-object v0

    iget-object v1, p0, Lb8/a;->d:La8/a;

    iget-object v1, v1, La8/a;->a:Lb8/c;

    iget-boolean v1, v1, Lb8/c;->c:Z

    if-nez v1, :cond_31

    move-object v1, v0

    check-cast v1, La8/p;

    iget-boolean v1, v1, La8/p;->b:Z

    if-eqz v1, :cond_1b

    goto :goto_31

    :cond_1b
    const/4 v0, -0x1

    const-string v1, "String literal for key \'"

    const-string v2, "\' should be quoted.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    invoke-static {v1, p1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lb8/a;->T()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lm4/d;->e(ILjava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0

    :cond_31
    :goto_31
    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonPrimitive;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract S(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
.end method

.method public final T()Lkotlinx/serialization/json/JsonElement;
    .registers 2

    iget-object v0, p0, Lz7/l1;->a:Ljava/util/ArrayList;

    invoke-static {v0}, Li4/v;->P(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_11

    invoke-virtual {p0, v0}, Lb8/a;->S(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    if-eqz v0, :cond_11

    goto :goto_15

    :cond_11
    invoke-virtual {p0}, Lb8/a;->W()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    :goto_15
    return-object v0
.end method

.method public U(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .registers 3

    const-string p0, "desc"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->d(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final V(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .registers 4

    const-string v0, "$this$getTag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lb8/a;->U(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "nestedName"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lz7/l1;->a:Ljava/util/ArrayList;

    invoke-static {p0}, Li4/v;->P(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const-string p0, ""

    :goto_1b
    const-string p2, "parentName"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "childName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public abstract W()Lkotlinx/serialization/json/JsonElement;
.end method

.method public X(Ljava/lang/String;)Lkotlinx/serialization/json/JsonPrimitive;
    .registers 6

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb8/a;->S(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    instance-of v1, v0, Lkotlinx/serialization/json/JsonPrimitive;

    if-nez v1, :cond_f

    const/4 v1, 0x0

    goto :goto_10

    :cond_f
    move-object v1, v0

    :goto_10
    check-cast v1, Lkotlinx/serialization/json/JsonPrimitive;

    if-eqz v1, :cond_15

    return-object v1

    :cond_15
    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected JsonPrimitive at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", found "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lb8/a;->T()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lm4/d;->e(ILjava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0
.end method

.method public a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/b;
    .registers 11

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb8/a;->T()Lkotlinx/serialization/json/JsonElement;

    move-result-object v0

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object v1

    sget-object v2, Lx7/j$b;->a:Lx7/j$b;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ", but had "

    const-string v4, " as the serialized body of "

    const-string v5, "Expected "

    const/4 v6, -0x1

    if-eqz v2, :cond_1d

    goto :goto_21

    :cond_1d
    instance-of v2, v1, Lx7/c;

    if-eqz v2, :cond_5e

    :goto_21
    new-instance v1, Lb8/k;

    iget-object p0, p0, Lb8/a;->d:La8/a;

    instance-of v2, v0, Lkotlinx/serialization/json/JsonArray;

    if-eqz v2, :cond_30

    check-cast v0, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {v1, p0, v0}, Lb8/k;-><init>(La8/a;Lkotlinx/serialization/json/JsonArray;)V

    goto/16 :goto_116

    :cond_30
    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-class v1, Lkotlinx/serialization/json/JsonArray;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lm4/d;->d(ILjava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0

    :cond_5e
    sget-object v2, Lx7/j$c;->a:Lx7/j$c;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_102

    iget-object v1, p0, Lb8/a;->d:La8/a;

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-interface {v2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object v7

    instance-of v8, v7, Lx7/d;

    if-nez v8, :cond_c6

    sget-object v8, Lx7/i$b;->a:Lx7/i$b;

    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    goto :goto_c6

    :cond_7e
    iget-object v1, v1, La8/a;->a:Lb8/c;

    iget-boolean v1, v1, Lb8/c;->d:Z

    if-eqz v1, :cond_c1

    new-instance v1, Lb8/k;

    iget-object p0, p0, Lb8/a;->d:La8/a;

    instance-of v2, v0, Lkotlinx/serialization/json/JsonArray;

    if-eqz v2, :cond_93

    check-cast v0, Lkotlinx/serialization/json/JsonArray;

    invoke-direct {v1, p0, v0}, Lb8/k;-><init>(La8/a;Lkotlinx/serialization/json/JsonArray;)V

    goto/16 :goto_116

    :cond_93
    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-class v1, Lkotlinx/serialization/json/JsonArray;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lm4/d;->d(ILjava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0

    :cond_c1
    invoke-static {v2}, Lm4/d;->c(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lb8/e;

    move-result-object p0

    throw p0

    :cond_c6
    :goto_c6
    new-instance v1, Lb8/l;

    iget-object p0, p0, Lb8/a;->d:La8/a;

    instance-of v2, v0, Lkotlinx/serialization/json/JsonObject;

    if-eqz v2, :cond_d4

    check-cast v0, Lkotlinx/serialization/json/JsonObject;

    invoke-direct {v1, p0, v0}, Lb8/l;-><init>(La8/a;Lkotlinx/serialization/json/JsonObject;)V

    goto :goto_116

    :cond_d4
    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-class v1, Lkotlinx/serialization/json/JsonObject;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lm4/d;->d(ILjava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0

    :cond_102
    new-instance v7, Lb8/j;

    iget-object v1, p0, Lb8/a;->d:La8/a;

    instance-of p0, v0, Lkotlinx/serialization/json/JsonObject;

    if-eqz p0, :cond_117

    move-object v2, v0

    check-cast v2, Lkotlinx/serialization/json/JsonObject;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lb8/j;-><init>(La8/a;Lkotlinx/serialization/json/JsonObject;Ljava/lang/String;Lkotlinx/serialization/descriptors/SerialDescriptor;I)V

    move-object v1, v7

    :goto_116
    return-object v1

    :cond_117
    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-class v1, Lkotlinx/serialization/json/JsonObject;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lm4/d;->d(ILjava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0
.end method

.method public b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 2

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c()Lc8/b;
    .registers 1

    iget-object p0, p0, Lb8/a;->d:La8/a;

    iget-object p0, p0, La8/a;->a:Lb8/c;

    iget-object p0, p0, Lb8/c;->k:Lc8/b;

    return-object p0
.end method

.method public g()Lkotlinx/serialization/json/JsonElement;
    .registers 1

    invoke-virtual {p0}, Lb8/a;->T()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public x(Lw7/a;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lw7/a<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Ln4/f;->a(La8/d;Lw7/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
