.class public final Lh6/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final c:Lh6/c;


# instance fields
.field public final a:Lh6/d;

.field public transient b:Lh6/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lh6/c;

    const-string v1, ""

    invoke-direct {v0, v1}, Lh6/c;-><init>(Ljava/lang/String;)V

    sput-object v0, Lh6/c;->c:Lh6/c;

    return-void
.end method

.method public constructor <init>(Lh6/d;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/c;->a:Lh6/d;

    return-void
.end method

.method public constructor <init>(Lh6/d;Lh6/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/c;->a:Lh6/d;

    iput-object p2, p0, Lh6/c;->b:Lh6/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_d

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lh6/d;

    invoke-direct {v0, p1, p0}, Lh6/d;-><init>(Ljava/lang/String;Lh6/c;)V

    iput-object v0, p0, Lh6/c;->a:Lh6/d;

    return-void

    :cond_d
    const/4 p0, 0x1

    invoke-static {p0}, Lh6/c;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(I)V
    .registers 8

    packed-switch p0, :pswitch_data_82

    :pswitch_3  #0x8
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6  #0x4, 0x5, 0x6, 0x7, 0x9, 0xa, 0xb
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_96

    :pswitch_c  #0x8
    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e  #0x4, 0x5, 0x6, 0x7, 0x9, 0xa, 0xb
    move v2, v1

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "shortName"

    const-string v4, "kotlin/reflect/jvm/internal/impl/name/FqName"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_aa

    const-string v6, "names"

    aput-object v6, v2, v5

    goto :goto_32

    :pswitch_1e  #0xd
    aput-object v3, v2, v5

    goto :goto_32

    :pswitch_21  #0xc
    const-string v6, "segment"

    aput-object v6, v2, v5

    goto :goto_32

    :pswitch_26  #0x8
    const-string v6, "name"

    aput-object v6, v2, v5

    goto :goto_32

    :pswitch_2b  #0x4, 0x5, 0x6, 0x7, 0x9, 0xa, 0xb
    aput-object v4, v2, v5

    goto :goto_32

    :pswitch_2e  #0x1, 0x2, 0x3
    const-string v6, "fqName"

    aput-object v6, v2, v5

    :goto_32
    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_c8

    :pswitch_36  #0x8
    aput-object v4, v2, v5

    goto :goto_54

    :pswitch_39  #0xb
    const-string v3, "pathSegments"

    aput-object v3, v2, v5

    goto :goto_54

    :pswitch_3e  #0xa
    const-string v3, "shortNameOrSpecial"

    aput-object v3, v2, v5

    goto :goto_54

    :pswitch_43  #0x9
    aput-object v3, v2, v5

    goto :goto_54

    :pswitch_46  #0x6, 0x7
    const-string v3, "parent"

    aput-object v3, v2, v5

    goto :goto_54

    :pswitch_4b  #0x5
    const-string v3, "toUnsafe"

    aput-object v3, v2, v5

    goto :goto_54

    :pswitch_50  #0x4
    const-string v3, "asString"

    aput-object v3, v2, v5

    :goto_54
    packed-switch p0, :pswitch_data_dc

    const-string v3, "fromSegments"

    aput-object v3, v2, v1

    goto :goto_6f

    :pswitch_5c  #0xd
    const-string v3, "topLevel"

    aput-object v3, v2, v1

    goto :goto_6f

    :pswitch_61  #0xc
    const-string v3, "startsWith"

    aput-object v3, v2, v1

    goto :goto_6f

    :pswitch_66  #0x8
    const-string v3, "child"

    aput-object v3, v2, v1

    goto :goto_6f

    :pswitch_6b  #0x1, 0x2, 0x3
    const-string v3, "<init>"

    aput-object v3, v2, v1

    :goto_6f
    :pswitch_6f  #0x4, 0x5, 0x6, 0x7, 0x9, 0xa, 0xb
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_fa

    :pswitch_76  #0x8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_81

    :pswitch_7c  #0x4, 0x5, 0x6, 0x7, 0x9, 0xa, 0xb
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_81
    throw p0

    :pswitch_data_82
    .packed-switch 0x4
        :pswitch_6  #00000004
        :pswitch_6  #00000005
        :pswitch_6  #00000006
        :pswitch_6  #00000007
        :pswitch_3  #00000008
        :pswitch_6  #00000009
        :pswitch_6  #0000000a
        :pswitch_6  #0000000b
    .end packed-switch

    :pswitch_data_96
    .packed-switch 0x4
        :pswitch_e  #00000004
        :pswitch_e  #00000005
        :pswitch_e  #00000006
        :pswitch_e  #00000007
        :pswitch_c  #00000008
        :pswitch_e  #00000009
        :pswitch_e  #0000000a
        :pswitch_e  #0000000b
    .end packed-switch

    :pswitch_data_aa
    .packed-switch 0x1
        :pswitch_2e  #00000001
        :pswitch_2e  #00000002
        :pswitch_2e  #00000003
        :pswitch_2b  #00000004
        :pswitch_2b  #00000005
        :pswitch_2b  #00000006
        :pswitch_2b  #00000007
        :pswitch_26  #00000008
        :pswitch_2b  #00000009
        :pswitch_2b  #0000000a
        :pswitch_2b  #0000000b
        :pswitch_21  #0000000c
        :pswitch_1e  #0000000d
    .end packed-switch

    :pswitch_data_c8
    .packed-switch 0x4
        :pswitch_50  #00000004
        :pswitch_4b  #00000005
        :pswitch_46  #00000006
        :pswitch_46  #00000007
        :pswitch_36  #00000008
        :pswitch_43  #00000009
        :pswitch_3e  #0000000a
        :pswitch_39  #0000000b
    .end packed-switch

    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_6b  #00000001
        :pswitch_6b  #00000002
        :pswitch_6b  #00000003
        :pswitch_6f  #00000004
        :pswitch_6f  #00000005
        :pswitch_6f  #00000006
        :pswitch_6f  #00000007
        :pswitch_66  #00000008
        :pswitch_6f  #00000009
        :pswitch_6f  #0000000a
        :pswitch_6f  #0000000b
        :pswitch_61  #0000000c
        :pswitch_5c  #0000000d
    .end packed-switch

    :pswitch_data_fa
    .packed-switch 0x4
        :pswitch_7c  #00000004
        :pswitch_7c  #00000005
        :pswitch_7c  #00000006
        :pswitch_7c  #00000007
        :pswitch_76  #00000008
        :pswitch_7c  #00000009
        :pswitch_7c  #0000000a
        :pswitch_7c  #0000000b
    .end packed-switch
.end method

.method public static k(Lh6/f;)Lh6/c;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    new-instance v1, Lh6/c;

    if-eqz p0, :cond_1a

    new-instance v0, Lh6/d;

    invoke-virtual {p0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lh6/c;->c:Lh6/c;

    invoke-virtual {v3}, Lh6/c;->j()Lh6/d;

    move-result-object v3

    invoke-direct {v0, v2, v3, p0}, Lh6/d;-><init>(Ljava/lang/String;Lh6/d;Lh6/f;)V

    invoke-direct {v1, v0}, Lh6/c;-><init>(Lh6/d;)V

    return-object v1

    :cond_1a
    const/16 p0, 0x10

    invoke-static {p0}, Lh6/d;->a(I)V

    throw v0

    :cond_20
    const/16 p0, 0xd

    invoke-static {p0}, Lh6/c;->a(I)V

    throw v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lh6/c;->a:Lh6/d;

    invoke-virtual {p0}, Lh6/d;->b()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/4 p0, 0x4

    invoke-static {p0}, Lh6/c;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public c(Lh6/f;)Lh6/c;
    .registers 4

    if-eqz p1, :cond_e

    new-instance v0, Lh6/c;

    iget-object v1, p0, Lh6/c;->a:Lh6/d;

    invoke-virtual {v1, p1}, Lh6/d;->c(Lh6/f;)Lh6/d;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Lh6/c;-><init>(Lh6/d;Lh6/c;)V

    return-object v0

    :cond_e
    const/16 p0, 0x8

    invoke-static {p0}, Lh6/c;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public d()Z
    .registers 1

    iget-object p0, p0, Lh6/c;->a:Lh6/d;

    invoke-virtual {p0}, Lh6/d;->e()Z

    move-result p0

    return p0
.end method

.method public e()Lh6/c;
    .registers 6

    iget-object v0, p0, Lh6/c;->b:Lh6/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    const/4 p0, 0x6

    invoke-static {p0}, Lh6/c;->a(I)V

    throw v1

    :cond_d
    invoke-virtual {p0}, Lh6/c;->d()Z

    move-result v0

    const-string v2, "root"

    if-nez v0, :cond_3d

    new-instance v0, Lh6/c;

    iget-object v3, p0, Lh6/c;->a:Lh6/d;

    iget-object v4, v3, Lh6/d;->c:Lh6/d;

    if-eqz v4, :cond_1e

    goto :goto_2b

    :cond_1e
    invoke-virtual {v3}, Lh6/d;->e()Z

    move-result v4

    if-nez v4, :cond_37

    invoke-virtual {v3}, Lh6/d;->d()V

    iget-object v4, v3, Lh6/d;->c:Lh6/d;

    if-eqz v4, :cond_31

    :goto_2b
    invoke-direct {v0, v4}, Lh6/c;-><init>(Lh6/d;)V

    iput-object v0, p0, Lh6/c;->b:Lh6/c;

    return-object v0

    :cond_31
    const/16 p0, 0x8

    invoke-static {p0}, Lh6/d;->a(I)V

    throw v1

    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3d
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lh6/c;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lh6/c;

    iget-object p0, p0, Lh6/c;->a:Lh6/d;

    iget-object p1, p1, Lh6/c;->a:Lh6/d;

    invoke-virtual {p0, p1}, Lh6/d;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public f()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lh6/c;->a:Lh6/d;

    invoke-virtual {p0}, Lh6/d;->g()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0xb

    invoke-static {p0}, Lh6/c;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public g()Lh6/f;
    .registers 1

    iget-object p0, p0, Lh6/c;->a:Lh6/d;

    invoke-virtual {p0}, Lh6/d;->h()Lh6/f;

    move-result-object p0

    if-eqz p0, :cond_9

    return-object p0

    :cond_9
    const/16 p0, 0x9

    invoke-static {p0}, Lh6/c;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public h()Lh6/f;
    .registers 3

    iget-object p0, p0, Lh6/c;->a:Lh6/d;

    invoke-virtual {p0}, Lh6/d;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    sget-object p0, Lh6/d;->e:Lh6/f;

    if-eqz p0, :cond_e

    goto :goto_1a

    :cond_e
    const/16 p0, 0xc

    invoke-static {p0}, Lh6/d;->a(I)V

    throw v1

    :cond_14
    invoke-virtual {p0}, Lh6/d;->h()Lh6/f;

    move-result-object p0

    if-eqz p0, :cond_1b

    :goto_1a
    return-object p0

    :cond_1b
    const/16 p0, 0xd

    invoke-static {p0}, Lh6/d;->a(I)V

    throw v1
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lh6/c;->a:Lh6/d;

    invoke-virtual {p0}, Lh6/d;->hashCode()I

    move-result p0

    return p0
.end method

.method public i(Lh6/f;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    iget-object p0, p0, Lh6/c;->a:Lh6/d;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_34

    invoke-virtual {p0}, Lh6/d;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    goto :goto_33

    :cond_12
    iget-object v0, p0, Lh6/d;->a:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lh6/d;->a:Ljava/lang/String;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_2f
    invoke-virtual {p0, v1, p1, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    :goto_33
    return v1

    :cond_34
    const/16 p0, 0xf

    invoke-static {p0}, Lh6/d;->a(I)V

    throw v0

    :cond_3a
    const/16 p0, 0xc

    invoke-static {p0}, Lh6/c;->a(I)V

    throw v0
.end method

.method public j()Lh6/d;
    .registers 1

    iget-object p0, p0, Lh6/c;->a:Lh6/d;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x5

    invoke-static {p0}, Lh6/c;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lh6/c;->a:Lh6/d;

    invoke-virtual {p0}, Lh6/d;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
