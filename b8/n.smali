.class public final Lb8/n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements La8/d;
.implements Lkotlinx/serialization/encoding/Decoder;
.implements Ly7/b;


# instance fields
.field public final a:Lc8/b;

.field public b:I

.field public final c:Lb8/c;

.field public final d:La8/a;

.field public final e:Lb8/q;

.field public final f:Lb8/h;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(La8/a;Lb8/q;Lb8/h;)V
    .registers 5

    const-string v0, "json"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reader"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb8/n;->d:La8/a;

    iput-object p2, p0, Lb8/n;->e:Lb8/q;

    iput-object p3, p0, Lb8/n;->f:Lb8/h;

    iget-object p1, p1, La8/a;->a:Lb8/c;

    iget-object p2, p1, Lb8/c;->k:Lc8/b;

    iput-object p2, p0, Lb8/n;->a:Lc8/b;

    const/4 p2, -0x1

    iput p2, p0, Lb8/n;->b:I

    iput-object p1, p0, Lb8/n;->c:Lb8/c;

    return-void
.end method


# virtual methods
.method public final A(Lkotlinx/serialization/descriptors/SerialDescriptor;I)C
    .registers 3

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb8/n;->w()C

    move-result p0

    return p0
.end method

.method public final B(Lkotlinx/serialization/descriptors/SerialDescriptor;I)B
    .registers 3

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb8/n;->H()B

    move-result p0

    return p0
.end method

.method public final C(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z
    .registers 3

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb8/n;->v()Z

    move-result p0

    return p0
.end method

.method public D()Z
    .registers 2

    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    iget-byte p0, p0, Lb8/h;->b:B

    const/16 v0, 0xa

    if-eq p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final E(Lkotlinx/serialization/descriptors/SerialDescriptor;I)S
    .registers 3

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb8/n;->r()S

    move-result p0

    return p0
.end method

.method public F()La8/a;
    .registers 1

    iget-object p0, p0, Lb8/n;->d:La8/a;

    return-object p0
.end method

.method public final G(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D
    .registers 3

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb8/n;->u()D

    move-result-wide p0

    return-wide p0
.end method

.method public H()B
    .registers 4

    iget-object v0, p0, Lb8/n;->f:Lb8/h;

    invoke-virtual {v0}, Lb8/h;->h()Ljava/lang/String;

    move-result-object v0

    :try_start_6
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return p0

    :catchall_b
    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Failed to parse \'byte\'"

    invoke-static {p0, v2, v0, v1}, Lb8/h;->d(Lb8/h;Ljava/lang/String;II)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public I(Lw7/a;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    const-string p2, "deserializer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lb8/n;->x(Lw7/a;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ly7/b;
    .registers 6

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb8/n;->d:La8/a;

    invoke-static {v0, p1}, Lp4/c;->e(La8/a;Lkotlinx/serialization/descriptors/SerialDescriptor;)Lb8/q;

    move-result-object v0

    iget-char v1, v0, Lb8/q;->c:C

    if-eqz v1, :cond_42

    iget-object v1, p0, Lb8/n;->f:Lb8/h;

    iget-byte v2, v0, Lb8/q;->a:B

    iget-byte v3, v1, Lb8/h;->b:B

    if-ne v3, v2, :cond_1b

    invoke-virtual {v1}, Lb8/h;->g()V

    goto :goto_42

    :cond_1b
    const-string p0, "Expected \'"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-char v0, v0, Lb8/q;->c:C

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, ", kind: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget p1, v1, Lb8/h;->c:I

    invoke-virtual {v1, p0, p1}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0

    :cond_42
    :goto_42
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5e

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5e

    iget-object p1, p0, Lb8/n;->e:Lb8/q;

    if-ne p1, v0, :cond_54

    goto :goto_68

    :cond_54
    new-instance p1, Lb8/n;

    iget-object v1, p0, Lb8/n;->d:La8/a;

    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    invoke-direct {p1, v1, v0, p0}, Lb8/n;-><init>(La8/a;Lb8/q;Lb8/h;)V

    goto :goto_67

    :cond_5e
    new-instance p1, Lb8/n;

    iget-object v1, p0, Lb8/n;->d:La8/a;

    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    invoke-direct {p1, v1, v0, p0}, Lb8/n;-><init>(La8/a;Lb8/q;Lb8/h;)V

    :goto_67
    move-object p0, p1

    :goto_68
    return-object p0
.end method

.method public b(Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .registers 4

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lb8/n;->e:Lb8/q;

    iget-char v0, p1, Lb8/q;->d:C

    if-eqz v0, :cond_34

    iget-object v0, p0, Lb8/n;->f:Lb8/h;

    iget-byte p1, p1, Lb8/q;->b:B

    iget-byte v1, v0, Lb8/h;->b:B

    if-ne v1, p1, :cond_17

    invoke-virtual {v0}, Lb8/h;->g()V

    goto :goto_34

    :cond_17
    const-string p1, "Expected \'"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lb8/n;->e:Lb8/q;

    iget-char p0, p0, Lb8/q;->d:C

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x27

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iget p1, v0, Lb8/h;->c:I

    invoke-virtual {v0, p0, p1}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0

    :cond_34
    :goto_34
    return-void
.end method

.method public c()Lc8/b;
    .registers 1

    iget-object p0, p0, Lb8/n;->a:Lc8/b;

    return-object p0
.end method

.method public d(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .registers 3

    const-string v0, "enumDescriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb8/n;->z()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lo4/b;->b(Lkotlinx/serialization/descriptors/SerialDescriptor;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deserializer"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3, p4}, Lb8/n;->I(Lw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J
    .registers 3

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb8/n;->m()J

    move-result-wide p0

    return-wide p0
.end method

.method public g()Lkotlinx/serialization/json/JsonElement;
    .registers 3

    new-instance v0, Lb8/g;

    iget-object v1, p0, Lb8/n;->d:La8/a;

    iget-object v1, v1, La8/a;->a:Lb8/c;

    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    invoke-direct {v0, v1, p0}, Lb8/g;-><init>(Lb8/c;Lb8/h;)V

    invoke-virtual {v0}, Lb8/g;->a()Lkotlinx/serialization/json/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public h()I
    .registers 4

    iget-object v0, p0, Lb8/n;->f:Lb8/h;

    invoke-virtual {v0}, Lb8/h;->h()Ljava/lang/String;

    move-result-object v0

    :try_start_6
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return p0

    :catchall_b
    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Failed to parse \'int\'"

    invoke-static {p0, v2, v0, v1}, Lb8/h;->d(Lb8/h;Ljava/lang/String;II)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public final i(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I
    .registers 3

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb8/n;->h()I

    move-result p0

    return p0
.end method

.method public j()Ljava/lang/Void;
    .registers 4

    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    iget-byte v0, p0, Lb8/h;->b:B

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_d

    invoke-virtual {p0}, Lb8/h;->g()V

    return-object v1

    :cond_d
    iget v0, p0, Lb8/h;->c:I

    const-string v2, "Expected \'null\' literal"

    invoke-virtual {p0, v2, v0}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v1
.end method

.method public synthetic k(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lw7/a<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deserializer"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lb8/n;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public l(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .registers 2

    const-string p0, "descriptor"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0
.end method

.method public m()J
    .registers 4

    iget-object v0, p0, Lb8/n;->f:Lb8/h;

    invoke-virtual {v0}, Lb8/h;->h()Ljava/lang/String;

    move-result-object v0

    :try_start_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return-wide v0

    :catchall_b
    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Failed to parse \'long\'"

    invoke-static {p0, v2, v0, v1}, Lb8/h;->d(Lb8/h;Ljava/lang/String;II)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public final n(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;
    .registers 3

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb8/n;->z()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public synthetic o(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/descriptors/SerialDescriptor;",
            "I",
            "Lw7/a<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "deserializer"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lb8/n;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public p(Lkotlinx/serialization/descriptors/SerialDescriptor;)I
    .registers 16

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb8/n;->f:Lb8/h;

    iget-byte v1, v0, Lb8/h;->b:B

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v1, v2, :cond_25

    iget v7, p0, Lb8/n;->b:I

    if-eq v7, v4, :cond_16

    move v7, v5

    goto :goto_17

    :cond_16
    move v7, v3

    :goto_17
    iget v8, v0, Lb8/h;->a:I

    if-eqz v7, :cond_1f

    invoke-virtual {v0}, Lb8/h;->g()V

    goto :goto_25

    :cond_1f
    const-string p0, "Unexpected leading comma"

    invoke-virtual {v0, p0, v8}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v6

    :cond_25
    :goto_25
    iget-object v0, p0, Lb8/n;->e:Lb8/q;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v7, "Unexpected trailing comma"

    if-eq v0, v5, :cond_1b4

    const/4 v8, 0x5

    const/4 v9, 0x2

    if-eq v0, v9, :cond_169

    const/4 v10, 0x3

    if-eq v0, v10, :cond_15b

    if-ne v1, v2, :cond_47

    iget-object v0, p0, Lb8/n;->f:Lb8/h;

    invoke-virtual {v0}, Lb8/h;->f()Z

    move-result v0

    if-eqz v0, :cond_41

    goto :goto_47

    :cond_41
    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    invoke-static {p0, v7, v3, v9}, Lb8/h;->d(Lb8/h;Ljava/lang/String;II)Ljava/lang/Void;

    throw v6

    :cond_47
    :goto_47
    iget-object v0, p0, Lb8/n;->f:Lb8/h;

    invoke-virtual {v0}, Lb8/h;->f()Z

    move-result v0

    if-eqz v0, :cond_1dc

    iget v0, p0, Lb8/n;->b:I

    add-int/2addr v0, v5

    iput v0, p0, Lb8/n;->b:I

    invoke-virtual {p0}, Lb8/n;->z()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb8/n;->f:Lb8/h;

    iget-byte v10, v1, Lb8/h;->b:B

    if-ne v10, v8, :cond_153

    invoke-virtual {v1}, Lb8/h;->g()V

    invoke-interface {p1, v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b(Ljava/lang/String;)I

    move-result v1

    const/4 v8, -0x3

    if-eq v1, v8, :cond_b3

    iget-object v10, p0, Lb8/n;->c:Lb8/c;

    iget-boolean v10, v10, Lb8/c;->g:Z

    if-eqz v10, :cond_b0

    invoke-interface {p1, v1}, Lkotlinx/serialization/descriptors/SerialDescriptor;->e(I)Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v10

    iget-object v11, p0, Lb8/n;->f:Lb8/h;

    iget-byte v11, v11, Lb8/h;->b:B

    const/16 v12, 0xa

    if-ne v11, v12, :cond_81

    invoke-interface {v10}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Z

    move-result v11

    if-nez v11, :cond_81

    goto :goto_a9

    :cond_81
    invoke-interface {v10}, Lkotlinx/serialization/descriptors/SerialDescriptor;->f()Lx7/i;

    move-result-object v11

    sget-object v12, Lx7/i$b;->a:Lx7/i$b;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_ab

    iget-object v11, p0, Lb8/n;->f:Lb8/h;

    iget-object v12, p0, Lb8/n;->c:Lb8/c;

    iget-boolean v12, v12, Lb8/c;->c:Z

    iget-byte v13, v11, Lb8/h;->b:B

    if-eq v13, v5, :cond_9d

    if-eqz v12, :cond_9b

    if-eqz v13, :cond_9d

    :cond_9b
    move-object v11, v6

    goto :goto_a1

    :cond_9d
    invoke-virtual {v11, v3}, Lb8/h;->i(Z)Ljava/lang/String;

    move-result-object v11

    :goto_a1
    if-eqz v11, :cond_ab

    invoke-interface {v10, v11}, Lkotlinx/serialization/descriptors/SerialDescriptor;->b(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v8, :cond_ab

    :goto_a9
    move v8, v5

    goto :goto_ac

    :cond_ab
    move v8, v3

    :goto_ac
    if-eqz v8, :cond_b0

    move v1, v3

    goto :goto_b4

    :cond_b0
    move v3, v1

    goto/16 :goto_1e8

    :cond_b3
    move v1, v5

    :goto_b4
    if-eqz v1, :cond_cb

    iget-object v1, p0, Lb8/n;->c:Lb8/c;

    iget-boolean v1, v1, Lb8/c;->b:Z

    if-eqz v1, :cond_bd

    goto :goto_cb

    :cond_bd
    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    const-string p1, "Encountered an unknown key \'"

    const-string v1, "\'.\nUse \'ignoreUnknownKeys = true\' in \'Json {}\' builder to ignore unknown keys."

    invoke-static {p1, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3, v9}, Lb8/h;->d(Lb8/h;Ljava/lang/String;II)Ljava/lang/Void;

    throw v6

    :cond_cb
    :goto_cb
    iget-object v0, p0, Lb8/n;->f:Lb8/h;

    iget-byte v1, v0, Lb8/h;->b:B

    const/16 v8, 0x8

    const/4 v10, 0x6

    if-eq v1, v10, :cond_da

    if-eq v1, v8, :cond_da

    invoke-virtual {v0}, Lb8/h;->g()V

    goto :goto_136

    :cond_da
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_df
    iget-byte v1, v0, Lb8/h;->b:B

    packed-switch v1, :pswitch_data_1ea

    goto :goto_12c

    :pswitch_e5  #0x9
    invoke-static {v11}, Li4/v;->O(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    if-ne v1, v8, :cond_fa

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_12c

    :cond_fa
    iget p0, v0, Lb8/h;->a:I

    iget-object p1, v0, Lb8/h;->g:Ljava/lang/String;

    const-string v0, "found ] instead of }"

    invoke-static {p0, v0, p1}, Lm4/d;->e(ILjava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0

    :pswitch_105  #0x7
    invoke-static {v11}, Li4/v;->O(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    if-ne v1, v10, :cond_11a

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v4

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_12c

    :cond_11a
    iget p0, v0, Lb8/h;->a:I

    iget-object p1, v0, Lb8/h;->g:Ljava/lang/String;

    const-string v0, "found } instead of ]"

    invoke-static {p0, v0, p1}, Lm4/d;->e(ILjava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0

    :pswitch_125  #0x6, 0x8
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_12c
    invoke-virtual {v0}, Lb8/h;->g()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v5

    if-nez v1, :cond_df

    :goto_136
    iget-object v0, p0, Lb8/n;->f:Lb8/h;

    iget-byte v1, v0, Lb8/h;->b:B

    if-ne v1, v2, :cond_150

    invoke-virtual {v0}, Lb8/h;->g()V

    iget-object v0, p0, Lb8/n;->f:Lb8/h;

    invoke-virtual {v0}, Lb8/h;->f()Z

    move-result v1

    iget-object v8, p0, Lb8/n;->f:Lb8/h;

    iget v8, v8, Lb8/h;->a:I

    if-eqz v1, :cond_14c

    goto :goto_150

    :cond_14c
    invoke-virtual {v0, v7, v8}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v6

    :cond_150
    :goto_150
    const/4 v8, 0x5

    goto/16 :goto_47

    :cond_153
    iget p0, v1, Lb8/h;->c:I

    const-string p1, "Expected \':\'"

    invoke-virtual {v1, p1, p0}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v6

    :cond_15b
    iget p1, p0, Lb8/n;->b:I

    add-int/2addr p1, v5

    iput p1, p0, Lb8/n;->b:I

    if-eqz p1, :cond_1e8

    if-eq p1, v5, :cond_166

    goto/16 :goto_1dc

    :cond_166
    move v3, v5

    goto/16 :goto_1e8

    :cond_169
    if-eq v1, v2, :cond_180

    iget p1, p0, Lb8/n;->b:I

    rem-int/2addr p1, v9

    if-ne p1, v5, :cond_180

    iget-object p1, p0, Lb8/n;->f:Lb8/h;

    const/4 v0, 0x7

    iget-byte v8, p1, Lb8/h;->b:B

    if-ne v8, v0, :cond_178

    goto :goto_180

    :cond_178
    iget p0, p1, Lb8/h;->c:I

    const-string v0, "Expected end of the object or comma"

    invoke-virtual {p1, v0, p0}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v6

    :cond_180
    :goto_180
    iget p1, p0, Lb8/n;->b:I

    rem-int/2addr p1, v9

    if-nez p1, :cond_198

    iget-object p1, p0, Lb8/n;->f:Lb8/h;

    iget-byte v0, p1, Lb8/h;->b:B

    const/4 v8, 0x5

    if-ne v0, v8, :cond_190

    invoke-virtual {p1}, Lb8/h;->g()V

    goto :goto_198

    :cond_190
    iget p0, p1, Lb8/h;->c:I

    const-string v0, "Expected \':\' after the key"

    invoke-virtual {p1, v0, p0}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v6

    :cond_198
    :goto_198
    iget-object p1, p0, Lb8/n;->f:Lb8/h;

    invoke-virtual {p1}, Lb8/h;->f()Z

    move-result p1

    if-nez p1, :cond_1ae

    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    if-eq v1, v2, :cond_1a5

    move v3, v5

    :cond_1a5
    iget p1, p0, Lb8/h;->a:I

    if-eqz v3, :cond_1aa

    goto :goto_1dc

    :cond_1aa
    invoke-virtual {p0, v7, p1}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v6

    :cond_1ae
    iget p1, p0, Lb8/n;->b:I

    add-int/2addr p1, v5

    iput p1, p0, Lb8/n;->b:I

    goto :goto_1e7

    :cond_1b4
    if-eq v1, v2, :cond_1cb

    iget p1, p0, Lb8/n;->b:I

    if-eq p1, v4, :cond_1cb

    iget-object p1, p0, Lb8/n;->f:Lb8/h;

    const/16 v0, 0x9

    iget-byte v8, p1, Lb8/h;->b:B

    if-ne v8, v0, :cond_1c3

    goto :goto_1cb

    :cond_1c3
    iget p0, p1, Lb8/h;->c:I

    const-string v0, "Expected end of the array or comma"

    invoke-virtual {p1, v0, p0}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v6

    :cond_1cb
    :goto_1cb
    iget-object p1, p0, Lb8/n;->f:Lb8/h;

    invoke-virtual {p1}, Lb8/h;->f()Z

    move-result p1

    if-nez p1, :cond_1e2

    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    if-eq v1, v2, :cond_1d8

    move v3, v5

    :cond_1d8
    iget p1, p0, Lb8/h;->a:I

    if-eqz v3, :cond_1de

    :cond_1dc
    :goto_1dc
    move v3, v4

    goto :goto_1e8

    :cond_1de
    invoke-virtual {p0, v7, p1}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v6

    :cond_1e2
    iget p1, p0, Lb8/n;->b:I

    add-int/2addr p1, v5

    iput p1, p0, Lb8/n;->b:I

    :goto_1e7
    move v3, p1

    :cond_1e8
    :goto_1e8
    return v3

    nop

    :pswitch_data_1ea
    .packed-switch 0x6
        :pswitch_125  #00000006
        :pswitch_105  #00000007
        :pswitch_125  #00000008
        :pswitch_e5  #00000009
    .end packed-switch
.end method

.method public q()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public r()S
    .registers 4

    iget-object v0, p0, Lb8/n;->f:Lb8/h;

    invoke-virtual {v0}, Lb8/h;->h()Ljava/lang/String;

    move-result-object v0

    :try_start_6
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return p0

    :catchall_b
    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Failed to parse \'short\'"

    invoke-static {p0, v2, v0, v1}, Lb8/h;->d(Lb8/h;Ljava/lang/String;II)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public s()F
    .registers 5

    iget-object v0, p0, Lb8/n;->f:Lb8/h;

    invoke-virtual {v0}, Lb8/h;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_8
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_2f

    iget-object v3, p0, Lb8/n;->d:La8/a;

    iget-object v3, v3, La8/a;->a:Lb8/c;

    iget-boolean v3, v3, Lb8/c;->j:Z

    if-nez v3, :cond_2e

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v3

    if-nez v3, :cond_21

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_21

    const/4 v2, 0x1

    :cond_21
    if-eqz v2, :cond_24

    goto :goto_2e

    :cond_24
    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {p0, v0}, Lm4/d;->j(Lb8/h;Ljava/lang/Number;)Ljava/lang/Void;

    throw v1

    :cond_2e
    :goto_2e
    return v0

    :catchall_2f
    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    const/4 v0, 0x2

    const-string v3, "Failed to parse \'float\'"

    invoke-static {p0, v3, v2, v0}, Lb8/h;->d(Lb8/h;Ljava/lang/String;II)Ljava/lang/Void;

    throw v1
.end method

.method public final t(Lkotlinx/serialization/descriptors/SerialDescriptor;I)F
    .registers 3

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lb8/n;->s()F

    move-result p0

    return p0
.end method

.method public u()D
    .registers 6

    iget-object v0, p0, Lb8/n;->f:Lb8/h;

    invoke-virtual {v0}, Lb8/h;->h()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_8
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_2f

    iget-object v0, p0, Lb8/n;->d:La8/a;

    iget-object v0, v0, La8/a;->a:Lb8/c;

    iget-boolean v0, v0, Lb8/c;->j:Z

    if-nez v0, :cond_2e

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v2, 0x1

    :cond_21
    if-eqz v2, :cond_24

    goto :goto_2e

    :cond_24
    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p0, v0}, Lm4/d;->j(Lb8/h;Ljava/lang/Number;)Ljava/lang/Void;

    throw v1

    :cond_2e
    :goto_2e
    return-wide v3

    :catchall_2f
    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    const/4 v0, 0x2

    const-string v3, "Failed to parse \'double\'"

    invoke-static {p0, v3, v2, v0}, Lb8/h;->d(Lb8/h;Ljava/lang/String;II)Ljava/lang/Void;

    throw v1
.end method

.method public v()Z
    .registers 3

    iget-object v0, p0, Lb8/n;->c:Lb8/c;

    iget-boolean v0, v0, Lb8/c;->c:Z

    if-eqz v0, :cond_11

    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    invoke-virtual {p0}, Lb8/h;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb8/p;->b(Ljava/lang/String;)Z

    move-result p0

    goto :goto_20

    :cond_11
    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    iget-byte v0, p0, Lb8/h;->b:B

    if-nez v0, :cond_21

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lb8/h;->i(Z)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb8/p;->b(Ljava/lang/String;)Z

    move-result p0

    :goto_20
    return p0

    :cond_21
    iget v0, p0, Lb8/h;->c:I

    const-string v1, "Expected start of the unquoted boolean literal.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    invoke-virtual {p0, v1, v0}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method

.method public w()C
    .registers 4

    iget-object v0, p0, Lb8/n;->f:Lb8/h;

    invoke-virtual {v0}, Lb8/h;->h()Ljava/lang/String;

    move-result-object v0

    :try_start_6
    invoke-static {v0}, Lk7/t;->a0(Ljava/lang/CharSequence;)C

    move-result p0
    :try_end_a
    .catchall {:try_start_6 .. :try_end_a} :catchall_b

    return p0

    :catchall_b
    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "Failed to parse \'char\'"

    invoke-static {p0, v2, v0, v1}, Lb8/h;->d(Lb8/h;Ljava/lang/String;II)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
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

.method public final y(Lkotlinx/serialization/descriptors/SerialDescriptor;ILw7/a;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    const-string p2, "descriptor"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "deserializer"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lw7/a;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object p2

    invoke-interface {p2}, Lkotlinx/serialization/descriptors/SerialDescriptor;->a()Z

    move-result p2

    if-nez p2, :cond_27

    iget-object p2, p0, Lb8/n;->f:Lb8/h;

    iget-byte p2, p2, Lb8/h;->b:B

    const/16 p4, 0xa

    if-eq p2, p4, :cond_1e

    const/4 p2, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p2, 0x0

    :goto_1f
    if-eqz p2, :cond_22

    goto :goto_27

    :cond_22
    invoke-virtual {p0}, Lb8/n;->j()Ljava/lang/Void;

    const/4 p0, 0x0

    goto :goto_2e

    :cond_27
    :goto_27
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lb8/n;->x(Lw7/a;)Ljava/lang/Object;

    move-result-object p0

    :goto_2e
    return-object p0
.end method

.method public z()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb8/n;->c:Lb8/c;

    iget-boolean v0, v0, Lb8/c;->c:Z

    if-eqz v0, :cond_d

    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    invoke-virtual {p0}, Lb8/h;->h()Ljava/lang/String;

    move-result-object p0

    goto :goto_13

    :cond_d
    iget-object p0, p0, Lb8/n;->f:Lb8/h;

    invoke-virtual {p0}, Lb8/h;->j()Ljava/lang/String;

    move-result-object p0

    :goto_13
    return-object p0
.end method
