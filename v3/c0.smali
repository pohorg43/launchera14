.class public final Lv3/c0;
.super Ljava/util/AbstractMap;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lv3/c0$f;,
        Lv3/c0$c;,
        Lv3/c0$d;,
        Lv3/c0$b;,
        Lv3/c0$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation
.end field

.field public b:[Lv3/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/squareup/moshi/LinkedHashTreeMap$Node<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final c:Lv3/c0$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/c0$f<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public d:I

.field public e:I

.field public f:I

.field public g:Lv3/c0$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/c0<",
            "TK;TV;>.c;"
        }
    .end annotation
.end field

.field public h:Lv3/c0$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv3/c0<",
            "TK;TV;>.d;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-class v0, Lv3/c0;

    new-instance v0, Lv3/c0$a;

    invoke-direct {v0}, Lv3/c0$a;-><init>()V

    sput-object v0, Lv3/c0;->i:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lv3/c0;->d:I

    iput v0, p0, Lv3/c0;->e:I

    sget-object v0, Lv3/c0;->i:Ljava/util/Comparator;

    iput-object v0, p0, Lv3/c0;->a:Ljava/util/Comparator;

    new-instance v0, Lv3/c0$f;

    invoke-direct {v0}, Lv3/c0$f;-><init>()V

    iput-object v0, p0, Lv3/c0;->c:Lv3/c0$f;

    const/16 v0, 0x10

    new-array v0, v0, [Lv3/c0$f;

    iput-object v0, p0, Lv3/c0;->b:[Lv3/c0$f;

    const/16 v0, 0xc

    iput v0, p0, Lv3/c0;->f:I

    return-void
.end method

.method private writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)Lv3/c0$f;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lv3/c0$f<",
            "TK;TV;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v3, p1

    iget-object v1, v0, Lv3/c0;->a:Ljava/util/Comparator;

    iget-object v7, v0, Lv3/c0;->b:[Lv3/c0$f;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    ushr-int/lit8 v4, v2, 0x14

    ushr-int/lit8 v5, v2, 0xc

    xor-int/2addr v4, v5

    xor-int/2addr v2, v4

    ushr-int/lit8 v4, v2, 0x7

    xor-int/2addr v4, v2

    ushr-int/lit8 v2, v2, 0x4

    xor-int/2addr v4, v2

    array-length v2, v7

    const/4 v8, 0x1

    sub-int/2addr v2, v8

    and-int v9, v4, v2

    aget-object v2, v7, v9

    const/4 v11, 0x0

    if-eqz v2, :cond_4b

    sget-object v5, Lv3/c0;->i:Ljava/util/Comparator;

    if-ne v1, v5, :cond_2a

    move-object v5, v3

    check-cast v5, Ljava/lang/Comparable;

    goto :goto_2b

    :cond_2a
    move-object v5, v11

    :goto_2b
    if-eqz v5, :cond_34

    iget-object v6, v2, Lv3/c0$f;->f:Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    goto :goto_3a

    :cond_34
    iget-object v6, v2, Lv3/c0$f;->f:Ljava/lang/Object;

    invoke-interface {v1, v3, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    :goto_3a
    if-nez v6, :cond_3d

    return-object v2

    :cond_3d
    if-gez v6, :cond_42

    iget-object v12, v2, Lv3/c0$f;->b:Lv3/c0$f;

    goto :goto_44

    :cond_42
    iget-object v12, v2, Lv3/c0$f;->c:Lv3/c0$f;

    :goto_44
    if-nez v12, :cond_49

    move-object v12, v2

    move v13, v6

    goto :goto_4d

    :cond_49
    move-object v2, v12

    goto :goto_2b

    :cond_4b
    move-object v12, v2

    const/4 v13, 0x0

    :goto_4d
    if-nez p2, :cond_50

    return-object v11

    :cond_50
    iget-object v5, v0, Lv3/c0;->c:Lv3/c0$f;

    if-nez v12, :cond_8a

    sget-object v2, Lv3/c0;->i:Ljava/util/Comparator;

    if-ne v1, v2, :cond_7c

    instance-of v1, v3, Ljava/lang/Comparable;

    if-eqz v1, :cond_5d

    goto :goto_7c

    :cond_5d
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not Comparable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7c
    :goto_7c
    new-instance v13, Lv3/c0$f;

    iget-object v6, v5, Lv3/c0$f;->e:Lv3/c0$f;

    move-object v1, v13

    move-object v2, v12

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lv3/c0$f;-><init>(Lv3/c0$f;Ljava/lang/Object;ILv3/c0$f;Lv3/c0$f;)V

    aput-object v13, v7, v9

    goto :goto_a0

    :cond_8a
    new-instance v7, Lv3/c0$f;

    iget-object v6, v5, Lv3/c0$f;->e:Lv3/c0$f;

    move-object v1, v7

    move-object v2, v12

    move-object/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Lv3/c0$f;-><init>(Lv3/c0$f;Ljava/lang/Object;ILv3/c0$f;Lv3/c0$f;)V

    if-gez v13, :cond_9a

    iput-object v7, v12, Lv3/c0$f;->b:Lv3/c0$f;

    goto :goto_9c

    :cond_9a
    iput-object v7, v12, Lv3/c0$f;->c:Lv3/c0$f;

    :goto_9c
    invoke-virtual {v0, v12, v8}, Lv3/c0;->e(Lv3/c0$f;Z)V

    move-object v13, v7

    :goto_a0
    iget v1, v0, Lv3/c0;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lv3/c0;->d:I

    iget v2, v0, Lv3/c0;->f:I

    if-le v1, v2, :cond_168

    iget-object v1, v0, Lv3/c0;->b:[Lv3/c0$f;

    array-length v2, v1

    mul-int/lit8 v3, v2, 0x2

    new-array v4, v3, [Lv3/c0$f;

    new-instance v5, Lv3/c0$b;

    invoke-direct {v5}, Lv3/c0$b;-><init>()V

    new-instance v6, Lv3/c0$b;

    invoke-direct {v6}, Lv3/c0$b;-><init>()V

    const/4 v7, 0x0

    :goto_bc
    if-ge v7, v2, :cond_15f

    aget-object v9, v1, v7

    if-nez v9, :cond_c4

    goto/16 :goto_15a

    :cond_c4
    move-object v12, v9

    move-object v14, v11

    :goto_c6
    if-eqz v12, :cond_d2

    iput-object v14, v12, Lv3/c0$f;->a:Lv3/c0$f;

    iget-object v14, v12, Lv3/c0$f;->b:Lv3/c0$f;

    move-object/from16 v16, v14

    move-object v14, v12

    move-object/from16 v12, v16

    goto :goto_c6

    :cond_d2
    const/4 v12, 0x0

    const/4 v15, 0x0

    :goto_d4
    if-nez v14, :cond_d9

    move-object v10, v14

    move-object v14, v11

    goto :goto_eb

    :cond_d9
    iget-object v10, v14, Lv3/c0$f;->a:Lv3/c0$f;

    iput-object v11, v14, Lv3/c0$f;->a:Lv3/c0$f;

    iget-object v8, v14, Lv3/c0$f;->c:Lv3/c0$f;

    :goto_df
    if-eqz v8, :cond_eb

    iput-object v10, v8, Lv3/c0$f;->a:Lv3/c0$f;

    iget-object v10, v8, Lv3/c0$f;->b:Lv3/c0$f;

    move-object/from16 v16, v10

    move-object v10, v8

    move-object/from16 v8, v16

    goto :goto_df

    :cond_eb
    :goto_eb
    if-eqz v14, :cond_fa

    iget v8, v14, Lv3/c0$f;->g:I

    and-int/2addr v8, v2

    if-nez v8, :cond_f5

    add-int/lit8 v12, v12, 0x1

    goto :goto_f7

    :cond_f5
    add-int/lit8 v15, v15, 0x1

    :goto_f7
    move-object v14, v10

    const/4 v8, 0x1

    goto :goto_d4

    :cond_fa
    invoke-virtual {v5, v12}, Lv3/c0$b;->b(I)V

    invoke-virtual {v6, v15}, Lv3/c0$b;->b(I)V

    move-object v8, v11

    :goto_101
    if-eqz v9, :cond_10d

    iput-object v8, v9, Lv3/c0$f;->a:Lv3/c0$f;

    iget-object v8, v9, Lv3/c0$f;->b:Lv3/c0$f;

    move-object/from16 v16, v9

    move-object v9, v8

    move-object/from16 v8, v16

    goto :goto_101

    :cond_10d
    :goto_10d
    if-nez v8, :cond_112

    move-object v10, v8

    move-object v8, v11

    goto :goto_124

    :cond_112
    iget-object v9, v8, Lv3/c0$f;->a:Lv3/c0$f;

    iput-object v11, v8, Lv3/c0$f;->a:Lv3/c0$f;

    iget-object v10, v8, Lv3/c0$f;->c:Lv3/c0$f;

    :goto_118
    move-object/from16 v16, v10

    move-object v10, v9

    move-object/from16 v9, v16

    if-eqz v9, :cond_124

    iput-object v10, v9, Lv3/c0$f;->a:Lv3/c0$f;

    iget-object v10, v9, Lv3/c0$f;->b:Lv3/c0$f;

    goto :goto_118

    :cond_124
    :goto_124
    if-eqz v8, :cond_134

    iget v9, v8, Lv3/c0$f;->g:I

    and-int/2addr v9, v2

    if-nez v9, :cond_12f

    invoke-virtual {v5, v8}, Lv3/c0$b;->a(Lv3/c0$f;)V

    goto :goto_132

    :cond_12f
    invoke-virtual {v6, v8}, Lv3/c0$b;->a(Lv3/c0$f;)V

    :goto_132
    move-object v8, v10

    goto :goto_10d

    :cond_134
    if-lez v12, :cond_143

    iget-object v8, v5, Lv3/c0$b;->a:Lv3/c0$f;

    iget-object v9, v8, Lv3/c0$f;->a:Lv3/c0$f;

    if-nez v9, :cond_13d

    goto :goto_144

    :cond_13d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_143
    move-object v8, v11

    :goto_144
    aput-object v8, v4, v7

    add-int v8, v7, v2

    if-lez v15, :cond_157

    iget-object v9, v6, Lv3/c0$b;->a:Lv3/c0$f;

    iget-object v10, v9, Lv3/c0$f;->a:Lv3/c0$f;

    if-nez v10, :cond_151

    goto :goto_158

    :cond_151
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_157
    move-object v9, v11

    :goto_158
    aput-object v9, v4, v8

    :goto_15a
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    goto/16 :goto_bc

    :cond_15f
    iput-object v4, v0, Lv3/c0;->b:[Lv3/c0$f;

    div-int/lit8 v1, v3, 0x2

    div-int/lit8 v3, v3, 0x4

    add-int/2addr v3, v1

    iput v3, v0, Lv3/c0;->f:I

    :cond_168
    iget v1, v0, Lv3/c0;->e:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lv3/c0;->e:I

    return-object v13
.end method

.method public b(Ljava/util/Map$Entry;)Lv3/c0$f;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)",
            "Lv3/c0$f<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lv3/c0;->d(Ljava/lang/Object;)Lv3/c0$f;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_23

    iget-object v2, p0, Lv3/c0$f;->h:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eq v2, p1, :cond_1f

    if-eqz v2, :cond_1d

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_1f

    :cond_1d
    move p1, v1

    goto :goto_20

    :cond_1f
    :goto_1f
    move p1, v0

    :goto_20
    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    if-eqz v0, :cond_27

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    return-object p0
.end method

.method public clear()V
    .registers 4

    iget-object v0, p0, Lv3/c0;->b:[Lv3/c0$f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput v0, p0, Lv3/c0;->d:I

    iget v0, p0, Lv3/c0;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lv3/c0;->e:I

    iget-object p0, p0, Lv3/c0;->c:Lv3/c0$f;

    iget-object v0, p0, Lv3/c0$f;->d:Lv3/c0$f;

    :goto_13
    if-eq v0, p0, :cond_1d

    iget-object v2, v0, Lv3/c0$f;->d:Lv3/c0$f;

    iput-object v1, v0, Lv3/c0$f;->e:Lv3/c0$f;

    iput-object v1, v0, Lv3/c0$f;->d:Lv3/c0$f;

    move-object v0, v2

    goto :goto_13

    :cond_1d
    iput-object p0, p0, Lv3/c0$f;->e:Lv3/c0$f;

    iput-object p0, p0, Lv3/c0$f;->d:Lv3/c0$f;

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lv3/c0;->d(Ljava/lang/Object;)Lv3/c0$f;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public d(Ljava/lang/Object;)Lv3/c0$f;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lv3/c0$f<",
            "TK;TV;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, p1, v1}, Lv3/c0;->a(Ljava/lang/Object;Z)Lv3/c0$f;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_8} :catch_9

    nop

    :catch_9
    :cond_9
    return-object v0
.end method

.method public final e(Lv3/c0$f;Z)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/c0$f<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_6f

    iget-object v0, p1, Lv3/c0$f;->b:Lv3/c0$f;

    iget-object v1, p1, Lv3/c0$f;->c:Lv3/c0$f;

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget v3, v0, Lv3/c0$f;->i:I

    goto :goto_d

    :cond_c
    move v3, v2

    :goto_d
    if-eqz v1, :cond_12

    iget v4, v1, Lv3/c0$f;->i:I

    goto :goto_13

    :cond_12
    move v4, v2

    :goto_13
    sub-int v5, v3, v4

    const/4 v6, -0x2

    if-ne v5, v6, :cond_37

    iget-object v0, v1, Lv3/c0$f;->b:Lv3/c0$f;

    iget-object v3, v1, Lv3/c0$f;->c:Lv3/c0$f;

    if-eqz v3, :cond_21

    iget v3, v3, Lv3/c0$f;->i:I

    goto :goto_22

    :cond_21
    move v3, v2

    :goto_22
    if-eqz v0, :cond_26

    iget v2, v0, Lv3/c0$f;->i:I

    :cond_26
    sub-int/2addr v2, v3

    const/4 v0, -0x1

    if-eq v2, v0, :cond_31

    if-nez v2, :cond_2e

    if-eqz p2, :cond_31

    :cond_2e
    invoke-virtual {p0, v1}, Lv3/c0;->i(Lv3/c0$f;)V

    :cond_31
    invoke-virtual {p0, p1}, Lv3/c0;->h(Lv3/c0$f;)V

    if-eqz p2, :cond_6c

    goto :goto_6f

    :cond_37
    const/4 v1, 0x2

    const/4 v6, 0x1

    if-ne v5, v1, :cond_59

    iget-object v1, v0, Lv3/c0$f;->b:Lv3/c0$f;

    iget-object v3, v0, Lv3/c0$f;->c:Lv3/c0$f;

    if-eqz v3, :cond_44

    iget v3, v3, Lv3/c0$f;->i:I

    goto :goto_45

    :cond_44
    move v3, v2

    :goto_45
    if-eqz v1, :cond_49

    iget v2, v1, Lv3/c0$f;->i:I

    :cond_49
    sub-int/2addr v2, v3

    if-eq v2, v6, :cond_53

    if-nez v2, :cond_50

    if-eqz p2, :cond_53

    :cond_50
    invoke-virtual {p0, v0}, Lv3/c0;->h(Lv3/c0$f;)V

    :cond_53
    invoke-virtual {p0, p1}, Lv3/c0;->i(Lv3/c0$f;)V

    if-eqz p2, :cond_6c

    goto :goto_6f

    :cond_59
    if-nez v5, :cond_62

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lv3/c0$f;->i:I

    if-eqz p2, :cond_6c

    goto :goto_6f

    :cond_62
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v6

    iput v0, p1, Lv3/c0$f;->i:I

    if-nez p2, :cond_6c

    goto :goto_6f

    :cond_6c
    iget-object p1, p1, Lv3/c0$f;->a:Lv3/c0$f;

    goto :goto_0

    :cond_6f
    :goto_6f
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lv3/c0;->g:Lv3/c0$c;

    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    new-instance v0, Lv3/c0$c;

    invoke-direct {v0, p0}, Lv3/c0$c;-><init>(Lv3/c0;)V

    iput-object v0, p0, Lv3/c0;->g:Lv3/c0$c;

    :goto_c
    return-object v0
.end method

.method public f(Lv3/c0$f;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/c0$f<",
            "TK;TV;>;Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_11

    iget-object p2, p1, Lv3/c0$f;->e:Lv3/c0$f;

    iget-object v1, p1, Lv3/c0$f;->d:Lv3/c0$f;

    iput-object v1, p2, Lv3/c0$f;->d:Lv3/c0$f;

    iget-object v1, p1, Lv3/c0$f;->d:Lv3/c0$f;

    iput-object p2, v1, Lv3/c0$f;->e:Lv3/c0$f;

    iput-object v0, p1, Lv3/c0$f;->e:Lv3/c0$f;

    iput-object v0, p1, Lv3/c0$f;->d:Lv3/c0$f;

    :cond_11
    iget-object p2, p1, Lv3/c0$f;->b:Lv3/c0$f;

    iget-object v1, p1, Lv3/c0$f;->c:Lv3/c0$f;

    iget-object v2, p1, Lv3/c0$f;->a:Lv3/c0$f;

    const/4 v3, 0x0

    if-eqz p2, :cond_60

    if-eqz v1, :cond_60

    iget v2, p2, Lv3/c0$f;->i:I

    iget v4, v1, Lv3/c0$f;->i:I

    if-le v2, v4, :cond_2c

    iget-object v1, p2, Lv3/c0$f;->c:Lv3/c0$f;

    :goto_24
    move-object v5, v1

    move-object v1, p2

    move-object p2, v5

    if-eqz p2, :cond_37

    iget-object v1, p2, Lv3/c0$f;->c:Lv3/c0$f;

    goto :goto_24

    :cond_2c
    iget-object p2, v1, Lv3/c0$f;->b:Lv3/c0$f;

    :goto_2e
    move-object v5, v1

    move-object v1, p2

    move-object p2, v5

    if-eqz v1, :cond_36

    iget-object p2, v1, Lv3/c0$f;->b:Lv3/c0$f;

    goto :goto_2e

    :cond_36
    move-object v1, p2

    :cond_37
    invoke-virtual {p0, v1, v3}, Lv3/c0;->f(Lv3/c0$f;Z)V

    iget-object p2, p1, Lv3/c0$f;->b:Lv3/c0$f;

    if-eqz p2, :cond_47

    iget v2, p2, Lv3/c0$f;->i:I

    iput-object p2, v1, Lv3/c0$f;->b:Lv3/c0$f;

    iput-object v1, p2, Lv3/c0$f;->a:Lv3/c0$f;

    iput-object v0, p1, Lv3/c0$f;->b:Lv3/c0$f;

    goto :goto_48

    :cond_47
    move v2, v3

    :goto_48
    iget-object p2, p1, Lv3/c0$f;->c:Lv3/c0$f;

    if-eqz p2, :cond_54

    iget v3, p2, Lv3/c0$f;->i:I

    iput-object p2, v1, Lv3/c0$f;->c:Lv3/c0$f;

    iput-object v1, p2, Lv3/c0$f;->a:Lv3/c0$f;

    iput-object v0, p1, Lv3/c0$f;->c:Lv3/c0$f;

    :cond_54
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    iput p2, v1, Lv3/c0$f;->i:I

    invoke-virtual {p0, p1, v1}, Lv3/c0;->g(Lv3/c0$f;Lv3/c0$f;)V

    return-void

    :cond_60
    if-eqz p2, :cond_68

    invoke-virtual {p0, p1, p2}, Lv3/c0;->g(Lv3/c0$f;Lv3/c0$f;)V

    iput-object v0, p1, Lv3/c0$f;->b:Lv3/c0$f;

    goto :goto_73

    :cond_68
    if-eqz v1, :cond_70

    invoke-virtual {p0, p1, v1}, Lv3/c0;->g(Lv3/c0$f;Lv3/c0$f;)V

    iput-object v0, p1, Lv3/c0$f;->c:Lv3/c0$f;

    goto :goto_73

    :cond_70
    invoke-virtual {p0, p1, v0}, Lv3/c0;->g(Lv3/c0$f;Lv3/c0$f;)V

    :goto_73
    invoke-virtual {p0, v2, v3}, Lv3/c0;->e(Lv3/c0$f;Z)V

    iget p1, p0, Lv3/c0;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lv3/c0;->d:I

    iget p1, p0, Lv3/c0;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lv3/c0;->e:I

    return-void
.end method

.method public final g(Lv3/c0$f;Lv3/c0$f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/c0$f<",
            "TK;TV;>;",
            "Lv3/c0$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lv3/c0$f;->a:Lv3/c0$f;

    const/4 v1, 0x0

    iput-object v1, p1, Lv3/c0$f;->a:Lv3/c0$f;

    if-eqz p2, :cond_9

    iput-object v0, p2, Lv3/c0$f;->a:Lv3/c0$f;

    :cond_9
    if-eqz v0, :cond_15

    iget-object p0, v0, Lv3/c0$f;->b:Lv3/c0$f;

    if-ne p0, p1, :cond_12

    iput-object p2, v0, Lv3/c0$f;->b:Lv3/c0$f;

    goto :goto_1f

    :cond_12
    iput-object p2, v0, Lv3/c0$f;->c:Lv3/c0$f;

    goto :goto_1f

    :cond_15
    iget p1, p1, Lv3/c0$f;->g:I

    iget-object p0, p0, Lv3/c0;->b:[Lv3/c0$f;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    and-int/2addr p1, v0

    aput-object p2, p0, p1

    :goto_1f
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lv3/c0;->d(Ljava/lang/Object;)Lv3/c0$f;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-object p0, p0, Lv3/c0$f;->h:Ljava/lang/Object;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public final h(Lv3/c0$f;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/c0$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lv3/c0$f;->b:Lv3/c0$f;

    iget-object v1, p1, Lv3/c0$f;->c:Lv3/c0$f;

    iget-object v2, v1, Lv3/c0$f;->b:Lv3/c0$f;

    iget-object v3, v1, Lv3/c0$f;->c:Lv3/c0$f;

    iput-object v2, p1, Lv3/c0$f;->c:Lv3/c0$f;

    if-eqz v2, :cond_e

    iput-object p1, v2, Lv3/c0$f;->a:Lv3/c0$f;

    :cond_e
    invoke-virtual {p0, p1, v1}, Lv3/c0;->g(Lv3/c0$f;Lv3/c0$f;)V

    iput-object p1, v1, Lv3/c0$f;->b:Lv3/c0$f;

    iput-object v1, p1, Lv3/c0$f;->a:Lv3/c0$f;

    const/4 p0, 0x0

    if-eqz v0, :cond_1b

    iget v0, v0, Lv3/c0$f;->i:I

    goto :goto_1c

    :cond_1b
    move v0, p0

    :goto_1c
    if-eqz v2, :cond_21

    iget v2, v2, Lv3/c0$f;->i:I

    goto :goto_22

    :cond_21
    move v2, p0

    :goto_22
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lv3/c0$f;->i:I

    if-eqz v3, :cond_2e

    iget p0, v3, Lv3/c0$f;->i:I

    :cond_2e
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v1, Lv3/c0$f;->i:I

    return-void
.end method

.method public final i(Lv3/c0$f;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv3/c0$f<",
            "TK;TV;>;)V"
        }
    .end annotation

    iget-object v0, p1, Lv3/c0$f;->b:Lv3/c0$f;

    iget-object v1, p1, Lv3/c0$f;->c:Lv3/c0$f;

    iget-object v2, v0, Lv3/c0$f;->b:Lv3/c0$f;

    iget-object v3, v0, Lv3/c0$f;->c:Lv3/c0$f;

    iput-object v3, p1, Lv3/c0$f;->b:Lv3/c0$f;

    if-eqz v3, :cond_e

    iput-object p1, v3, Lv3/c0$f;->a:Lv3/c0$f;

    :cond_e
    invoke-virtual {p0, p1, v0}, Lv3/c0;->g(Lv3/c0$f;Lv3/c0$f;)V

    iput-object p1, v0, Lv3/c0$f;->c:Lv3/c0$f;

    iput-object v0, p1, Lv3/c0$f;->a:Lv3/c0$f;

    const/4 p0, 0x0

    if-eqz v1, :cond_1b

    iget v1, v1, Lv3/c0$f;->i:I

    goto :goto_1c

    :cond_1b
    move v1, p0

    :goto_1c
    if-eqz v3, :cond_21

    iget v3, v3, Lv3/c0$f;->i:I

    goto :goto_22

    :cond_21
    move v3, p0

    :goto_22
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lv3/c0$f;->i:I

    if-eqz v2, :cond_2e

    iget p0, v2, Lv3/c0$f;->i:I

    :cond_2e
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lv3/c0$f;->i:I

    return-void
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lv3/c0;->h:Lv3/c0$d;

    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    new-instance v0, Lv3/c0$d;

    invoke-direct {v0, p0}, Lv3/c0$d;-><init>(Lv3/c0;)V

    iput-object v0, p0, Lv3/c0;->h:Lv3/c0$d;

    :goto_c
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const-string v0, "key == null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lv3/c0;->a(Ljava/lang/Object;Z)Lv3/c0$f;

    move-result-object p0

    iget-object p1, p0, Lv3/c0$f;->h:Ljava/lang/Object;

    iput-object p2, p0, Lv3/c0$f;->h:Ljava/lang/Object;

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lv3/c0;->d(Ljava/lang/Object;)Lv3/c0$f;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lv3/c0;->f(Lv3/c0$f;Z)V

    :cond_a
    if-eqz p1, :cond_f

    iget-object p0, p1, Lv3/c0$f;->h:Ljava/lang/Object;

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return-object p0
.end method

.method public size()I
    .registers 1

    iget p0, p0, Lv3/c0;->d:I

    return p0
.end method
