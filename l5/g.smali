.class public abstract Ll5/g;
.super Ll5/n;
.source ""

# interfaces
.implements Li5/a1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll5/g$c;
    }
.end annotation


# instance fields
.field public final e:Ly6/e2;

.field public final f:Z

.field public final g:I

.field public final h:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ly6/j1;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ly6/s0;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lx6/m;


# direct methods
.method public constructor <init>(Lx6/m;Li5/l;Lj5/h;Lh6/f;Ly6/e2;ZILi5/v0;Li5/y0;)V
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_4f

    if-eqz p2, :cond_4a

    if-eqz p3, :cond_45

    if-eqz p4, :cond_40

    if-eqz p5, :cond_3b

    if-eqz p8, :cond_36

    if-eqz p9, :cond_31

    invoke-direct {p0, p2, p3, p4, p8}, Ll5/n;-><init>(Li5/l;Lj5/h;Lh6/f;Li5/v0;)V

    iput-object p5, p0, Ll5/g;->e:Ly6/e2;

    iput-boolean p6, p0, Ll5/g;->f:Z

    iput p7, p0, Ll5/g;->g:I

    new-instance p2, Ll5/g$a;

    invoke-direct {p2, p0, p1, p9}, Ll5/g$a;-><init>(Ll5/g;Lx6/m;Li5/y0;)V

    invoke-interface {p1, p2}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Ll5/g;->h:Lx6/i;

    new-instance p2, Ll5/g$b;

    invoke-direct {p2, p0, p4}, Ll5/g$b;-><init>(Ll5/g;Lh6/f;)V

    invoke-interface {p1, p2}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p2

    iput-object p2, p0, Ll5/g;->i:Lx6/i;

    iput-object p1, p0, Ll5/g;->j:Lx6/m;

    return-void

    :cond_31
    const/4 p0, 0x6

    invoke-static {p0}, Ll5/g;->z(I)V

    throw v0

    :cond_36
    const/4 p0, 0x5

    invoke-static {p0}, Ll5/g;->z(I)V

    throw v0

    :cond_3b
    const/4 p0, 0x4

    invoke-static {p0}, Ll5/g;->z(I)V

    throw v0

    :cond_40
    const/4 p0, 0x3

    invoke-static {p0}, Ll5/g;->z(I)V

    throw v0

    :cond_45
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/g;->z(I)V

    throw v0

    :cond_4a
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/g;->z(I)V

    throw v0

    :cond_4f
    const/4 p0, 0x0

    invoke-static {p0}, Ll5/g;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 7

    packed-switch p0, :pswitch_data_88

    :pswitch_3  #0xc
    const-string v0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_8

    :pswitch_6  #0x7, 0x8, 0x9, 0xa, 0xb, 0xd, 0xe
    const-string v0, "@NotNull method %s.%s must not return null"

    :goto_8
    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_9c

    :pswitch_c  #0xc
    const/4 v2, 0x3

    goto :goto_f

    :pswitch_e  #0x7, 0x8, 0x9, 0xa, 0xb, 0xd, 0xe
    move v2, v1

    :goto_f
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor"

    const/4 v4, 0x0

    packed-switch p0, :pswitch_data_b0

    const-string v5, "storageManager"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_1c  #0xc
    const-string v5, "bounds"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_21  #0x7, 0x8, 0x9, 0xa, 0xb, 0xd, 0xe
    aput-object v3, v2, v4

    goto :goto_41

    :pswitch_24  #0x6
    const-string v5, "supertypeLoopChecker"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_29  #0x5
    const-string v5, "source"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_2e  #0x4
    const-string v5, "variance"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_33  #0x3
    const-string v5, "name"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_38  #0x2
    const-string v5, "annotations"

    aput-object v5, v2, v4

    goto :goto_41

    :pswitch_3d  #0x1
    const-string v5, "containingDeclaration"

    aput-object v5, v2, v4

    :goto_41
    const-string v4, "processBoundsWithoutCycles"

    const/4 v5, 0x1

    packed-switch p0, :pswitch_data_d0

    :pswitch_47  #0xc
    aput-object v3, v2, v5

    goto :goto_6a

    :pswitch_4a  #0xe
    const-string v3, "getStorageManager"

    aput-object v3, v2, v5

    goto :goto_6a

    :pswitch_4f  #0xd
    aput-object v4, v2, v5

    goto :goto_6a

    :pswitch_52  #0xb
    const-string v3, "getOriginal"

    aput-object v3, v2, v5

    goto :goto_6a

    :pswitch_57  #0xa
    const-string v3, "getDefaultType"

    aput-object v3, v2, v5

    goto :goto_6a

    :pswitch_5c  #0x9
    const-string v3, "getTypeConstructor"

    aput-object v3, v2, v5

    goto :goto_6a

    :pswitch_61  #0x8
    const-string v3, "getUpperBounds"

    aput-object v3, v2, v5

    goto :goto_6a

    :pswitch_66  #0x7
    const-string v3, "getVariance"

    aput-object v3, v2, v5

    :goto_6a
    packed-switch p0, :pswitch_data_e4

    const-string v3, "<init>"

    aput-object v3, v2, v1

    goto :goto_74

    :pswitch_72  #0xc
    aput-object v4, v2, v1

    :goto_74
    :pswitch_74  #0x7, 0x8, 0x9, 0xa, 0xb, 0xd, 0xe
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    packed-switch p0, :pswitch_data_f8

    :pswitch_7b  #0xc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_86

    :pswitch_81  #0x7, 0x8, 0x9, 0xa, 0xb, 0xd, 0xe
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_86
    throw p0

    nop

    :pswitch_data_88
    .packed-switch 0x7
        :pswitch_6  #00000007
        :pswitch_6  #00000008
        :pswitch_6  #00000009
        :pswitch_6  #0000000a
        :pswitch_6  #0000000b
        :pswitch_3  #0000000c
        :pswitch_6  #0000000d
        :pswitch_6  #0000000e
    .end packed-switch

    :pswitch_data_9c
    .packed-switch 0x7
        :pswitch_e  #00000007
        :pswitch_e  #00000008
        :pswitch_e  #00000009
        :pswitch_e  #0000000a
        :pswitch_e  #0000000b
        :pswitch_c  #0000000c
        :pswitch_e  #0000000d
        :pswitch_e  #0000000e
    .end packed-switch

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_3d  #00000001
        :pswitch_38  #00000002
        :pswitch_33  #00000003
        :pswitch_2e  #00000004
        :pswitch_29  #00000005
        :pswitch_24  #00000006
        :pswitch_21  #00000007
        :pswitch_21  #00000008
        :pswitch_21  #00000009
        :pswitch_21  #0000000a
        :pswitch_21  #0000000b
        :pswitch_1c  #0000000c
        :pswitch_21  #0000000d
        :pswitch_21  #0000000e
    .end packed-switch

    :pswitch_data_d0
    .packed-switch 0x7
        :pswitch_66  #00000007
        :pswitch_61  #00000008
        :pswitch_5c  #00000009
        :pswitch_57  #0000000a
        :pswitch_52  #0000000b
        :pswitch_47  #0000000c
        :pswitch_4f  #0000000d
        :pswitch_4a  #0000000e
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x7
        :pswitch_74  #00000007
        :pswitch_74  #00000008
        :pswitch_74  #00000009
        :pswitch_74  #0000000a
        :pswitch_74  #0000000b
        :pswitch_72  #0000000c
        :pswitch_74  #0000000d
        :pswitch_74  #0000000e
    .end packed-switch

    :pswitch_data_f8
    .packed-switch 0x7
        :pswitch_81  #00000007
        :pswitch_81  #00000008
        :pswitch_81  #00000009
        :pswitch_81  #0000000a
        :pswitch_81  #0000000b
        :pswitch_7b  #0000000c
        :pswitch_81  #0000000d
        :pswitch_81  #0000000e
    .end packed-switch
.end method


# virtual methods
.method public abstract D0(Ly6/l0;)V
.end method

.method public abstract E0()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation
.end method

.method public F(Li5/n;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Li5/n<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    invoke-interface {p1, p0, p2}, Li5/n;->h(Li5/a1;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public J()Lx6/m;
    .registers 1

    iget-object p0, p0, Ll5/g;->j:Lx6/m;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0xe

    invoke-static {p0}, Ll5/g;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public N()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public a()Li5/a1;
    .registers 1

    return-object p0
.end method

.method public a()Li5/h;
    .registers 1

    return-object p0
.end method

.method public a()Li5/l;
    .registers 1

    return-object p0
.end method

.method public getIndex()I
    .registers 1

    iget p0, p0, Ll5/g;->g:I

    return p0
.end method

.method public getUpperBounds()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ll5/g;->h()Ly6/j1;

    move-result-object p0

    check-cast p0, Ll5/g$c;

    invoke-virtual {p0}, Ly6/j;->o()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_d

    return-object p0

    :cond_d
    const/16 p0, 0x8

    invoke-static {p0}, Ll5/g;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getVariance()Ly6/e2;
    .registers 1

    iget-object p0, p0, Ll5/g;->e:Ly6/e2;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/4 p0, 0x7

    invoke-static {p0}, Ll5/g;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final h()Ly6/j1;
    .registers 1

    iget-object p0, p0, Ll5/g;->h:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/j1;

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    const/16 p0, 0x9

    invoke-static {p0}, Ll5/g;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public m()Ly6/s0;
    .registers 1

    iget-object p0, p0, Ll5/g;->i:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/s0;

    if-eqz p0, :cond_b

    return-object p0

    :cond_b
    const/16 p0, 0xa

    invoke-static {p0}, Ll5/g;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public u()Z
    .registers 1

    iget-boolean p0, p0, Ll5/g;->f:Z

    return p0
.end method

.method public x0()Li5/o;
    .registers 1

    return-object p0
.end method

.method public z0(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;)",
            "Ljava/util/List<",
            "Ly6/l0;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_c

    if-eqz p1, :cond_6

    return-object p1

    :cond_6
    const/16 p1, 0xd

    invoke-static {p1}, Ll5/g;->z(I)V

    throw p0

    :cond_c
    const/16 p1, 0xc

    invoke-static {p1}, Ll5/g;->z(I)V

    throw p0
.end method
