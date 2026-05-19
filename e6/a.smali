.class public abstract Le6/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBinaryVersion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BinaryVersion.kt\norg/jetbrains/kotlin/metadata/deserialization/BinaryVersion\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,101:1\n5306#2,7:102\n*S KotlinDebug\n*F\n+ 1 BinaryVersion.kt\norg/jetbrains/kotlin/metadata/deserialization/BinaryVersion\n*L\n73#1:102,7\n*E\n"
    }
.end annotation


# instance fields
.field public final a:[I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([I)V
    .registers 5

    const-string v0, "numbers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/a;->a:[I

    const/4 v0, 0x0

    invoke-static {p1, v0}, Li4/k;->B([II)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    iput v0, p0, Le6/a;->b:I

    const/4 v0, 0x1

    invoke-static {p1, v0}, Li4/k;->B([II)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_27

    :cond_26
    move v0, v1

    :goto_27
    iput v0, p0, Le6/a;->c:I

    const/4 v0, 0x2

    invoke-static {p1, v0}, Li4/k;->B([II)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_34
    iput v1, p0, Le6/a;->d:I

    array-length v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_60

    array-length v0, p1

    const/16 v2, 0x400

    if-gt v0, v2, :cond_4d

    invoke-static {p1}, Li4/j;->e([I)Ljava/util/List;

    move-result-object v0

    array-length p1, p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_62

    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "BinaryVersion with length more than 1024 are not supported. Provided length "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length p1, p1

    const/16 v1, 0x2e

    invoke-static {v0, p1, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_60
    sget-object p1, Li4/y;->a:Li4/y;

    :goto_62
    iput-object p1, p0, Le6/a;->e:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(III)Z
    .registers 7

    iget v0, p0, Le6/a;->b:I

    const/4 v1, 0x1

    if-le v0, p1, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-ge v0, p1, :cond_a

    return v2

    :cond_a
    iget p1, p0, Le6/a;->c:I

    if-le p1, p2, :cond_f

    return v1

    :cond_f
    if-ge p1, p2, :cond_12

    return v2

    :cond_12
    iget p0, p0, Le6/a;->d:I

    if-lt p0, p3, :cond_17

    goto :goto_18

    :cond_17
    move v1, v2

    :goto_18
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget v0, p0, Le6/a;->b:I

    check-cast p1, Le6/a;

    iget v1, p1, Le6/a;->b:I

    if-ne v0, v1, :cond_30

    iget v0, p0, Le6/a;->c:I

    iget v1, p1, Le6/a;->c:I

    if-ne v0, v1, :cond_30

    iget v0, p0, Le6/a;->d:I

    iget v1, p1, Le6/a;->d:I

    if-ne v0, v1, :cond_30

    iget-object p0, p0, Le6/a;->e:Ljava/util/List;

    iget-object p1, p1, Le6/a;->e:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    return p0
.end method

.method public hashCode()I
    .registers 4

    iget v0, p0, Le6/a;->b:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Le6/a;->c:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Le6/a;->d:I

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object p0, p0, Le6/a;->e:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    add-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    iget-object p0, p0, Le6/a;->a:[I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_21

    aget v4, p0, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_13

    const/4 v5, 0x1

    goto :goto_14

    :cond_13
    move v5, v2

    :goto_14
    if-nez v5, :cond_17

    goto :goto_21

    :cond_17
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_21
    :goto_21
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2a

    const-string p0, "unknown"

    goto :goto_37

    :cond_2a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const-string v1, "."

    invoke-static/range {v0 .. v7}, Li4/v;->M(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p0

    :goto_37
    return-object p0
.end method
