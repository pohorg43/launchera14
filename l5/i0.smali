.class public Ll5/i0;
.super Ll5/d;
.source ""


# instance fields
.field public final c:Li5/l;

.field public d:Ls6/g;


# direct methods
.method public constructor <init>(Li5/l;Ls6/g;Lj5/h;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    if-eqz p3, :cond_b

    sget-object v0, Lh6/h;->e:Lh6/f;

    invoke-direct {p0, p1, p2, p3, v0}, Ll5/i0;-><init>(Li5/l;Ls6/g;Lj5/h;Lh6/f;)V

    return-void

    :cond_b
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/i0;->z(I)V

    throw v0

    :cond_10
    const/4 p0, 0x0

    invoke-static {p0}, Ll5/i0;->z(I)V

    throw v0
.end method

.method public constructor <init>(Li5/l;Ls6/g;Lj5/h;Lh6/f;)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    if-eqz p2, :cond_1b

    if-eqz p3, :cond_16

    if-eqz p4, :cond_11

    invoke-direct {p0, p3, p4}, Ll5/d;-><init>(Lj5/h;Lh6/f;)V

    iput-object p1, p0, Ll5/i0;->c:Li5/l;

    iput-object p2, p0, Ll5/i0;->d:Ls6/g;

    return-void

    :cond_11
    const/4 p0, 0x6

    invoke-static {p0}, Ll5/i0;->z(I)V

    throw v0

    :cond_16
    const/4 p0, 0x5

    invoke-static {p0}, Ll5/i0;->z(I)V

    throw v0

    :cond_1b
    const/4 p0, 0x4

    invoke-static {p0}, Ll5/i0;->z(I)V

    throw v0

    :cond_20
    const/4 p0, 0x3

    invoke-static {p0}, Ll5/i0;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 9

    const/16 v0, 0x8

    const/4 v1, 0x7

    if-eq p0, v1, :cond_a

    if-eq p0, v0, :cond_a

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_c

    :cond_a
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_c
    const/4 v3, 0x2

    if-eq p0, v1, :cond_13

    if-eq p0, v0, :cond_13

    const/4 v4, 0x3

    goto :goto_14

    :cond_13
    move v4, v3

    :goto_14
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "kotlin/reflect/jvm/internal/impl/descriptors/impl/ReceiverParameterDescriptorImpl"

    const/4 v6, 0x0

    packed-switch p0, :pswitch_data_72

    :pswitch_1c  #0x3
    const-string v7, "containingDeclaration"

    aput-object v7, v4, v6

    goto :goto_3c

    :pswitch_21  #0xa
    const-string v7, "outType"

    aput-object v7, v4, v6

    goto :goto_3c

    :pswitch_26  #0x9
    const-string v7, "newOwner"

    aput-object v7, v4, v6

    goto :goto_3c

    :pswitch_2b  #0x7, 0x8
    aput-object v5, v4, v6

    goto :goto_3c

    :pswitch_2e  #0x6
    const-string v7, "name"

    aput-object v7, v4, v6

    goto :goto_3c

    :pswitch_33  #0x2, 0x5
    const-string v7, "annotations"

    aput-object v7, v4, v6

    goto :goto_3c

    :pswitch_38  #0x1, 0x4
    const-string v7, "value"

    aput-object v7, v4, v6

    :goto_3c
    const/4 v6, 0x1

    if-eq p0, v1, :cond_49

    if-eq p0, v0, :cond_44

    aput-object v5, v4, v6

    goto :goto_4d

    :cond_44
    const-string v5, "getContainingDeclaration"

    aput-object v5, v4, v6

    goto :goto_4d

    :cond_49
    const-string v5, "getValue"

    aput-object v5, v4, v6

    :goto_4d
    packed-switch p0, :pswitch_data_8a

    const-string v5, "<init>"

    aput-object v5, v4, v3

    goto :goto_5e

    :pswitch_55  #0xa
    const-string v5, "setOutType"

    aput-object v5, v4, v3

    goto :goto_5e

    :pswitch_5a  #0x9
    const-string v5, "copy"

    aput-object v5, v4, v3

    :goto_5e
    :pswitch_5e  #0x7, 0x8
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_6c

    if-eq p0, v0, :cond_6c

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_71

    :cond_6c
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_71
    throw p0

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_33  #00000002
        :pswitch_1c  #00000003
        :pswitch_38  #00000004
        :pswitch_33  #00000005
        :pswitch_2e  #00000006
        :pswitch_2b  #00000007
        :pswitch_2b  #00000008
        :pswitch_26  #00000009
        :pswitch_21  #0000000a
    .end packed-switch

    :pswitch_data_8a
    .packed-switch 0x7
        :pswitch_5e  #00000007
        :pswitch_5e  #00000008
        :pswitch_5a  #00000009
        :pswitch_55  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public b()Li5/l;
    .registers 1

    iget-object p0, p0, Ll5/i0;->c:Li5/l;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x8

    invoke-static {p0}, Ll5/i0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getValue()Ls6/g;
    .registers 1

    iget-object p0, p0, Ll5/i0;->d:Ls6/g;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x7

    invoke-static {p0}, Ll5/i0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method
