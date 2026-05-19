.class public Ll5/p$a;
.super Lr6/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final b:Lx6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/g<",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "+",
            "Li5/u0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final c:Lx6/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/g<",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "+",
            "Li5/o0;",
            ">;>;"
        }
    .end annotation
.end field

.field public final d:Lx6/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx6/i<",
            "Ljava/util/Collection<",
            "Li5/l;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic e:Ll5/p;


# direct methods
.method public constructor <init>(Ll5/p;Lx6/m;)V
    .registers 4

    iput-object p1, p0, Ll5/p$a;->e:Ll5/p;

    invoke-direct {p0}, Lr6/j;-><init>()V

    new-instance v0, Ll5/p$a$a;

    invoke-direct {v0, p0, p1}, Ll5/p$a$a;-><init>(Ll5/p$a;Ll5/p;)V

    invoke-interface {p2, v0}, Lx6/m;->h(Lkotlin/jvm/functions/Function1;)Lx6/g;

    move-result-object v0

    iput-object v0, p0, Ll5/p$a;->b:Lx6/g;

    new-instance v0, Ll5/p$a$b;

    invoke-direct {v0, p0, p1}, Ll5/p$a$b;-><init>(Ll5/p$a;Ll5/p;)V

    invoke-interface {p2, v0}, Lx6/m;->h(Lkotlin/jvm/functions/Function1;)Lx6/g;

    move-result-object v0

    iput-object v0, p0, Ll5/p$a;->c:Lx6/g;

    new-instance v0, Ll5/p$a$c;

    invoke-direct {v0, p0, p1}, Ll5/p$a$c;-><init>(Ll5/p$a;Ll5/p;)V

    invoke-interface {p2, v0}, Lx6/m;->c(Lkotlin/jvm/functions/Function0;)Lx6/i;

    move-result-object p1

    iput-object p1, p0, Ll5/p$a;->d:Lx6/i;

    return-void
.end method

.method public static synthetic h(I)V
    .registers 14

    const/16 v0, 0xc

    const/16 v1, 0x9

    const/4 v2, 0x7

    const/4 v3, 0x3

    if-eq p0, v3, :cond_14

    if-eq p0, v2, :cond_14

    if-eq p0, v1, :cond_14

    if-eq p0, v0, :cond_14

    packed-switch p0, :pswitch_data_ca

    const-string v4, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_16

    :cond_14
    :pswitch_14  #0xf, 0x10, 0x11, 0x12, 0x13
    const-string v4, "@NotNull method %s.%s must not return null"

    :goto_16
    const/4 v5, 0x2

    if-eq p0, v3, :cond_24

    if-eq p0, v2, :cond_24

    if-eq p0, v1, :cond_24

    if-eq p0, v0, :cond_24

    packed-switch p0, :pswitch_data_d8

    move v6, v3

    goto :goto_25

    :cond_24
    :pswitch_24  #0xf, 0x10, 0x11, 0x12, 0x13
    move v6, v5

    :goto_25
    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope"

    const/4 v8, 0x0

    packed-switch p0, :pswitch_data_e6

    const-string v9, "storageManager"

    aput-object v9, v6, v8

    goto :goto_52

    :pswitch_32  #0x14
    const-string v9, "p"

    aput-object v9, v6, v8

    goto :goto_52

    :pswitch_37  #0xe
    const-string v9, "nameFilter"

    aput-object v9, v6, v8

    goto :goto_52

    :pswitch_3c  #0xd
    const-string v9, "kindFilter"

    aput-object v9, v6, v8

    goto :goto_52

    :pswitch_41  #0xb
    const-string v9, "fromSupertypes"

    aput-object v9, v6, v8

    goto :goto_52

    :pswitch_46  #0x3, 0x7, 0x9, 0xc, 0xf, 0x10, 0x11, 0x12, 0x13
    aput-object v7, v6, v8

    goto :goto_52

    :pswitch_49  #0x2, 0x6
    const-string v9, "location"

    aput-object v9, v6, v8

    goto :goto_52

    :pswitch_4e  #0x1, 0x4, 0x5, 0x8, 0xa
    const-string v9, "name"

    aput-object v9, v6, v8

    :goto_52
    const-string v8, "getContributedDescriptors"

    const-string v9, "resolveFakeOverrides"

    const-string v10, "getContributedFunctions"

    const-string v11, "getContributedVariables"

    const/4 v12, 0x1

    if-eq p0, v3, :cond_8b

    if-eq p0, v2, :cond_88

    if-eq p0, v1, :cond_83

    if-eq p0, v0, :cond_80

    packed-switch p0, :pswitch_data_112

    aput-object v7, v6, v12

    goto :goto_8d

    :pswitch_69  #0x13
    const-string v7, "getVariableNames"

    aput-object v7, v6, v12

    goto :goto_8d

    :pswitch_6e  #0x12
    const-string v7, "getClassifierNames"

    aput-object v7, v6, v12

    goto :goto_8d

    :pswitch_73  #0x11
    const-string v7, "getFunctionNames"

    aput-object v7, v6, v12

    goto :goto_8d

    :pswitch_78  #0x10
    const-string v7, "computeAllDeclarations"

    aput-object v7, v6, v12

    goto :goto_8d

    :pswitch_7d  #0xf
    aput-object v8, v6, v12

    goto :goto_8d

    :cond_80
    aput-object v9, v6, v12

    goto :goto_8d

    :cond_83
    const-string v7, "getSupertypeScope"

    aput-object v7, v6, v12

    goto :goto_8d

    :cond_88
    aput-object v10, v6, v12

    goto :goto_8d

    :cond_8b
    aput-object v11, v6, v12

    :goto_8d
    packed-switch p0, :pswitch_data_120

    const-string v7, "<init>"

    aput-object v7, v6, v5

    goto :goto_af

    :pswitch_95  #0x14
    const-string v7, "printScopeStructure"

    aput-object v7, v6, v5

    goto :goto_af

    :pswitch_9a  #0xd, 0xe
    aput-object v8, v6, v5

    goto :goto_af

    :pswitch_9d  #0xa, 0xb
    aput-object v9, v6, v5

    goto :goto_af

    :pswitch_a0  #0x8
    const-string v7, "computeFunctions"

    aput-object v7, v6, v5

    goto :goto_af

    :pswitch_a5  #0x5, 0x6
    aput-object v10, v6, v5

    goto :goto_af

    :pswitch_a8  #0x4
    const-string v7, "computeProperties"

    aput-object v7, v6, v5

    goto :goto_af

    :pswitch_ad  #0x1, 0x2
    aput-object v11, v6, v5

    :goto_af
    :pswitch_af  #0x3, 0x7, 0x9, 0xc, 0xf, 0x10, 0x11, 0x12, 0x13
    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    if-eq p0, v3, :cond_c4

    if-eq p0, v2, :cond_c4

    if-eq p0, v1, :cond_c4

    if-eq p0, v0, :cond_c4

    packed-switch p0, :pswitch_data_14c

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_c9

    :cond_c4
    :pswitch_c4  #0xf, 0x10, 0x11, 0x12, 0x13
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_c9
    throw p0

    :pswitch_data_ca
    .packed-switch 0xf
        :pswitch_14  #0000000f
        :pswitch_14  #00000010
        :pswitch_14  #00000011
        :pswitch_14  #00000012
        :pswitch_14  #00000013
    .end packed-switch

    :pswitch_data_d8
    .packed-switch 0xf
        :pswitch_24  #0000000f
        :pswitch_24  #00000010
        :pswitch_24  #00000011
        :pswitch_24  #00000012
        :pswitch_24  #00000013
    .end packed-switch

    :pswitch_data_e6
    .packed-switch 0x1
        :pswitch_4e  #00000001
        :pswitch_49  #00000002
        :pswitch_46  #00000003
        :pswitch_4e  #00000004
        :pswitch_4e  #00000005
        :pswitch_49  #00000006
        :pswitch_46  #00000007
        :pswitch_4e  #00000008
        :pswitch_46  #00000009
        :pswitch_4e  #0000000a
        :pswitch_41  #0000000b
        :pswitch_46  #0000000c
        :pswitch_3c  #0000000d
        :pswitch_37  #0000000e
        :pswitch_46  #0000000f
        :pswitch_46  #00000010
        :pswitch_46  #00000011
        :pswitch_46  #00000012
        :pswitch_46  #00000013
        :pswitch_32  #00000014
    .end packed-switch

    :pswitch_data_112
    .packed-switch 0xf
        :pswitch_7d  #0000000f
        :pswitch_78  #00000010
        :pswitch_73  #00000011
        :pswitch_6e  #00000012
        :pswitch_69  #00000013
    .end packed-switch

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_ad  #00000001
        :pswitch_ad  #00000002
        :pswitch_af  #00000003
        :pswitch_a8  #00000004
        :pswitch_a5  #00000005
        :pswitch_a5  #00000006
        :pswitch_af  #00000007
        :pswitch_a0  #00000008
        :pswitch_af  #00000009
        :pswitch_9d  #0000000a
        :pswitch_9d  #0000000b
        :pswitch_af  #0000000c
        :pswitch_9a  #0000000d
        :pswitch_9a  #0000000e
        :pswitch_af  #0000000f
        :pswitch_af  #00000010
        :pswitch_af  #00000011
        :pswitch_af  #00000012
        :pswitch_af  #00000013
        :pswitch_95  #00000014
    .end packed-switch

    :pswitch_data_14c
    .packed-switch 0xf
        :pswitch_c4  #0000000f
        :pswitch_c4  #00000010
        :pswitch_c4  #00000011
        :pswitch_c4  #00000012
        :pswitch_c4  #00000013
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ll5/p$a;->e:Ll5/p;

    iget-object p0, p0, Ll5/p;->j:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_d

    return-object p0

    :cond_d
    const/16 p0, 0x11

    invoke-static {p0}, Ll5/p$a;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public b(Lh6/f;Lq5/b;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Lq5/b;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Li5/u0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_17

    iget-object p0, p0, Ll5/p$a;->b:Lx6/g;

    check-cast p0, Lx6/e$m;

    invoke-virtual {p0, p1}, Lx6/e$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_12

    return-object p0

    :cond_12
    const/4 p0, 0x7

    invoke-static {p0}, Ll5/p$a;->h(I)V

    throw v0

    :cond_17
    const/4 p0, 0x6

    invoke-static {p0}, Ll5/p$a;->h(I)V

    throw v0

    :cond_1c
    const/4 p0, 0x5

    invoke-static {p0}, Ll5/p$a;->h(I)V

    throw v0
.end method

.method public c(Lh6/f;Lq5/b;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh6/f;",
            "Lq5/b;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Li5/o0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_17

    iget-object p0, p0, Ll5/p$a;->c:Lx6/g;

    check-cast p0, Lx6/e$m;

    invoke-virtual {p0, p1}, Lx6/e$m;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_12

    return-object p0

    :cond_12
    const/4 p0, 0x3

    invoke-static {p0}, Ll5/p$a;->h(I)V

    throw v0

    :cond_17
    const/4 p0, 0x2

    invoke-static {p0}, Ll5/p$a;->h(I)V

    throw v0

    :cond_1c
    const/4 p0, 0x1

    invoke-static {p0}, Ll5/p$a;->h(I)V

    throw v0
.end method

.method public d()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Ll5/p$a;->e:Ll5/p;

    iget-object p0, p0, Ll5/p;->j:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    if-eqz p0, :cond_d

    return-object p0

    :cond_d
    const/16 p0, 0x13

    invoke-static {p0}, Ll5/p$a;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public e(Lr6/d;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr6/d;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lh6/f;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Li5/l;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1c

    if-eqz p2, :cond_16

    iget-object p0, p0, Ll5/p$a;->d:Lx6/i;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    if-eqz p0, :cond_10

    return-object p0

    :cond_10
    const/16 p0, 0xf

    invoke-static {p0}, Ll5/p$a;->h(I)V

    throw v0

    :cond_16
    const/16 p0, 0xe

    invoke-static {p0}, Ll5/p$a;->h(I)V

    throw v0

    :cond_1c
    const/16 p0, 0xd

    invoke-static {p0}, Ll5/p$a;->h(I)V

    throw v0
.end method

.method public g()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lh6/f;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/16 p0, 0x12

    invoke-static {p0}, Ll5/p$a;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final i()Lr6/i;
    .registers 1

    iget-object p0, p0, Ll5/p$a;->e:Ll5/p;

    invoke-virtual {p0}, Ll5/p;->h()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly6/l0;

    invoke-virtual {p0}, Ly6/l0;->l()Lr6/i;

    move-result-object p0

    if-eqz p0, :cond_1b

    return-object p0

    :cond_1b
    const/16 p0, 0x9

    invoke-static {p0}, Ll5/p$a;->h(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j(Lh6/f;Ljava/util/Collection;)Ljava/util/Collection;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Li5/b;",
            ">(",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "+TD;>;)",
            "Ljava/util/Collection<",
            "+TD;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_23

    if-eqz p2, :cond_1d

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sget-object v1, Lk6/o;->f:Lk6/o;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    iget-object v5, p0, Ll5/p$a;->e:Ll5/p;

    new-instance v6, Ll5/p$a$d;

    invoke-direct {v6, p0, v0}, Ll5/p$a$d;-><init>(Ll5/p$a;Ljava/util/Set;)V

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Lk6/o;->h(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Li5/e;Lk6/n;)V

    return-object v0

    :cond_1d
    const/16 p0, 0xb

    invoke-static {p0}, Ll5/p$a;->h(I)V

    throw v0

    :cond_23
    const/16 p0, 0xa

    invoke-static {p0}, Ll5/p$a;->h(I)V

    throw v0
.end method
