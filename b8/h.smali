.class public final Lb8/h;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public b:B
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I

.field public f:[C

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb8/h;->g:Ljava/lang/String;

    const/16 p1, 0xc

    iput-byte p1, p0, Lb8/h;->b:B

    const/4 p1, -0x1

    iput p1, p0, Lb8/h;->d:I

    const/16 p1, 0x10

    new-array p1, p1, [C

    iput-object p1, p0, Lb8/h;->f:[C

    invoke-virtual {p0}, Lb8/h;->g()V

    return-void
.end method

.method public static synthetic d(Lb8/h;Ljava/lang/String;II)Ljava/lang/Void;
    .registers 4

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    iget p2, p0, Lb8/h;->a:I

    :cond_6
    invoke-virtual {p0, p1, p2}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final a(C)V
    .registers 5

    iget v0, p0, Lb8/h;->e:I

    iget-object v1, p0, Lb8/h;->f:[C

    array-length v2, v1

    if-lt v0, v2, :cond_15

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    const-string v1, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lb8/h;->f:[C

    :cond_15
    iget-object v0, p0, Lb8/h;->f:[C

    iget v1, p0, Lb8/h;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb8/h;->e:I

    aput-char p1, v0, v1

    return-void
.end method

.method public final b(Ljava/lang/String;II)V
    .registers 9

    sub-int/2addr p3, p2

    iget v0, p0, Lb8/h;->e:I

    add-int v1, v0, p3

    iget-object v2, p0, Lb8/h;->f:[C

    array-length v3, v2

    if-le v1, v3, :cond_1b

    array-length v3, v2

    mul-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_10

    move v1, v3

    :cond_10
    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v1

    const-string v2, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Lb8/h;->f:[C

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-ge v1, p3, :cond_2d

    iget-object v2, p0, Lb8/h;->f:[C

    add-int v3, v0, v1

    add-int v4, p2, v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_2d
    iget p1, p0, Lb8/h;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lb8/h;->e:I

    return-void
.end method

.method public final c(Ljava/lang/String;I)Ljava/lang/Void;
    .registers 4

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lb8/h;->g:Ljava/lang/String;

    invoke-static {p2, p1, p0}, Lm4/d;->e(ILjava/lang/String;Ljava/lang/String;)Lb8/d;

    move-result-object p0

    throw p0
.end method

.method public final e(Ljava/lang/String;I)I
    .registers 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x39

    const/16 v0, 0x30

    if-le v0, p1, :cond_17

    goto :goto_1b

    :cond_17
    if-lt p2, p1, :cond_1b

    sub-int/2addr p1, v0

    goto :goto_30

    :cond_1b
    :goto_1b
    const/16 p2, 0x66

    const/16 v0, 0x61

    if-le v0, p1, :cond_22

    goto :goto_25

    :cond_22
    if-lt p2, p1, :cond_25

    goto :goto_2d

    :cond_25
    :goto_25
    const/16 p2, 0x46

    const/16 v0, 0x41

    if-gt v0, p1, :cond_31

    if-lt p2, p1, :cond_31

    :goto_2d
    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xa

    :goto_30
    return p1

    :cond_31
    const-string p2, "Invalid toHexChar char \'"

    const-string v0, "\' in unicode escape"

    invoke-static {p2, p1, v0}, La/a;->a(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget p2, p0, Lb8/h;->a:I

    invoke-virtual {p0, p1, p2}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v1

    :cond_3f
    const-string p1, "Unexpected EOF during unicode escape"

    invoke-virtual {p0, p1, p2}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v1
.end method

.method public final f()Z
    .registers 3

    iget-byte p0, p0, Lb8/h;->b:B

    const/4 v0, 0x1

    if-eqz p0, :cond_13

    if-eq p0, v0, :cond_13

    const/4 v1, 0x6

    if-eq p0, v1, :cond_13

    const/16 v1, 0x8

    if-eq p0, v1, :cond_13

    const/16 v1, 0xa

    if-eq p0, v1, :cond_13

    const/4 v0, 0x0

    :cond_13
    return v0
.end method

.method public final g()V
    .registers 13

    iget-object v0, p0, Lb8/h;->g:Ljava/lang/String;

    iget v1, p0, Lb8/h;->a:I

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xc

    if-ge v1, v2, :cond_125

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lb8/i;->a(C)B

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-eqz v2, :cond_e5

    if-eq v2, v6, :cond_29

    const/4 v3, 0x3

    if-eq v2, v3, :cond_26

    iput v1, p0, Lb8/h;->c:I

    iput-byte v2, p0, Lb8/h;->b:B

    add-int/2addr v1, v6

    iput v1, p0, Lb8/h;->a:I

    return-void

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_29
    iput v1, p0, Lb8/h;->c:I

    iput v4, p0, Lb8/h;->e:I

    add-int/2addr v1, v6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v7, "EOF"

    const/4 v8, 0x0

    if-ge v1, v2, :cond_e1

    move v2, v1

    move v9, v2

    :goto_39
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x22

    if-eq v10, v11, :cond_cc

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_be

    invoke-virtual {p0, v0, v9, v2}, Lb8/h;->b(Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_56

    move v9, v6

    goto :goto_57

    :cond_56
    move v9, v4

    :goto_57
    if-eqz v9, :cond_b8

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v10, 0x75

    if-ne v2, v10, :cond_88

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {p0, v0, v9}, Lb8/h;->e(Ljava/lang/String;I)I

    move-result v9

    shl-int/2addr v9, v3

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0, v0, v2}, Lb8/h;->e(Ljava/lang/String;I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v9, v2

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {p0, v0, v10}, Lb8/h;->e(Ljava/lang/String;I)I

    move-result v10

    shl-int/2addr v10, v5

    add-int/2addr v9, v10

    add-int/lit8 v10, v2, 0x1

    invoke-virtual {p0, v0, v2}, Lb8/h;->e(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v9

    int-to-char v2, v2

    invoke-virtual {p0, v2}, Lb8/h;->a(C)V

    move v9, v10

    goto :goto_9c

    :cond_88
    sget-object v11, Lb8/i;->a:[B

    if-ge v2, v10, :cond_91

    sget-object v10, Lb8/b;->a:[C

    aget-char v10, v10, v2

    goto :goto_92

    :cond_91
    move v10, v4

    :goto_92
    if-eqz v10, :cond_96

    move v11, v6

    goto :goto_97

    :cond_96
    move v11, v4

    :goto_97
    if-eqz v11, :cond_9e

    invoke-virtual {p0, v10}, Lb8/h;->a(C)V

    :goto_9c
    move v2, v9

    goto :goto_39

    :cond_9e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid escaped char \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v8

    :cond_b8
    const-string v0, "Unexpected EOF after escape character"

    invoke-virtual {p0, v0, v2}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v8

    :cond_be
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_c8

    goto/16 :goto_39

    :cond_c8
    invoke-virtual {p0, v7, v2}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v8

    :cond_cc
    if-ne v9, v1, :cond_d5

    iput v9, p0, Lb8/h;->d:I

    sub-int v0, v2, v9

    iput v0, p0, Lb8/h;->e:I

    goto :goto_db

    :cond_d5
    invoke-virtual {p0, v0, v9, v2}, Lb8/h;->b(Ljava/lang/String;II)V

    const/4 v0, -0x1

    iput v0, p0, Lb8/h;->d:I

    :goto_db
    add-int/2addr v2, v6

    iput v2, p0, Lb8/h;->a:I

    iput-byte v6, p0, Lb8/h;->b:B

    return-void

    :cond_e1
    invoke-virtual {p0, v7, v1}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v8

    :cond_e5
    iput v1, p0, Lb8/h;->c:I

    iput v1, p0, Lb8/h;->d:I

    :goto_e9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_fc

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lb8/i;->a(C)B

    move-result v2

    if-nez v2, :cond_fc

    add-int/lit8 v1, v1, 0x1

    goto :goto_e9

    :cond_fc
    iput v1, p0, Lb8/h;->a:I

    iget v2, p0, Lb8/h;->d:I

    sub-int/2addr v1, v2

    iput v1, p0, Lb8/h;->e:I

    sget-object v3, Lb8/i;->a:[B

    if-eq v1, v5, :cond_108

    goto :goto_119

    :cond_108
    move v1, v4

    :goto_109
    if-ge v1, v5, :cond_11e

    add-int v3, v2, v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v7, "null"

    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v3, v7, :cond_11b

    :goto_119
    move v6, v4

    goto :goto_11e

    :cond_11b
    add-int/lit8 v1, v1, 0x1

    goto :goto_109

    :cond_11e
    :goto_11e
    if-eqz v6, :cond_122

    const/16 v4, 0xa

    :cond_122
    iput-byte v4, p0, Lb8/h;->b:B

    return-void

    :cond_125
    iput v1, p0, Lb8/h;->c:I

    iput-byte v3, p0, Lb8/h;->b:B

    return-void
.end method

.method public final h()Ljava/lang/String;
    .registers 3

    iget-byte v0, p0, Lb8/h;->b:B

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    if-ne v0, v1, :cond_8

    goto :goto_11

    :cond_8
    iget v0, p0, Lb8/h;->c:I

    const-string v1, "Expected string or non-null literal"

    invoke-virtual {p0, v1, v0}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    const/4 p0, 0x0

    throw p0

    :cond_11
    :goto_11
    invoke-virtual {p0, v1}, Lb8/h;->i(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i(Z)Ljava/lang/String;
    .registers 6

    iget v0, p0, Lb8/h;->d:I

    if-gez v0, :cond_f

    iget-object v0, p0, Lb8/h;->f:[C

    iget v1, p0, Lb8/h;->e:I

    const/4 v2, 0x0

    add-int/2addr v1, v2

    invoke-static {v0, v2, v1}, Lk7/m;->h([CII)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_f
    iget-object v1, p0, Lb8/h;->g:Ljava/lang/String;

    iget v2, p0, Lb8/h;->e:I

    add-int/2addr v2, v0

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.Strin…ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_22
    if-eqz p1, :cond_27

    invoke-virtual {p0}, Lb8/h;->g()V

    :cond_27
    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 4

    iget-byte v0, p0, Lb8/h;->b:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_12

    iget v0, p0, Lb8/h;->c:I

    const-string v1, "Expected string literal with quotes.\nUse \'isLenient = true\' in \'Json {}` builder to accept non-compliant JSON."

    invoke-virtual {p0, v1, v0}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v2

    :cond_12
    iget v0, p0, Lb8/h;->c:I

    const-string v1, "Expected string literal but \'null\' literal was found.\nUse \'coerceInputValues = true\' in \'Json {}` builder to coerce nulls to default values."

    invoke-virtual {p0, v1, v0}, Lb8/h;->c(Ljava/lang/String;I)Ljava/lang/Void;

    throw v2

    :cond_1a
    invoke-virtual {p0, v1}, Lb8/h;->i(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "JsonReader(source=\'"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lb8/h;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', currentPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb8/h;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tokenClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lb8/h;->b:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tokenPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb8/h;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lb8/h;->d:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/core/graphics/b;->a(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
