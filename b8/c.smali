.class public final Lb8/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final b:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final c:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final d:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final e:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final f:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final g:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final h:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final j:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final k:Lc8/b;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7ff

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Lb8/c;-><init>(ZZZZZLjava/lang/String;ZZLjava/lang/String;ZLc8/b;I)V

    return-void
.end method

.method public constructor <init>(ZZZZZLjava/lang/String;ZZLjava/lang/String;ZLc8/b;)V
    .registers 13

    const-string v0, "prettyPrintIndent"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDiscriminator"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializersModule"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb8/c;->a:Z

    iput-boolean p2, p0, Lb8/c;->b:Z

    iput-boolean p3, p0, Lb8/c;->c:Z

    iput-boolean p4, p0, Lb8/c;->d:Z

    iput-boolean p5, p0, Lb8/c;->e:Z

    iput-object p6, p0, Lb8/c;->f:Ljava/lang/String;

    iput-boolean p7, p0, Lb8/c;->g:Z

    iput-boolean p8, p0, Lb8/c;->h:Z

    iput-object p9, p0, Lb8/c;->i:Ljava/lang/String;

    iput-boolean p10, p0, Lb8/c;->j:Z

    iput-object p11, p0, Lb8/c;->k:Lc8/b;

    return-void
.end method

.method public constructor <init>(ZZZZZLjava/lang/String;ZZLjava/lang/String;ZLc8/b;I)V
    .registers 26

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    move v1, v2

    goto :goto_a

    :cond_9
    move v1, p1

    :goto_a
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_10

    move v3, v2

    goto :goto_11

    :cond_10
    move v3, p2

    :goto_11
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_17

    move v4, v2

    goto :goto_19

    :cond_17
    move/from16 v4, p3

    :goto_19
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_1f

    move v5, v2

    goto :goto_21

    :cond_1f
    move/from16 v5, p4

    :goto_21
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_27

    move v6, v2

    goto :goto_29

    :cond_27
    move/from16 v6, p5

    :goto_29
    and-int/lit8 v7, v0, 0x20

    const/4 v8, 0x0

    if-eqz v7, :cond_31

    const-string v7, "    "

    goto :goto_32

    :cond_31
    move-object v7, v8

    :goto_32
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_38

    move v9, v2

    goto :goto_3a

    :cond_38
    move/from16 v9, p7

    :goto_3a
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_40

    move v10, v2

    goto :goto_42

    :cond_40
    move/from16 v10, p8

    :goto_42
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_49

    const-string v11, "type"

    goto :goto_4a

    :cond_49
    move-object v11, v8

    :goto_4a
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_4f

    goto :goto_51

    :cond_4f
    move/from16 v2, p10

    :goto_51
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_58

    sget-object v0, Lc8/d;->a:Lc8/b;

    move-object v8, v0

    :cond_58
    move p1, v1

    move p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v9

    move/from16 p8, v10

    move-object/from16 p9, v11

    move/from16 p10, v2

    move-object/from16 p11, v8

    invoke-direct/range {p0 .. p11}, Lb8/c;-><init>(ZZZZZLjava/lang/String;ZZLjava/lang/String;ZLc8/b;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p0, p1, :cond_59

    instance-of v0, p1, Lb8/c;

    if-eqz v0, :cond_57

    check-cast p1, Lb8/c;

    iget-boolean v0, p0, Lb8/c;->a:Z

    iget-boolean v1, p1, Lb8/c;->a:Z

    if-ne v0, v1, :cond_57

    iget-boolean v0, p0, Lb8/c;->b:Z

    iget-boolean v1, p1, Lb8/c;->b:Z

    if-ne v0, v1, :cond_57

    iget-boolean v0, p0, Lb8/c;->c:Z

    iget-boolean v1, p1, Lb8/c;->c:Z

    if-ne v0, v1, :cond_57

    iget-boolean v0, p0, Lb8/c;->d:Z

    iget-boolean v1, p1, Lb8/c;->d:Z

    if-ne v0, v1, :cond_57

    iget-boolean v0, p0, Lb8/c;->e:Z

    iget-boolean v1, p1, Lb8/c;->e:Z

    if-ne v0, v1, :cond_57

    iget-object v0, p0, Lb8/c;->f:Ljava/lang/String;

    iget-object v1, p1, Lb8/c;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Lb8/c;->g:Z

    iget-boolean v1, p1, Lb8/c;->g:Z

    if-ne v0, v1, :cond_57

    iget-boolean v0, p0, Lb8/c;->h:Z

    iget-boolean v1, p1, Lb8/c;->h:Z

    if-ne v0, v1, :cond_57

    iget-object v0, p0, Lb8/c;->i:Ljava/lang/String;

    iget-object v1, p1, Lb8/c;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    iget-boolean v0, p0, Lb8/c;->j:Z

    iget-boolean v1, p1, Lb8/c;->j:Z

    if-ne v0, v1, :cond_57

    iget-object p0, p0, Lb8/c;->k:Lc8/b;

    iget-object p1, p1, Lb8/c;->k:Lc8/b;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_57

    goto :goto_59

    :cond_57
    const/4 p0, 0x0

    return p0

    :cond_59
    :goto_59
    const/4 p0, 0x1

    return p0
.end method

.method public hashCode()I
    .registers 5

    iget-boolean v0, p0, Lb8/c;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    move v0, v1

    :cond_6
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lb8/c;->b:Z

    if-eqz v2, :cond_d

    move v2, v1

    :cond_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lb8/c;->c:Z

    if-eqz v2, :cond_15

    move v2, v1

    :cond_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lb8/c;->d:Z

    if-eqz v2, :cond_1d

    move v2, v1

    :cond_1d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lb8/c;->e:Z

    if-eqz v2, :cond_25

    move v2, v1

    :cond_25
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lb8/c;->f:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_33

    :cond_32
    move v2, v3

    :goto_33
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lb8/c;->g:Z

    if-eqz v2, :cond_3b

    move v2, v1

    :cond_3b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lb8/c;->h:Z

    if-eqz v2, :cond_43

    move v2, v1

    :cond_43
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lb8/c;->i:Ljava/lang/String;

    if-eqz v2, :cond_4f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_50

    :cond_4f
    move v2, v3

    :goto_50
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lb8/c;->j:Z

    if-eqz v2, :cond_58

    goto :goto_59

    :cond_58
    move v1, v2

    :goto_59
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lb8/c;->k:Lc8/b;

    if-eqz p0, :cond_64

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_64
    add-int/2addr v0, v3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "JsonConf(encodeDefaults="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lb8/c;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreUnknownKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb8/c;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLenient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb8/c;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowStructuredMapKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb8/c;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prettyPrint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb8/c;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prettyPrintIndent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb8/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", coerceInputValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb8/c;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", useArrayPolymorphism="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb8/c;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", classDiscriminator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb8/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", allowSpecialFloatingPointValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb8/c;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", serializersModule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb8/c;->k:Lc8/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
