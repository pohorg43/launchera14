.class public final Le8/r;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le8/r$a;
    }
.end annotation


# static fields
.field public static final j:[C


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final h:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public final i:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Le8/r;->j:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Le8/r$a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Le8/r$a;->a:Ljava/lang/String;

    iput-object v0, p0, Le8/r;->a:Ljava/lang/String;

    iget-object v0, p1, Le8/r$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Le8/r;->l(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le8/r;->b:Ljava/lang/String;

    iget-object v0, p1, Le8/r$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Le8/r;->l(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le8/r;->c:Ljava/lang/String;

    iget-object v0, p1, Le8/r$a;->d:Ljava/lang/String;

    iput-object v0, p0, Le8/r;->d:Ljava/lang/String;

    iget v0, p1, Le8/r$a;->e:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_22

    goto :goto_28

    :cond_22
    iget-object v0, p1, Le8/r$a;->a:Ljava/lang/String;

    invoke-static {v0}, Le8/r;->c(Ljava/lang/String;)I

    move-result v0

    :goto_28
    iput v0, p0, Le8/r;->e:I

    iget-object v0, p1, Le8/r$a;->f:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Le8/r;->m(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Le8/r;->f:Ljava/util/List;

    iget-object v0, p1, Le8/r$a;->g:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Le8/r;->m(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_3e

    :cond_3d
    move-object v0, v2

    :goto_3e
    iput-object v0, p0, Le8/r;->g:Ljava/util/List;

    iget-object v0, p1, Le8/r$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v1, v2, v1}, Le8/r;->k(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    :cond_4c
    iput-object v2, p0, Le8/r;->h:Ljava/lang/String;

    invoke-virtual {p1}, Le8/r$a;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le8/r;->i:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;
    .registers 25

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p1

    :goto_8
    if-ge v3, v1, :cond_c7

    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    const/16 v5, 0x80

    const/16 v6, 0x7f

    const/16 v7, 0x25

    const/16 v8, 0x2b

    const/16 v9, 0x20

    const/4 v10, -0x1

    if-lt v4, v9, :cond_3e

    if-eq v4, v6, :cond_3e

    if-lt v4, v5, :cond_21

    if-nez p7, :cond_3e

    :cond_21
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ne v11, v10, :cond_3e

    if-ne v4, v7, :cond_33

    if-eqz p4, :cond_3e

    if-eqz p5, :cond_33

    invoke-static {v0, v3, v1}, Le8/r;->n(Ljava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_3e

    :cond_33
    if-ne v4, v8, :cond_38

    if-eqz p6, :cond_38

    goto :goto_3e

    :cond_38
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_8

    :cond_3e
    :goto_3e
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    move/from16 v11, p1

    invoke-virtual {v4, v0, v11, v3}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    const/4 v11, 0x0

    :goto_49
    if-ge v3, v1, :cond_c2

    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v12

    if-eqz p4, :cond_62

    const/16 v13, 0x9

    if-eq v12, v13, :cond_bc

    const/16 v13, 0xa

    if-eq v12, v13, :cond_bc

    const/16 v13, 0xc

    if-eq v12, v13, :cond_bc

    const/16 v13, 0xd

    if-ne v12, v13, :cond_62

    goto :goto_bc

    :cond_62
    if-ne v12, v8, :cond_71

    if-eqz p6, :cond_71

    if-eqz p4, :cond_6b

    const-string v13, "+"

    goto :goto_6d

    :cond_6b
    const-string v13, "%2B"

    :goto_6d
    invoke-virtual {v4, v13}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;)Lokio/Buffer;

    goto :goto_bc

    :cond_71
    if-lt v12, v9, :cond_90

    if-eq v12, v6, :cond_90

    if-lt v12, v5, :cond_79

    if-nez p7, :cond_90

    :cond_79
    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    if-ne v13, v10, :cond_90

    if-ne v12, v7, :cond_8c

    if-eqz p4, :cond_90

    if-eqz p5, :cond_8c

    invoke-static {v0, v3, v1}, Le8/r;->n(Ljava/lang/String;II)Z

    move-result v13

    if-nez v13, :cond_8c

    goto :goto_90

    :cond_8c
    invoke-virtual {v4, v12}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    goto :goto_bc

    :cond_90
    :goto_90
    if-nez v11, :cond_97

    new-instance v11, Lokio/Buffer;

    invoke-direct {v11}, Lokio/Buffer;-><init>()V

    :cond_97
    invoke-virtual {v11, v12}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    :goto_9a
    invoke-virtual {v11}, Lokio/Buffer;->exhausted()Z

    move-result v13

    if-nez v13, :cond_bc

    invoke-virtual {v11}, Lokio/Buffer;->readByte()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    invoke-virtual {v4, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    sget-object v14, Le8/r;->j:[C

    shr-int/lit8 v15, v13, 0x4

    and-int/lit8 v15, v15, 0xf

    aget-char v15, v14, v15

    invoke-virtual {v4, v15}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    and-int/lit8 v13, v13, 0xf

    aget-char v13, v14, v13

    invoke-virtual {v4, v13}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_9a

    :cond_bc
    :goto_bc
    invoke-static {v12}, Ljava/lang/Character;->charCount(I)I

    move-result v12

    add-int/2addr v3, v12

    goto :goto_49

    :cond_c2
    invoke-virtual {v4}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c7
    move/from16 v11, p1

    invoke-virtual/range {p0 .. p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .registers 15

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v8}, Le8/r;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)I
    .registers 2

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x50

    return p0

    :cond_b
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/16 p0, 0x1bb

    return p0

    :cond_16
    const/4 p0, -0x1

    return p0
.end method

.method public static i(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lez v1, :cond_1c

    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1c
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_29

    const/16 v2, 0x3d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_2c
    return-void
.end method

.method public static k(Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 12

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_60

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    const/16 v3, 0x25

    if-eq v1, v3, :cond_15

    if-ne v1, v2, :cond_12

    if-eqz p3, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    :goto_15
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    invoke-virtual {v1, p0, p1, v0}, Lokio/Buffer;->writeUtf8(Ljava/lang/String;II)Lokio/Buffer;

    :goto_1d
    if-ge v0, p2, :cond_5b

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    if-ne p1, v3, :cond_48

    add-int/lit8 v4, v0, 0x2

    if-ge v4, p2, :cond_48

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lf8/c;->g(C)I

    move-result v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lf8/c;->g(C)I

    move-result v6

    const/4 v7, -0x1

    if-eq v5, v7, :cond_52

    if-eq v6, v7, :cond_52

    shl-int/lit8 v0, v5, 0x4

    add-int/2addr v0, v6

    invoke-virtual {v1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    move v0, v4

    goto :goto_55

    :cond_48
    if-ne p1, v2, :cond_52

    if-eqz p3, :cond_52

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_55

    :cond_52
    invoke-virtual {v1, p1}, Lokio/Buffer;->writeUtf8CodePoint(I)Lokio/Buffer;

    :goto_55
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_1d

    :cond_5b
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_60
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static l(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Le8/r;->k(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static n(Ljava/lang/String;II)Z
    .registers 6

    add-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ge v0, p2, :cond_24

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v2, 0x25

    if-ne p2, v2, :cond_24

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lf8/c;->g(C)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_24

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lf8/c;->g(C)I

    move-result p0

    if-eq p0, p2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v1, 0x0

    :goto_25
    return v1
.end method

.method public static o(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_43

    const/16 v2, 0x26

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_19
    const/16 v4, 0x3d

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v3, :cond_35

    if-le v4, v2, :cond_24

    goto :goto_35

    :cond_24
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_40

    :cond_35
    :goto_35
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_40
    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    :cond_43
    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Le8/r;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    iget-object v0, p0, Le8/r;->i:Ljava/lang/String;

    const/16 v1, 0x3a

    iget-object v2, p0, Le8/r;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Le8/r;->i:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    iget-object p0, p0, Le8/r;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public e()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Le8/r;->i:Ljava/lang/String;

    iget-object v1, p0, Le8/r;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iget-object v1, p0, Le8/r;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lf8/c;->j(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    iget-object p0, p0, Le8/r;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1  # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Le8/r;

    if-eqz v0, :cond_12

    check-cast p1, Le8/r;

    iget-object p1, p1, Le8/r;->i:Ljava/lang/String;

    iget-object p0, p0, Le8/r;->i:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public f()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le8/r;->i:Ljava/lang/String;

    iget-object v1, p0, Le8/r;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iget-object v1, p0, Le8/r;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "?#"

    invoke-static {v1, v0, v3, v4}, Lf8/c;->j(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_21
    if-ge v0, v1, :cond_36

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Le8/r;->i:Ljava/lang/String;

    invoke-static {v4, v0, v1, v2}, Lf8/c;->i(Ljava/lang/String;IIC)I

    move-result v4

    iget-object v5, p0, Le8/r;->i:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_21

    :cond_36
    return-object v3
.end method

.method public g()Ljava/lang/String;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Le8/r;->g:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget-object v0, p0, Le8/r;->i:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Le8/r;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x23

    invoke-static {v1, v0, v2, v3}, Lf8/c;->i(Ljava/lang/String;IIC)I

    move-result v1

    iget-object p0, p0, Le8/r;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public h()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Le8/r;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, ""

    return-object p0

    :cond_b
    iget-object v0, p0, Le8/r;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Le8/r;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lf8/c;->j(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    iget-object p0, p0, Le8/r;->i:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Le8/r;->i:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public j()Le8/r$a;
    .registers 4

    new-instance v0, Le8/r$a;

    invoke-direct {v0}, Le8/r$a;-><init>()V

    iget-object v1, p0, Le8/r;->a:Ljava/lang/String;

    iput-object v1, v0, Le8/r$a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Le8/r;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le8/r$a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Le8/r;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le8/r$a;->c:Ljava/lang/String;

    iget-object v1, p0, Le8/r;->d:Ljava/lang/String;

    iput-object v1, v0, Le8/r$a;->d:Ljava/lang/String;

    iget v1, p0, Le8/r;->e:I

    iget-object v2, p0, Le8/r;->a:Ljava/lang/String;

    invoke-static {v2}, Le8/r;->c(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_26

    iget v1, p0, Le8/r;->e:I

    goto :goto_27

    :cond_26
    const/4 v1, -0x1

    :goto_27
    iput v1, v0, Le8/r$a;->e:I

    iget-object v1, v0, Le8/r$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Le8/r$a;->f:Ljava/util/List;

    invoke-virtual {p0}, Le8/r;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Le8/r;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le8/r$a;->b(Ljava/lang/String;)Le8/r$a;

    iget-object v1, p0, Le8/r;->h:Ljava/lang/String;

    if-nez v1, :cond_44

    const/4 p0, 0x0

    goto :goto_54

    :cond_44
    iget-object v1, p0, Le8/r;->i:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object p0, p0, Le8/r;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_54
    iput-object p0, v0, Le8/r$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final m(Ljava/util/List;Z)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, p0, :cond_25

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v3, v1, v4, p2}, Le8/r;->k(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_25
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public p()Ljava/net/URI;
    .registers 11

    invoke-virtual {p0}, Le8/r;->j()Le8/r$a;

    move-result-object p0

    iget-object v0, p0, Le8/r$a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_c
    if-ge v2, v0, :cond_29

    iget-object v3, p0, Le8/r$a;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    iget-object v3, p0, Le8/r$a;->f:Ljava/util/List;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v5, "[]"

    invoke-static/range {v4 .. v9}, Le8/r;->b(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_29
    iget-object v0, p0, Le8/r$a;->g:Ljava/util/List;

    if-eqz v0, :cond_50

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_31
    if-ge v1, v0, :cond_50

    iget-object v2, p0, Le8/r$a;->g:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_4d

    iget-object v2, p0, Le8/r$a;->g:Ljava/util/List;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const-string v4, "\\^`{|}"

    invoke-static/range {v3 .. v8}, Le8/r;->b(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_50
    iget-object v2, p0, Le8/r$a;->h:Ljava/lang/String;

    if-eqz v2, :cond_60

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v3, " \"#<>\\^`{|}"

    invoke-static/range {v2 .. v7}, Le8/r;->b(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le8/r$a;->h:Ljava/lang/String;

    :cond_60
    invoke-virtual {p0}, Le8/r$a;->toString()Ljava/lang/String;

    move-result-object p0

    :try_start_64
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/net/URISyntaxException; {:try_start_64 .. :try_end_69} :catch_6a

    return-object v0

    :catch_6a
    move-exception v0

    :try_start_6b
    const-string v1, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_77} :catch_78

    return-object p0

    :catch_78
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Le8/r;->i:Ljava/lang/String;

    return-object p0
.end method
