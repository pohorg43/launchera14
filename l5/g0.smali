.class public Ll5/g0;
.super Ll5/e0;
.source ""

# interfaces
.implements Li5/p0;


# instance fields
.field public m:Ly6/l0;

.field public final n:Li5/p0;


# direct methods
.method public constructor <init>(Li5/o0;Lj5/h;Li5/d0;Li5/t;ZZZLi5/b$a;Li5/p0;Li5/v0;)V
    .registers 23

    const/4 v0, 0x0

    if-eqz p2, :cond_57

    if-eqz p3, :cond_52

    if-eqz p4, :cond_4d

    if-eqz p8, :cond_48

    if-eqz p10, :cond_43

    const-string v0, "<get-"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Li5/l;->getName()Lh6/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lh6/f;->h(Ljava/lang/String;)Lh6/f;

    move-result-object v6

    move-object v1, p0

    move-object v2, p3

    move-object/from16 v3, p4

    move-object v4, p1

    move-object v5, p2

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Ll5/e0;-><init>(Li5/d0;Li5/t;Li5/o0;Lj5/h;Lh6/f;ZZZLi5/b$a;Li5/v0;)V

    if-eqz p9, :cond_3e

    move-object v1, p0

    move-object/from16 v0, p9

    goto :goto_40

    :cond_3e
    move-object v0, p0

    move-object v1, v0

    :goto_40
    iput-object v0, v1, Ll5/g0;->n:Li5/p0;

    return-void

    :cond_43
    const/4 v1, 0x5

    invoke-static {v1}, Ll5/g0;->z(I)V

    throw v0

    :cond_48
    const/4 v1, 0x4

    invoke-static {v1}, Ll5/g0;->z(I)V

    throw v0

    :cond_4d
    const/4 v1, 0x3

    invoke-static {v1}, Ll5/g0;->z(I)V

    throw v0

    :cond_52
    const/4 v1, 0x2

    invoke-static {v1}, Ll5/g0;->z(I)V

    throw v0

    :cond_57
    const/4 v1, 0x1

    invoke-static {v1}, Ll5/g0;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 10

    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

    if-eq p0, v2, :cond_d

    if-eq p0, v1, :cond_d

    if-eq p0, v0, :cond_d

    const-string v3, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_f

    :cond_d
    const-string v3, "@NotNull method %s.%s must not return null"

    :goto_f
    const/4 v4, 0x2

    if-eq p0, v2, :cond_18

    if-eq p0, v1, :cond_18

    if-eq p0, v0, :cond_18

    const/4 v5, 0x3

    goto :goto_19

    :cond_18
    move v5, v4

    :goto_19
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_7a

    const-string v8, "correspondingProperty"

    aput-object v8, v5, v7

    goto :goto_41

    :pswitch_26  #0x6, 0x7, 0x8
    aput-object v6, v5, v7

    goto :goto_41

    :pswitch_29  #0x5
    const-string v8, "source"

    aput-object v8, v5, v7

    goto :goto_41

    :pswitch_2e  #0x4
    const-string v8, "kind"

    aput-object v8, v5, v7

    goto :goto_41

    :pswitch_33  #0x3
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_41

    :pswitch_38  #0x2
    const-string v8, "modality"

    aput-object v8, v5, v7

    goto :goto_41

    :pswitch_3d  #0x1
    const-string v8, "annotations"

    aput-object v8, v5, v7

    :goto_41
    const/4 v7, 0x1

    if-eq p0, v2, :cond_55

    if-eq p0, v1, :cond_50

    if-eq p0, v0, :cond_4b

    aput-object v6, v5, v7

    goto :goto_59

    :cond_4b
    const-string v6, "getOriginal"

    aput-object v6, v5, v7

    goto :goto_59

    :cond_50
    const-string v6, "getValueParameters"

    aput-object v6, v5, v7

    goto :goto_59

    :cond_55
    const-string v6, "getOverriddenDescriptors"

    aput-object v6, v5, v7

    :goto_59
    if-eq p0, v2, :cond_63

    if-eq p0, v1, :cond_63

    if-eq p0, v0, :cond_63

    const-string v6, "<init>"

    aput-object v6, v5, v4

    :cond_63
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eq p0, v2, :cond_73

    if-eq p0, v1, :cond_73

    if-eq p0, v0, :cond_73

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_78

    :cond_73
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_78
    throw p0

    nop

    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_3d  #00000001
        :pswitch_38  #00000002
        :pswitch_33  #00000003
        :pswitch_2e  #00000004
        :pswitch_29  #00000005
        :pswitch_26  #00000006
        :pswitch_26  #00000007
        :pswitch_26  #00000008
    .end packed-switch
.end method


# virtual methods
.method public E0()Li5/p0;
    .registers 1

    iget-object p0, p0, Ll5/g0;->n:Li5/p0;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const/16 p0, 0x8

    invoke-static {p0}, Ll5/g0;->z(I)V

    const/4 p0, 0x0

    throw p0
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

    invoke-interface {p1, p0, p2}, Li5/n;->m(Li5/p0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public F0(Ly6/l0;)V
    .registers 2

    if-nez p1, :cond_a

    invoke-virtual {p0}, Ll5/e0;->T()Li5/o0;

    move-result-object p1

    invoke-interface {p1}, Li5/d1;->getType()Ly6/l0;

    move-result-object p1

    :cond_a
    iput-object p1, p0, Ll5/g0;->m:Ly6/l0;

    return-void
.end method

.method public bridge synthetic a()Li5/a;
    .registers 1

    invoke-virtual {p0}, Ll5/g0;->E0()Li5/p0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/b;
    .registers 1

    invoke-virtual {p0}, Ll5/g0;->E0()Li5/p0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/l;
    .registers 1

    invoke-virtual {p0}, Ll5/g0;->E0()Li5/p0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic a()Li5/x;
    .registers 1

    invoke-virtual {p0}, Ll5/g0;->E0()Li5/p0;

    move-result-object p0

    return-object p0
.end method

.method public d()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Li5/p0;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ll5/e0;->D0(Z)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public g()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li5/e1;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    :cond_7
    const/4 p0, 0x7

    invoke-static {p0}, Ll5/g0;->z(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getReturnType()Ly6/l0;
    .registers 1

    iget-object p0, p0, Ll5/g0;->m:Ly6/l0;

    return-object p0
.end method

.method public bridge synthetic x0()Li5/o;
    .registers 1

    invoke-virtual {p0}, Ll5/g0;->E0()Li5/p0;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic z0()Li5/n0;
    .registers 1

    invoke-virtual {p0}, Ll5/g0;->E0()Li5/p0;

    move-result-object p0

    return-object p0
.end method
