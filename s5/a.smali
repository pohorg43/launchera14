.class public final Ls5/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static synthetic a(I)V
    .registers 8

    const/16 v0, 0x12

    if-eq p0, v0, :cond_7

    const-string v1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_9

    :cond_7
    const-string v1, "@NotNull method %s.%s must not return null"

    :goto_9
    const/4 v2, 0x2

    if-eq p0, v0, :cond_e

    const/4 v3, 0x3

    goto :goto_f

    :cond_e
    move v3, v2

    :goto_f
    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "kotlin/reflect/jvm/internal/impl/load/java/components/DescriptorResolverUtils"

    const/4 v5, 0x0

    packed-switch p0, :pswitch_data_6c

    :pswitch_17  #0x6, 0xc, 0x13
    const-string v6, "name"

    aput-object v6, v3, v5

    goto :goto_3c

    :pswitch_1c  #0x14
    const-string v6, "annotationClass"

    aput-object v6, v3, v5

    goto :goto_3c

    :pswitch_21  #0x12
    aput-object v4, v3, v5

    goto :goto_3c

    :pswitch_24  #0x5, 0xb, 0x11
    const-string v6, "overridingUtil"

    aput-object v6, v3, v5

    goto :goto_3c

    :pswitch_29  #0x4, 0xa, 0x10
    const-string v6, "errorReporter"

    aput-object v6, v3, v5

    goto :goto_3c

    :pswitch_2e  #0x3, 0x9, 0xf
    const-string v6, "classDescriptor"

    aput-object v6, v3, v5

    goto :goto_3c

    :pswitch_33  #0x2, 0x8, 0xe
    const-string v6, "membersFromCurrent"

    aput-object v6, v3, v5

    goto :goto_3c

    :pswitch_38  #0x1, 0x7, 0xd
    const-string v6, "membersFromSupertypes"

    aput-object v6, v3, v5

    :goto_3c
    const-string v5, "resolveOverrides"

    const/4 v6, 0x1

    if-eq p0, v0, :cond_44

    aput-object v4, v3, v6

    goto :goto_46

    :cond_44
    aput-object v5, v3, v6

    :goto_46
    packed-switch p0, :pswitch_data_98

    const-string v4, "resolveOverridesForNonStaticMembers"

    aput-object v4, v3, v2

    goto :goto_5a

    :pswitch_4e  #0x13, 0x14
    const-string v4, "getAnnotationParameterByName"

    aput-object v4, v3, v2

    goto :goto_5a

    :pswitch_53  #0xc, 0xd, 0xe, 0xf, 0x10, 0x11
    aput-object v5, v3, v2

    goto :goto_5a

    :pswitch_56  #0x6, 0x7, 0x8, 0x9, 0xa, 0xb
    const-string v4, "resolveOverridesForStaticMembers"

    aput-object v4, v3, v2

    :goto_5a
    :pswitch_5a  #0x12
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eq p0, v0, :cond_66

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_6b

    :cond_66
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_6b
    throw p0

    :pswitch_data_6c
    .packed-switch 0x1
        :pswitch_38  #00000001
        :pswitch_33  #00000002
        :pswitch_2e  #00000003
        :pswitch_29  #00000004
        :pswitch_24  #00000005
        :pswitch_17  #00000006
        :pswitch_38  #00000007
        :pswitch_33  #00000008
        :pswitch_2e  #00000009
        :pswitch_29  #0000000a
        :pswitch_24  #0000000b
        :pswitch_17  #0000000c
        :pswitch_38  #0000000d
        :pswitch_33  #0000000e
        :pswitch_2e  #0000000f
        :pswitch_29  #00000010
        :pswitch_24  #00000011
        :pswitch_21  #00000012
        :pswitch_17  #00000013
        :pswitch_1c  #00000014
    .end packed-switch

    :pswitch_data_98
    .packed-switch 0x6
        :pswitch_56  #00000006
        :pswitch_56  #00000007
        :pswitch_56  #00000008
        :pswitch_56  #00000009
        :pswitch_56  #0000000a
        :pswitch_56  #0000000b
        :pswitch_53  #0000000c
        :pswitch_53  #0000000d
        :pswitch_53  #0000000e
        :pswitch_53  #0000000f
        :pswitch_53  #00000010
        :pswitch_53  #00000011
        :pswitch_5a  #00000012
        :pswitch_4e  #00000013
        :pswitch_4e  #00000014
    .end packed-switch
.end method

.method public static b(Lh6/f;Li5/e;)Li5/e1;
    .registers 5

    const/4 v0, 0x0

    if-eqz p0, :cond_41

    if-eqz p1, :cond_3b

    invoke-interface {p1}, Li5/e;->i()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_11

    return-object v0

    :cond_11
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li5/d;

    invoke-interface {p1}, Li5/a;->g()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_23
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li5/e1;

    invoke-interface {v1}, Li5/l;->getName()Lh6/f;

    move-result-object v2

    invoke-virtual {v2, p0}, Lh6/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    return-object v1

    :cond_3a
    return-object v0

    :cond_3b
    const/16 p0, 0x14

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0

    :cond_41
    const/16 p0, 0x13

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0
.end method

.method public static c(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Li5/e;Lu6/q;Lk6/o;Z)Ljava/util/Collection;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Li5/b;",
            ">(",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "TD;>;",
            "Ljava/util/Collection<",
            "TD;>;",
            "Li5/e;",
            "Lu6/q;",
            "Lk6/o;",
            "Z)",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3e

    if-eqz p1, :cond_38

    if-eqz p2, :cond_32

    if-eqz p3, :cond_2c

    if-eqz p4, :cond_26

    if-eqz p5, :cond_20

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    new-instance v6, Ls5/a$a;

    invoke-direct {v6, p4, v0, p6}, Ls5/a$a;-><init>(Lu6/q;Ljava/util/Set;Z)V

    move-object v1, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lk6/o;->h(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Li5/e;Lk6/n;)V

    return-object v0

    :cond_20
    const/16 p0, 0x11

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0

    :cond_26
    const/16 p0, 0x10

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0

    :cond_2c
    const/16 p0, 0xf

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0

    :cond_32
    const/16 p0, 0xe

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0

    :cond_38
    const/16 p0, 0xd

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0

    :cond_3e
    const/16 p0, 0xc

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0
.end method

.method public static d(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Li5/e;Lu6/q;Lk6/o;)Ljava/util/Collection;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Li5/b;",
            ">(",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "TD;>;",
            "Ljava/util/Collection<",
            "TD;>;",
            "Li5/e;",
            "Lu6/q;",
            "Lk6/o;",
            ")",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_32

    if-eqz p1, :cond_2d

    if-eqz p2, :cond_28

    if-eqz p3, :cond_23

    if-eqz p4, :cond_1e

    if-eqz p5, :cond_19

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Ls5/a;->c(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Li5/e;Lu6/q;Lk6/o;Z)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :cond_19
    const/4 p0, 0x5

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0

    :cond_1e
    const/4 p0, 0x4

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0

    :cond_23
    const/4 p0, 0x3

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0

    :cond_28
    const/4 p0, 0x2

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0

    :cond_2d
    const/4 p0, 0x1

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0

    :cond_32
    const/4 p0, 0x0

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0
.end method

.method public static e(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Li5/e;Lu6/q;Lk6/o;)Ljava/util/Collection;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Li5/b;",
            ">(",
            "Lh6/f;",
            "Ljava/util/Collection<",
            "TD;>;",
            "Ljava/util/Collection<",
            "TD;>;",
            "Li5/e;",
            "Lu6/q;",
            "Lk6/o;",
            ")",
            "Ljava/util/Collection<",
            "TD;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_36

    if-eqz p1, :cond_31

    if-eqz p2, :cond_2b

    if-eqz p3, :cond_25

    if-eqz p4, :cond_1f

    if-eqz p5, :cond_19

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v1 .. v7}, Ls5/a;->c(Lh6/f;Ljava/util/Collection;Ljava/util/Collection;Li5/e;Lu6/q;Lk6/o;Z)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :cond_19
    const/16 p0, 0xb

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0

    :cond_1f
    const/16 p0, 0xa

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0

    :cond_25
    const/16 p0, 0x9

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0

    :cond_2b
    const/16 p0, 0x8

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0

    :cond_31
    const/4 p0, 0x7

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0

    :cond_36
    const/4 p0, 0x6

    invoke-static {p0}, Ls5/a;->a(I)V

    throw v0
.end method
