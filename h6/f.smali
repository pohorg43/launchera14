.class public final Lh6/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lh6/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    if-eqz p1, :cond_a

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/f;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lh6/f;->b:Z

    return-void

    :cond_a
    const/4 p0, 0x0

    invoke-static {p0}, Lh6/f;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(I)V
    .registers 10

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p0, v2, :cond_f

    if-eq p0, v3, :cond_f

    if-eq p0, v1, :cond_f

    if-eq p0, v0, :cond_f

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_11

    :cond_f
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_11
    if-eq p0, v2, :cond_1b

    if-eq p0, v3, :cond_1b

    if-eq p0, v1, :cond_1b

    if-eq p0, v0, :cond_1b

    move v5, v1

    goto :goto_1c

    :cond_1b
    move v5, v3

    :goto_1c
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/name/Name"

    const/4 v7, 0x0

    if-eq p0, v2, :cond_2e

    if-eq p0, v3, :cond_2e

    if-eq p0, v1, :cond_2e

    if-eq p0, v0, :cond_2e

    const-string v8, "name"

    aput-object v8, v5, v7

    goto :goto_30

    :cond_2e
    aput-object v6, v5, v7

    :goto_30
    if-eq p0, v2, :cond_45

    if-eq p0, v3, :cond_40

    if-eq p0, v1, :cond_3b

    if-eq p0, v0, :cond_3b

    aput-object v6, v5, v2

    goto :goto_49

    :cond_3b
    const-string v6, "asStringStripSpecialMarkers"

    aput-object v6, v5, v2

    goto :goto_49

    :cond_40
    const-string v6, "getIdentifier"

    aput-object v6, v5, v2

    goto :goto_49

    :cond_45
    const-string v6, "asString"

    aput-object v6, v5, v2

    :goto_49
    packed-switch p0, :pswitch_data_7c

    const-string v6, "<init>"

    aput-object v6, v5, v3

    goto :goto_64

    :pswitch_51  #0x8
    const-string v6, "guessByFirstCharacter"

    aput-object v6, v5, v3

    goto :goto_64

    :pswitch_56  #0x7
    const-string v6, "special"

    aput-object v6, v5, v3

    goto :goto_64

    :pswitch_5b  #0x6
    const-string v6, "isValidIdentifier"

    aput-object v6, v5, v3

    goto :goto_64

    :pswitch_60  #0x5
    const-string v6, "identifier"

    aput-object v6, v5, v3

    :goto_64
    :pswitch_64  #0x1, 0x2, 0x3, 0x4
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v2, :cond_76

    if-eq p0, v3, :cond_76

    if-eq p0, v1, :cond_76

    if-eq p0, v0, :cond_76

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7b

    :cond_76
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_7b
    throw p0

    :pswitch_data_7c
    .packed-switch 0x1
        :pswitch_64  #00000001
        :pswitch_64  #00000002
        :pswitch_64  #00000003
        :pswitch_64  #00000004
        :pswitch_60  #00000005
        :pswitch_5b  #00000006
        :pswitch_56  #00000007
        :pswitch_51  #00000008
    .end packed-switch
.end method

.method public static e(Ljava/lang/String;)Lh6/f;
    .registers 2

    if-eqz p0, :cond_14

    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lh6/f;->h(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {p0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object p0

    return-object p0

    :cond_14
    const/16 p0, 0x8

    invoke-static {p0}, Lh6/f;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static f(Ljava/lang/String;)Lh6/f;
    .registers 3

    if-eqz p0, :cond_9

    new-instance v0, Lh6/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lh6/f;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_9
    const/4 p0, 0x5

    invoke-static {p0}, Lh6/f;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static g(Ljava/lang/String;)Z
    .registers 5

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_30

    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_30

    :cond_12
    move v0, v1

    :goto_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x2f

    if-eq v2, v3, :cond_2d

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_2a

    goto :goto_2d

    :cond_2a
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2d
    :goto_2d
    return v1

    :cond_2e
    const/4 p0, 0x1

    return p0

    :cond_30
    :goto_30
    return v1

    :cond_31
    const/4 p0, 0x6

    invoke-static {p0}, Lh6/f;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static h(Ljava/lang/String;)Lh6/f;
    .registers 3

    if-eqz p0, :cond_1d

    const-string v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lh6/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lh6/f;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "special name must start with \'<\': "

    invoke-static {v1, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    const/4 p0, 0x7

    invoke-static {p0}, Lh6/f;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lh6/f;->a:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x1

    invoke-static {p0}, Lh6/f;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lh6/f;

    iget-object p0, p0, Lh6/f;->a:Ljava/lang/String;

    iget-object p1, p1, Lh6/f;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public d()Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lh6/f;->b:Z

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    const/4 p0, 0x2

    invoke-static {p0}, Lh6/f;->a(I)V

    const/4 p0, 0x0

    throw p0

    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lh6/f;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lh6/f;

    iget-boolean v1, p0, Lh6/f;->b:Z

    iget-boolean v3, p1, Lh6/f;->b:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lh6/f;->a:Ljava/lang/String;

    iget-object p1, p1, Lh6/f;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lh6/f;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lh6/f;->b:Z

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lh6/f;->a:Ljava/lang/String;

    return-object p0
.end method
