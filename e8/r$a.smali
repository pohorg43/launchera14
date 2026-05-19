.class public final Le8/r$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le8/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public e:I

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/util/List;
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

.field public h:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Le8/r$a;->b:Ljava/lang/String;

    iput-object v0, p0, Le8/r$a;->c:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Le8/r$a;->e:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Le8/r$a;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Le8/r;
    .registers 2

    iget-object v0, p0, Le8/r$a;->a:Ljava/lang/String;

    if-eqz v0, :cond_16

    iget-object v0, p0, Le8/r$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_e

    new-instance v0, Le8/r;

    invoke-direct {v0, p0}, Le8/r;-><init>(Le8/r$a;)V

    return-object v0

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "host == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "scheme == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/lang/String;)Le8/r$a;
    .registers 8
    .param p1  # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_12

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v1, " \"\'<>#"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Le8/r;->b(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le8/r;->o(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    iput-object p1, p0, Le8/r$a;->g:Ljava/util/List;

    return-object p0
.end method

.method public c(Le8/r;Ljava/lang/String;)Le8/r$a;
    .registers 25
    .param p1  # Le8/r;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v8, 0x0

    invoke-static {v10, v8, v2}, Lf8/c;->v(Ljava/lang/String;II)I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v10, v9, v2}, Lf8/c;->w(Ljava/lang/String;II)I

    move-result v11

    sub-int v2, v11, v9

    const/4 v12, 0x2

    const/16 v13, 0x3a

    const/4 v14, -0x1

    if-ge v2, v12, :cond_20

    goto :goto_62

    :cond_20
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x5a

    const/16 v4, 0x7a

    const/16 v5, 0x41

    const/16 v6, 0x61

    if-lt v2, v6, :cond_30

    if-le v2, v4, :cond_35

    :cond_30
    if-lt v2, v5, :cond_62

    if-le v2, v3, :cond_35

    goto :goto_62

    :cond_35
    move v2, v9

    :goto_36
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v11, :cond_62

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v6, :cond_42

    if-le v7, v4, :cond_5f

    :cond_42
    if-lt v7, v5, :cond_46

    if-le v7, v3, :cond_5f

    :cond_46
    const/16 v3, 0x30

    if-lt v7, v3, :cond_4e

    const/16 v3, 0x39

    if-le v7, v3, :cond_5f

    :cond_4e
    const/16 v3, 0x2b

    if-eq v7, v3, :cond_5f

    const/16 v3, 0x2d

    if-eq v7, v3, :cond_5f

    const/16 v3, 0x2e

    if-ne v7, v3, :cond_5b

    goto :goto_5f

    :cond_5b
    if-ne v7, v13, :cond_62

    move v15, v2

    goto :goto_63

    :cond_5f
    :goto_5f
    const/16 v3, 0x5a

    goto :goto_36

    :cond_62
    :goto_62
    move v15, v14

    :goto_63
    if-eq v15, v14, :cond_ab

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x6

    const-string v5, "https:"

    move-object/from16 v2, p2

    move v4, v9

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_7a

    const-string v2, "https"

    iput-object v2, v0, Le8/r$a;->a:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x6

    goto :goto_b1

    :cond_7a
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-string v5, "http:"

    move-object/from16 v2, p2

    move v4, v9

    invoke-virtual/range {v2 .. v7}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_8f

    const-string v2, "http"

    iput-object v2, v0, Le8/r$a;->a:Ljava/lang/String;

    add-int/lit8 v9, v9, 0x5

    goto :goto_b1

    :cond_8f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected URL scheme \'http\' or \'https\' but was \'"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v8, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ab
    if-eqz v1, :cond_3d8

    iget-object v2, v1, Le8/r;->a:Ljava/lang/String;

    iput-object v2, v0, Le8/r$a;->a:Ljava/lang/String;

    :goto_b1
    move v3, v8

    move v2, v9

    :goto_b3
    const/16 v4, 0x2f

    const/16 v5, 0x5c

    if-ge v2, v11, :cond_c6

    invoke-virtual {v10, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_c1

    if-ne v6, v4, :cond_c6

    :cond_c1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_b3

    :cond_c6
    const/16 v2, 0x3f

    const/16 v6, 0x23

    if-ge v3, v12, :cond_10e

    if-eqz v1, :cond_10e

    iget-object v7, v1, Le8/r;->a:Ljava/lang/String;

    iget-object v12, v0, Le8/r$a;->a:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d9

    goto :goto_10e

    :cond_d9
    invoke-virtual/range {p1 .. p1}, Le8/r;->h()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Le8/r$a;->b:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Le8/r;->d()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Le8/r$a;->c:Ljava/lang/String;

    iget-object v2, v1, Le8/r;->d:Ljava/lang/String;

    iput-object v2, v0, Le8/r$a;->d:Ljava/lang/String;

    iget v2, v1, Le8/r;->e:I

    iput v2, v0, Le8/r$a;->e:I

    iget-object v2, v0, Le8/r$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, v0, Le8/r$a;->f:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Le8/r;->f()Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eq v9, v11, :cond_103

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v6, :cond_10a

    :cond_103
    invoke-virtual/range {p1 .. p1}, Le8/r;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Le8/r$a;->b(Ljava/lang/String;)Le8/r$a;

    :cond_10a
    move/from16 v17, v11

    goto/16 :goto_252

    :cond_10e
    :goto_10e
    add-int/2addr v9, v3

    move v15, v8

    move v12, v9

    move v1, v14

    move v14, v15

    :goto_113
    const-string v3, "@/\\?#"

    invoke-static {v10, v12, v11, v3}, Lf8/c;->j(Ljava/lang/String;IILjava/lang/String;)I

    move-result v9

    if-eq v9, v11, :cond_120

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_121

    :cond_120
    move v3, v1

    :goto_121
    if-eq v3, v1, :cond_1bc

    if-eq v3, v6, :cond_1bc

    if-eq v3, v4, :cond_1bc

    if-eq v3, v5, :cond_1bc

    if-eq v3, v2, :cond_1bc

    const/16 v1, 0x40

    if-eq v3, v1, :cond_131

    goto/16 :goto_1af

    :cond_131
    const-string v8, "%40"

    if-nez v14, :cond_17f

    invoke-static {v10, v12, v9, v13}, Lf8/c;->i(Ljava/lang/String;IIC)I

    move-result v7

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v2, v12

    move v3, v7

    move v12, v7

    move/from16 v7, v16

    move-object v13, v8

    move/from16 v8, v17

    move/from16 p1, v14

    move v14, v9

    move-object/from16 v9, v18

    invoke-static/range {v1 .. v9}, Le8/r;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    if-eqz v15, :cond_163

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Le8/r$a;->b:Ljava/lang/String;

    invoke-static {v2, v3, v13, v1}, Landroidx/fragment/app/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_163
    iput-object v1, v0, Le8/r$a;->b:Ljava/lang/String;

    if-eq v12, v14, :cond_17b

    add-int/lit8 v2, v12, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v3, v14

    invoke-static/range {v1 .. v9}, Le8/r;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le8/r$a;->c:Ljava/lang/String;

    const/4 v1, 0x1

    goto :goto_17d

    :cond_17b
    move/from16 v1, p1

    :goto_17d
    const/4 v15, 0x1

    goto :goto_1ac

    :cond_17f
    move-object v13, v8

    move/from16 p1, v14

    move v14, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Le8/r$a;->c:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v13, 0x0

    const-string v4, " \"\':;<=>@[]^`{}|/\\?#"

    move-object/from16 v1, p2

    move v2, v12

    move v3, v14

    move-object v12, v9

    move-object v9, v13

    invoke-static/range {v1 .. v9}, Le8/r;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le8/r$a;->c:Ljava/lang/String;

    move/from16 v1, p1

    :goto_1ac
    add-int/lit8 v12, v14, 0x1

    move v14, v1

    :goto_1af
    const/16 v6, 0x23

    const/16 v2, 0x3f

    const/16 v5, 0x5c

    const/4 v1, -0x1

    const/16 v4, 0x2f

    const/16 v13, 0x3a

    goto/16 :goto_113

    :cond_1bc
    move v14, v9

    move v9, v12

    :goto_1be
    if-ge v9, v14, :cond_1de

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1dc

    const/16 v3, 0x5b

    if-eq v1, v3, :cond_1ce

    const/4 v1, 0x1

    goto :goto_1da

    :cond_1ce
    const/4 v1, 0x1

    :cond_1cf
    add-int/2addr v9, v1

    if-ge v9, v14, :cond_1da

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-ne v3, v4, :cond_1cf

    :cond_1da
    :goto_1da
    add-int/2addr v9, v1

    goto :goto_1be

    :cond_1dc
    move v13, v9

    goto :goto_1df

    :cond_1de
    move v13, v14

    :goto_1df
    add-int/lit8 v15, v13, 0x1

    const/16 v9, 0x22

    if-ge v15, v14, :cond_236

    const/4 v1, 0x0

    invoke-static {v10, v12, v13, v1}, Le8/r;->k(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lf8/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le8/r$a;->d:Ljava/lang/String;

    :try_start_1f0
    const-string v4, ""
    :try_end_1f2
    .catch Ljava/lang/NumberFormatException; {:try_start_1f0 .. :try_end_1f2} :catch_211

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v16, 0x0

    move-object/from16 v1, p2

    move v2, v15

    move v3, v14

    move/from16 v17, v11

    move v11, v9

    move-object/from16 v9, v16

    :try_start_201
    invoke-static/range {v1 .. v9}, Le8/r;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_209
    .catch Ljava/lang/NumberFormatException; {:try_start_201 .. :try_end_209} :catch_214

    if-lez v1, :cond_214

    const v2, 0xffff

    if-gt v1, v2, :cond_214

    goto :goto_215

    :catch_211
    move/from16 v17, v11

    move v11, v9

    :catch_214
    :cond_214
    const/4 v1, -0x1

    :goto_215
    iput v1, v0, Le8/r$a;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_21c

    const/4 v1, 0x0

    goto :goto_24c

    :cond_21c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid URL port: \""

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_236
    move/from16 v17, v11

    move v11, v9

    const/4 v1, 0x0

    invoke-static {v10, v12, v13, v1}, Le8/r;->k(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lf8/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Le8/r$a;->d:Ljava/lang/String;

    iget-object v2, v0, Le8/r$a;->a:Ljava/lang/String;

    invoke-static {v2}, Le8/r;->c(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Le8/r$a;->e:I

    :goto_24c
    move v8, v1

    iget-object v1, v0, Le8/r$a;->d:Ljava/lang/String;

    if-eqz v1, :cond_3be

    move v9, v14

    :goto_252
    const-string v1, "?#"

    move/from16 v2, v17

    invoke-static {v10, v9, v2, v1}, Lf8/c;->j(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    if-ne v9, v1, :cond_261

    move v11, v2

    move-object/from16 v17, v10

    goto/16 :goto_379

    :cond_261
    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, ""

    const/16 v5, 0x2f

    if-eq v3, v5, :cond_289

    const/16 v5, 0x5c

    if-ne v3, v5, :cond_270

    goto :goto_289

    :cond_270
    iget-object v3, v0, Le8/r$a;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v3, v5, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v13, v1

    move v14, v13

    move/from16 v18, v2

    move-object v15, v4

    move/from16 v16, v8

    move v3, v9

    move-object v11, v10

    move-object v12, v11

    move-object/from16 v17, v12

    move-object v1, v0

    goto :goto_2a9

    :cond_289
    :goto_289
    const/4 v3, 0x1

    iget-object v5, v0, Le8/r$a;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    iget-object v5, v0, Le8/r$a;->f:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v1

    move v11, v2

    move v6, v3

    move-object v7, v4

    move-object v2, v10

    move-object v3, v2

    move-object v1, v0

    move v4, v5

    :goto_29c
    add-int/2addr v9, v6

    move-object v12, v3

    move v13, v4

    move v14, v5

    move-object v15, v7

    move/from16 v16, v8

    move v3, v9

    move-object/from16 v17, v10

    move/from16 v18, v11

    move-object v11, v2

    :goto_2a9
    if-ge v3, v14, :cond_375

    const-string v2, "/\\"

    invoke-static {v11, v3, v14, v2}, Lf8/c;->j(Ljava/lang/String;IILjava/lang/String;)I

    move-result v10

    if-ge v10, v14, :cond_2b7

    const/4 v2, 0x1

    move/from16 v19, v2

    goto :goto_2b9

    :cond_2b7
    move/from16 v19, v16

    :goto_2b9
    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v20, 0x0

    const-string v5, " \"<>^`{}|/\\?#"

    move-object v2, v11

    move v4, v10

    move/from16 v21, v10

    move-object/from16 v10, v20

    invoke-static/range {v2 .. v10}, Le8/r;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2df

    const-string v3, "%2e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2dc

    goto :goto_2df

    :cond_2dc
    move/from16 v3, v16

    goto :goto_2e0

    :cond_2df
    :goto_2df
    const/4 v3, 0x1

    :goto_2e0
    if-eqz v3, :cond_2e4

    goto/16 :goto_35f

    :cond_2e4
    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_308

    const-string v3, "%2e."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_308

    const-string v3, ".%2e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_308

    const-string v3, "%2e%2e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_305

    goto :goto_308

    :cond_305
    move/from16 v3, v16

    goto :goto_309

    :cond_308
    :goto_308
    const/4 v3, 0x1

    :goto_309
    if-eqz v3, :cond_339

    iget-object v2, v1, Le8/r$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_333

    iget-object v2, v1, Le8/r$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_333

    iget-object v2, v1, Le8/r$a;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3, v15}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_35f

    :cond_333
    iget-object v2, v1, Le8/r$a;->f:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35f

    :cond_339
    iget-object v3, v1, Le8/r$a;->f:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroidx/appcompat/view/menu/a;->a(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_353

    iget-object v3, v1, Le8/r$a;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-interface {v3, v5, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_358

    :cond_353
    iget-object v3, v1, Le8/r$a;->f:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_358
    if-eqz v19, :cond_35f

    iget-object v2, v1, Le8/r$a;->f:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_35f
    :goto_35f
    if-eqz v19, :cond_371

    const/4 v6, 0x1

    move-object v2, v11

    move-object v3, v12

    move v4, v13

    move v5, v14

    move-object v7, v15

    move/from16 v8, v16

    move-object/from16 v10, v17

    move/from16 v11, v18

    move/from16 v9, v21

    goto/16 :goto_29c

    :cond_371
    move/from16 v3, v21

    goto/16 :goto_2a9

    :cond_375
    move-object v10, v12

    move v1, v13

    move/from16 v11, v18

    :goto_379
    if-ge v1, v11, :cond_3a1

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_3a1

    const/16 v12, 0x23

    invoke-static {v10, v1, v11, v12}, Lf8/c;->i(Ljava/lang/String;IIC)I

    move-result v13

    add-int/lit8 v2, v1, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, " \"\'<>#"

    move-object/from16 v1, v17

    move v3, v13

    invoke-static/range {v1 .. v9}, Le8/r;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Le8/r;->o(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Le8/r$a;->g:Ljava/util/List;

    move v1, v13

    goto :goto_3a3

    :cond_3a1
    const/16 v12, 0x23

    :goto_3a3
    if-ge v1, v11, :cond_3bd

    invoke-virtual {v10, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v12, :cond_3bd

    add-int/lit8 v2, v1, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v4, ""

    move-object/from16 v1, v17

    move v3, v11

    invoke-static/range {v1 .. v9}, Le8/r;->a(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Le8/r$a;->h:Ljava/lang/String;

    :cond_3bd
    return-object v0

    :cond_3be
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid URL host: \""

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3d8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected URL scheme \'http\' or \'https\' but no colon was found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le8/r$a;->a:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_12
    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    iget-object v1, p0, Le8/r$a;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/16 v2, 0x3a

    if-eqz v1, :cond_29

    iget-object v1, p0, Le8/r$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    :cond_29
    iget-object v1, p0, Le8/r$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le8/r$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le8/r$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3e
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_43
    iget-object v1, p0, Le8/r$a;->d:Ljava/lang/String;

    const/4 v3, -0x1

    if-eqz v1, :cond_63

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eq v1, v3, :cond_5e

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le8/r$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_63

    :cond_5e
    iget-object v1, p0, Le8/r$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_63
    :goto_63
    iget v1, p0, Le8/r$a;->e:I

    if-ne v1, v3, :cond_6b

    iget-object v4, p0, Le8/r$a;->a:Ljava/lang/String;

    if-eqz v4, :cond_84

    :cond_6b
    if-eq v1, v3, :cond_6e

    goto :goto_74

    :cond_6e
    iget-object v1, p0, Le8/r$a;->a:Ljava/lang/String;

    invoke-static {v1}, Le8/r;->c(Ljava/lang/String;)I

    move-result v1

    :goto_74
    iget-object v3, p0, Le8/r$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_7e

    invoke-static {v3}, Le8/r;->c(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_84

    :cond_7e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_84
    iget-object v1, p0, Le8/r$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_8b
    if-ge v3, v2, :cond_9e

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    :cond_9e
    iget-object v1, p0, Le8/r$a;->g:Ljava/util/List;

    if-eqz v1, :cond_ac

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le8/r$a;->g:Ljava/util/List;

    invoke-static {v0, v1}, Le8/r;->i(Ljava/lang/StringBuilder;Ljava/util/List;)V

    :cond_ac
    iget-object v1, p0, Le8/r$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_ba

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le8/r$a;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ba
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
