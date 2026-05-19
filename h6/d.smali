.class public final Lh6/d;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final e:Lh6/f;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lh6/f;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public transient b:Lh6/c;

.field public transient c:Lh6/d;

.field public transient d:Lh6/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "<root>"

    invoke-static {v0}, Lh6/f;->h(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    sput-object v0, Lh6/d;->e:Lh6/f;

    const-string v0, "\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lh6/d;->f:Ljava/util/regex/Pattern;

    new-instance v0, Lh6/d$a;

    invoke-direct {v0}, Lh6/d$a;-><init>()V

    sput-object v0, Lh6/d;->g:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/d;->a:Ljava/lang/String;

    return-void

    :cond_8
    const/4 p0, 0x2

    invoke-static {p0}, Lh6/d;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Lh6/c;)V
    .registers 3

    if-eqz p1, :cond_a

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lh6/d;->b:Lh6/c;

    return-void

    :cond_a
    const/4 p0, 0x0

    invoke-static {p0}, Lh6/d;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;Lh6/d;Lh6/f;)V
    .registers 4

    if-eqz p1, :cond_c

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh6/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lh6/d;->c:Lh6/d;

    iput-object p3, p0, Lh6/d;->d:Lh6/f;

    return-void

    :cond_c
    const/4 p0, 0x3

    invoke-static {p0}, Lh6/d;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static synthetic a(I)V
    .registers 9

    packed-switch p0, :pswitch_data_84

    :pswitch_3  #0x9, 0xf, 0x10
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6  #0x4, 0x5, 0x6, 0x7, 0x8, 0xa, 0xb, 0xc, 0xd, 0xe, 0x11
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_a4

    :pswitch_c  #0x9, 0xf, 0x10
    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e  #0x4, 0x5, 0x6, 0x7, 0x8, 0xa, 0xb, 0xc, 0xd, 0xe, 0x11
    move v2, v1

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "shortName"

    const-string v4, "kotlin/reflect/jvm/internal/impl/name/FqNameUnsafe"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq p0, v6, :cond_31

    packed-switch p0, :pswitch_data_c4

    const-string v7, "fqName"

    aput-object v7, v2, v5

    goto :goto_35

    :pswitch_21  #0x10
    aput-object v3, v2, v5

    goto :goto_35

    :pswitch_24  #0xf
    const-string v7, "segment"

    aput-object v7, v2, v5

    goto :goto_35

    :pswitch_29  #0x9
    const-string v7, "name"

    aput-object v7, v2, v5

    goto :goto_35

    :pswitch_2e  #0x4, 0x5, 0x6, 0x7, 0x8, 0xa, 0xb, 0xc, 0xd, 0xe, 0x11
    aput-object v4, v2, v5

    goto :goto_35

    :cond_31
    const-string v7, "safe"

    aput-object v7, v2, v5

    :goto_35
    packed-switch p0, :pswitch_data_e4

    :pswitch_38  #0x9, 0xf, 0x10
    aput-object v4, v2, v6

    goto :goto_5b

    :pswitch_3b  #0x11
    const-string v3, "toString"

    aput-object v3, v2, v6

    goto :goto_5b

    :pswitch_40  #0xe
    const-string v3, "pathSegments"

    aput-object v3, v2, v6

    goto :goto_5b

    :pswitch_45  #0xc, 0xd
    const-string v3, "shortNameOrSpecial"

    aput-object v3, v2, v6

    goto :goto_5b

    :pswitch_4a  #0xa, 0xb
    aput-object v3, v2, v6

    goto :goto_5b

    :pswitch_4d  #0x7, 0x8
    const-string v3, "parent"

    aput-object v3, v2, v6

    goto :goto_5b

    :pswitch_52  #0x5, 0x6
    const-string v3, "toSafe"

    aput-object v3, v2, v6

    goto :goto_5b

    :pswitch_57  #0x4
    const-string v3, "asString"

    aput-object v3, v2, v6

    :goto_5b
    packed-switch p0, :pswitch_data_104

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_71

    :pswitch_63  #0x10
    const-string v3, "topLevel"

    aput-object v3, v2, v1

    goto :goto_71

    :pswitch_68  #0xf
    const-string v3, "startsWith"

    aput-object v3, v2, v1

    goto :goto_71

    :pswitch_6d  #0x9
    const-string v3, "child"

    aput-object v3, v2, v1

    :goto_71
    :pswitch_71  #0x4, 0x5, 0x6, 0x7, 0x8, 0xa, 0xb, 0xc, 0xd, 0xe, 0x11
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_124

    :pswitch_78  #0x9, 0xf, 0x10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_83

    :pswitch_7e  #0x4, 0x5, 0x6, 0x7, 0x8, 0xa, 0xb, 0xc, 0xd, 0xe, 0x11
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_83
    throw p0

    :pswitch_data_84
    .packed-switch 0x4
        :pswitch_6  #00000004
        :pswitch_6  #00000005
        :pswitch_6  #00000006
        :pswitch_6  #00000007
        :pswitch_6  #00000008
        :pswitch_3  #00000009
        :pswitch_6  #0000000a
        :pswitch_6  #0000000b
        :pswitch_6  #0000000c
        :pswitch_6  #0000000d
        :pswitch_6  #0000000e
        :pswitch_3  #0000000f
        :pswitch_3  #00000010
        :pswitch_6  #00000011
    .end packed-switch

    :pswitch_data_a4
    .packed-switch 0x4
        :pswitch_e  #00000004
        :pswitch_e  #00000005
        :pswitch_e  #00000006
        :pswitch_e  #00000007
        :pswitch_e  #00000008
        :pswitch_c  #00000009
        :pswitch_e  #0000000a
        :pswitch_e  #0000000b
        :pswitch_e  #0000000c
        :pswitch_e  #0000000d
        :pswitch_e  #0000000e
        :pswitch_c  #0000000f
        :pswitch_c  #00000010
        :pswitch_e  #00000011
    .end packed-switch

    :pswitch_data_c4
    .packed-switch 0x4
        :pswitch_2e  #00000004
        :pswitch_2e  #00000005
        :pswitch_2e  #00000006
        :pswitch_2e  #00000007
        :pswitch_2e  #00000008
        :pswitch_29  #00000009
        :pswitch_2e  #0000000a
        :pswitch_2e  #0000000b
        :pswitch_2e  #0000000c
        :pswitch_2e  #0000000d
        :pswitch_2e  #0000000e
        :pswitch_24  #0000000f
        :pswitch_21  #00000010
        :pswitch_2e  #00000011
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x4
        :pswitch_57  #00000004
        :pswitch_52  #00000005
        :pswitch_52  #00000006
        :pswitch_4d  #00000007
        :pswitch_4d  #00000008
        :pswitch_38  #00000009
        :pswitch_4a  #0000000a
        :pswitch_4a  #0000000b
        :pswitch_45  #0000000c
        :pswitch_45  #0000000d
        :pswitch_40  #0000000e
        :pswitch_38  #0000000f
        :pswitch_38  #00000010
        :pswitch_3b  #00000011
    .end packed-switch

    :pswitch_data_104
    .packed-switch 0x4
        :pswitch_71  #00000004
        :pswitch_71  #00000005
        :pswitch_71  #00000006
        :pswitch_71  #00000007
        :pswitch_71  #00000008
        :pswitch_6d  #00000009
        :pswitch_71  #0000000a
        :pswitch_71  #0000000b
        :pswitch_71  #0000000c
        :pswitch_71  #0000000d
        :pswitch_71  #0000000e
        :pswitch_68  #0000000f
        :pswitch_63  #00000010
        :pswitch_71  #00000011
    .end packed-switch

    :pswitch_data_124
    .packed-switch 0x4
        :pswitch_7e  #00000004
        :pswitch_7e  #00000005
        :pswitch_7e  #00000006
        :pswitch_7e  #00000007
        :pswitch_7e  #00000008
        :pswitch_78  #00000009
        :pswitch_7e  #0000000a
        :pswitch_7e  #0000000b
        :pswitch_7e  #0000000c
        :pswitch_7e  #0000000d
        :pswitch_7e  #0000000e
        :pswitch_78  #0000000f
        :pswitch_78  #00000010
        :pswitch_7e  #00000011
    .end packed-switch
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lh6/d;->a:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x4

    invoke-static {p0}, Lh6/d;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public c(Lh6/f;)Lh6/d;
    .registers 4

    if-eqz p1, :cond_2d

    invoke-virtual {p0}, Lh6/d;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lh6/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lh6/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_27
    new-instance v1, Lh6/d;

    invoke-direct {v1, v0, p0, p1}, Lh6/d;-><init>(Ljava/lang/String;Lh6/d;Lh6/f;)V

    return-object v1

    :cond_2d
    const/16 p0, 0x9

    invoke-static {p0}, Lh6/d;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d()V
    .registers 5

    iget-object v0, p0, Lh6/d;->a:Ljava/lang/String;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_27

    iget-object v1, p0, Lh6/d;->a:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lh6/f;->e(Ljava/lang/String;)Lh6/f;

    move-result-object v1

    iput-object v1, p0, Lh6/d;->d:Lh6/f;

    new-instance v1, Lh6/d;

    iget-object v2, p0, Lh6/d;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lh6/d;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lh6/d;->c:Lh6/d;

    goto :goto_37

    :cond_27
    iget-object v0, p0, Lh6/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lh6/f;->e(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    iput-object v0, p0, Lh6/d;->d:Lh6/f;

    sget-object v0, Lh6/c;->c:Lh6/c;

    invoke-virtual {v0}, Lh6/c;->j()Lh6/d;

    move-result-object v0

    iput-object v0, p0, Lh6/d;->c:Lh6/d;

    :goto_37
    return-void
.end method

.method public e()Z
    .registers 1

    iget-object p0, p0, Lh6/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lh6/d;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lh6/d;

    iget-object p0, p0, Lh6/d;->a:Ljava/lang/String;

    iget-object p1, p1, Lh6/d;->a:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_17

    return v2

    :cond_17
    return v0
.end method

.method public f()Z
    .registers 2

    iget-object v0, p0, Lh6/d;->b:Lh6/c;

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lh6/d;->b()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public g()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lh6/d;->e()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_39

    :cond_b
    sget-object v0, Lh6/d;->f:Ljava/util/regex/Pattern;

    iget-object p0, p0, Lh6/d;->a:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lh6/d;->g:Lkotlin/jvm/functions/Function1;

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "transform"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    array-length v2, p0

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v2, :cond_38

    aget-object v4, p0, v3

    move-object v5, v0

    check-cast v5, Lh6/d$a;

    invoke-virtual {v5, v4}, Lh6/d$a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_38
    move-object p0, v1

    :goto_39
    if-eqz p0, :cond_3c

    return-object p0

    :cond_3c
    const/16 p0, 0xe

    invoke-static {p0}, Lh6/d;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public h()Lh6/f;
    .registers 3

    iget-object v0, p0, Lh6/d;->d:Lh6/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    if-eqz v0, :cond_8

    return-object v0

    :cond_8
    const/16 p0, 0xa

    invoke-static {p0}, Lh6/d;->a(I)V

    throw v1

    :cond_e
    invoke-virtual {p0}, Lh6/d;->e()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p0}, Lh6/d;->d()V

    iget-object p0, p0, Lh6/d;->d:Lh6/f;

    if-eqz p0, :cond_1c

    return-object p0

    :cond_1c
    const/16 p0, 0xb

    invoke-static {p0}, Lh6/d;->a(I)V

    throw v1

    :cond_22
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "root"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .registers 1

    iget-object p0, p0, Lh6/d;->a:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public i()Lh6/c;
    .registers 2

    iget-object v0, p0, Lh6/d;->b:Lh6/c;

    if-eqz v0, :cond_d

    if-eqz v0, :cond_7

    return-object v0

    :cond_7
    const/4 p0, 0x5

    invoke-static {p0}, Lh6/d;->a(I)V

    const/4 p0, 0x0

    throw p0

    :cond_d
    new-instance v0, Lh6/c;

    invoke-direct {v0, p0}, Lh6/c;-><init>(Lh6/d;)V

    iput-object v0, p0, Lh6/d;->b:Lh6/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lh6/d;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object p0, Lh6/d;->e:Lh6/f;

    invoke-virtual {p0}, Lh6/f;->b()Ljava/lang/String;

    move-result-object p0

    goto :goto_f

    :cond_d
    iget-object p0, p0, Lh6/d;->a:Ljava/lang/String;

    :goto_f
    if-eqz p0, :cond_12

    return-object p0

    :cond_12
    const/16 p0, 0x11

    invoke-static {p0}, Lh6/d;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method
