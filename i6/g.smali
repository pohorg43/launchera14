.class public final Li6/g;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FieldDescriptorType::",
        "Li6/g$a<",
        "TFieldDescriptorType;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Li6/g;


# instance fields
.field public final a:Li6/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li6/u<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Li6/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Li6/g;-><init>(Z)V

    sput-object v0, Li6/g;->d:Li6/g;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Li6/g;->c:Z

    sget v0, Li6/u;->f:I

    new-instance v0, Li6/t;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Li6/t;-><init>(I)V

    iput-object v0, p0, Li6/g;->a:Li6/u;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Li6/g;->c:Z

    sget v0, Li6/u;->f:I

    new-instance v0, Li6/t;

    invoke-direct {v0, p1}, Li6/t;-><init>(I)V

    iput-object v0, p0, Li6/g;->a:Li6/u;

    invoke-virtual {p0}, Li6/g;->i()V

    return-void
.end method

.method public static d(Li6/y;Ljava/lang/Object;)I
    .registers 5

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/16 v2, 0x8

    packed-switch p0, :pswitch_data_f8

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_13  #0x11
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    invoke-static {p0, p1}, Li6/e;->h(J)I

    move-result p0

    return p0

    :pswitch_24  #0x10
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    shl-int/lit8 p1, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p1

    invoke-static {p0}, Li6/e;->g(I)I

    move-result p0

    return p0

    :pswitch_34  #0xf
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    return v2

    :pswitch_3a  #0xe
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    return v1

    :pswitch_40  #0xd
    instance-of p0, p1, Li6/i$a;

    if-eqz p0, :cond_4f

    check-cast p1, Li6/i$a;

    invoke-interface {p1}, Li6/i$a;->getNumber()I

    move-result p0

    invoke-static {p0}, Li6/e;->d(I)I

    move-result p0

    return p0

    :cond_4f
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Li6/e;->d(I)I

    move-result p0

    return p0

    :pswitch_5a  #0xc
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Li6/e;->g(I)I

    move-result p0

    return p0

    :pswitch_65  #0xb
    instance-of p0, p1, Li6/c;

    if-eqz p0, :cond_70

    check-cast p1, Li6/c;

    invoke-static {p1}, Li6/e;->a(Li6/c;)I

    move-result p0

    return p0

    :cond_70
    check-cast p1, [B

    array-length p0, p1

    invoke-static {p0}, Li6/e;->g(I)I

    move-result p0

    array-length p1, p1

    add-int/2addr p0, p1

    return p0

    :pswitch_7a  #0xa
    instance-of p0, p1, Li6/k;

    if-eqz p0, :cond_92

    check-cast p1, Li6/k;

    iget-boolean p0, p1, Li6/l;->a:Z

    if-eqz p0, :cond_90

    iget-object p0, p1, Li6/l;->b:Li6/p;

    invoke-interface {p0}, Li6/p;->getSerializedSize()I

    move-result p0

    invoke-static {p0}, Li6/e;->g(I)I

    move-result p1

    add-int/2addr p1, p0

    return p1

    :cond_90
    const/4 p0, 0x0

    throw p0

    :cond_92
    check-cast p1, Li6/p;

    invoke-static {p1}, Li6/e;->f(Li6/p;)I

    move-result p0

    return p0

    :pswitch_99  #0x9
    check-cast p1, Li6/p;

    invoke-interface {p1}, Li6/p;->getSerializedSize()I

    move-result p0

    return p0

    :pswitch_a0  #0x8
    check-cast p1, Ljava/lang/String;

    :try_start_a2
    const-string p0, "UTF-8"

    invoke-virtual {p1, p0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    array-length p1, p0

    invoke-static {p1}, Li6/e;->g(I)I

    move-result p1

    array-length p0, p0
    :try_end_ae
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a2 .. :try_end_ae} :catch_b0

    add-int/2addr p1, p0

    return p1

    :catch_b0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "UTF-8 not supported."

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_b9  #0x7
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    return v0

    :pswitch_bf  #0x6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    return v1

    :pswitch_c5  #0x5
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    return v2

    :pswitch_cb  #0x4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Li6/e;->d(I)I

    move-result p0

    return p0

    :pswitch_d6  #0x3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Li6/e;->h(J)I

    move-result p0

    return p0

    :pswitch_e1  #0x2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Li6/e;->h(J)I

    move-result p0

    return p0

    :pswitch_ec  #0x1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    return v1

    :pswitch_f2  #0x0
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    return v2

    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_f2  #00000000
        :pswitch_ec  #00000001
        :pswitch_e1  #00000002
        :pswitch_d6  #00000003
        :pswitch_cb  #00000004
        :pswitch_c5  #00000005
        :pswitch_bf  #00000006
        :pswitch_b9  #00000007
        :pswitch_a0  #00000008
        :pswitch_99  #00000009
        :pswitch_7a  #0000000a
        :pswitch_65  #0000000b
        :pswitch_5a  #0000000c
        :pswitch_40  #0000000d
        :pswitch_3a  #0000000e
        :pswitch_34  #0000000f
        :pswitch_24  #00000010
        :pswitch_13  #00000011
    .end packed-switch
.end method

.method public static e(Li6/g$a;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li6/g$a<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    invoke-interface {p0}, Li6/g$a;->getLiteType()Li6/y;

    move-result-object v0

    invoke-interface {p0}, Li6/g$a;->getNumber()I

    move-result v1

    invoke-interface {p0}, Li6/g$a;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {p0}, Li6/g$a;->isPacked()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_36

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Li6/g;->d(Li6/y;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1b

    :cond_2b
    invoke-static {v1}, Li6/e;->i(I)I

    move-result p0

    add-int/2addr p0, v2

    invoke-static {v2}, Li6/e;->g(I)I

    move-result p1

    :goto_34
    add-int/2addr p1, p0

    return p1

    :cond_36
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_57

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1}, Li6/e;->i(I)I

    move-result v3

    sget-object v4, Li6/y;->l:Li6/y;

    if-ne v0, v4, :cond_50

    mul-int/lit8 v3, v3, 0x2

    :cond_50
    invoke-static {v0, p1}, Li6/g;->d(Li6/y;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v3

    add-int/2addr v2, p1

    goto :goto_3c

    :cond_57
    return v2

    :cond_58
    invoke-static {v1}, Li6/e;->i(I)I

    move-result p0

    sget-object v1, Li6/y;->l:Li6/y;

    if-ne v0, v1, :cond_62

    mul-int/lit8 p0, p0, 0x2

    :cond_62
    invoke-static {v0, p1}, Li6/g;->d(Li6/y;Ljava/lang/Object;)I

    move-result p1

    goto :goto_34
.end method

.method public static g(Li6/y;Z)I
    .registers 2

    if-eqz p1, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    iget p0, p0, Li6/y;->b:I

    return p0
.end method

.method public static k(Li6/d;Li6/y;Z)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_116

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_10  #0x11
    invoke-virtual {p0}, Li6/d;->m()J

    move-result-wide p0

    ushr-long v0, p0, v0

    const-wide/16 v2, 0x1

    and-long/2addr p0, v2

    neg-long p0, p0

    xor-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_20  #0x10
    invoke-virtual {p0}, Li6/d;->l()I

    move-result p0

    ushr-int/lit8 p1, p0, 0x1

    and-int/2addr p0, v0

    neg-int p0, p0

    xor-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2e  #0xf
    invoke-virtual {p0}, Li6/d;->k()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_37  #0xe
    invoke-virtual {p0}, Li6/d;->j()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_40  #0xd
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle enums."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_48  #0xc
    invoke-virtual {p0}, Li6/d;->l()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_51  #0xb
    invoke-virtual {p0}, Li6/d;->f()Li6/c;

    move-result-object p0

    return-object p0

    :pswitch_56  #0xa
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_5e  #0x9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_66  #0x8
    const-string p1, ""

    const-string v0, "UTF-8"

    if-eqz p2, :cond_9f

    invoke-virtual {p0}, Li6/d;->l()I

    move-result p2

    iget v1, p0, Li6/d;->e:I

    iget v2, p0, Li6/d;->c:I

    sub-int/2addr v2, v1

    if-gt p2, v2, :cond_80

    if-lez p2, :cond_80

    iget-object p1, p0, Li6/d;->a:[B

    add-int v2, v1, p2

    iput v2, p0, Li6/d;->e:I

    goto :goto_88

    :cond_80
    if-nez p2, :cond_83

    goto :goto_96

    :cond_83
    invoke-virtual {p0, p2}, Li6/d;->i(I)[B

    move-result-object p1

    const/4 v1, 0x0

    :goto_88
    add-int p0, v1, p2

    invoke-static {p1, v1, p0}, Le2/c;->e([BII)Z

    move-result p0

    if-eqz p0, :cond_97

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, v1, p2, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object p1, p0

    :goto_96
    return-object p1

    :cond_97
    new-instance p0, Li6/j;

    const-string p1, "Protocol message had invalid UTF-8."

    invoke-direct {p0, p1}, Li6/j;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9f
    invoke-virtual {p0}, Li6/d;->l()I

    move-result p2

    iget v1, p0, Li6/d;->c:I

    iget v2, p0, Li6/d;->e:I

    sub-int/2addr v1, v2

    if-gt p2, v1, :cond_b9

    if-lez p2, :cond_b9

    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Li6/d;->a:[B

    invoke-direct {p1, v1, v2, p2, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget v0, p0, Li6/d;->e:I

    add-int/2addr v0, p2

    iput v0, p0, Li6/d;->e:I

    goto :goto_c5

    :cond_b9
    if-nez p2, :cond_bc

    goto :goto_c5

    :cond_bc
    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0, p2}, Li6/d;->i(I)[B

    move-result-object p0

    invoke-direct {p1, p0, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    :goto_c5
    return-object p1

    :pswitch_c6  #0x7
    invoke-virtual {p0}, Li6/d;->e()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_cf  #0x6
    invoke-virtual {p0}, Li6/d;->j()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_d8  #0x5
    invoke-virtual {p0}, Li6/d;->k()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_e1  #0x4
    invoke-virtual {p0}, Li6/d;->l()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_ea  #0x3
    invoke-virtual {p0}, Li6/d;->m()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_f3  #0x2
    invoke-virtual {p0}, Li6/d;->m()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_fc  #0x1
    invoke-virtual {p0}, Li6/d;->j()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_109  #0x0
    invoke-virtual {p0}, Li6/d;->k()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_109  #00000000
        :pswitch_fc  #00000001
        :pswitch_f3  #00000002
        :pswitch_ea  #00000003
        :pswitch_e1  #00000004
        :pswitch_d8  #00000005
        :pswitch_cf  #00000006
        :pswitch_c6  #00000007
        :pswitch_66  #00000008
        :pswitch_5e  #00000009
        :pswitch_56  #0000000a
        :pswitch_51  #0000000b
        :pswitch_48  #0000000c
        :pswitch_40  #0000000d
        :pswitch_37  #0000000e
        :pswitch_2e  #0000000f
        :pswitch_20  #00000010
        :pswitch_10  #00000011
    .end packed-switch
.end method

.method public static m(Li6/y;Ljava/lang/Object;)V
    .registers 3

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Li6/y;->a:Li6/z;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_48

    goto :goto_3c

    :pswitch_e  #0x8
    instance-of p0, p1, Li6/p;

    if-nez p0, :cond_28

    instance-of p0, p1, Li6/k;

    if-eqz p0, :cond_3c

    goto :goto_28

    :pswitch_17  #0x7
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_28

    instance-of p0, p1, Li6/i$a;

    if-eqz p0, :cond_3c

    goto :goto_28

    :pswitch_20  #0x6
    instance-of p0, p1, Li6/c;

    if-nez p0, :cond_28

    instance-of p0, p1, [B

    if-eqz p0, :cond_3c

    :cond_28
    :goto_28
    const/4 p0, 0x1

    move v0, p0

    goto :goto_3c

    :pswitch_2b  #0x5
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_3c

    :pswitch_2e  #0x4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_3c

    :pswitch_31  #0x3
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_3c

    :pswitch_34  #0x2
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_3c

    :pswitch_37  #0x1
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_3c

    :pswitch_3a  #0x0
    instance-of v0, p1, Ljava/lang/Integer;

    :cond_3c
    :goto_3c
    if-eqz v0, :cond_3f

    return-void

    :cond_3f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_3a  #00000000
        :pswitch_37  #00000001
        :pswitch_34  #00000002
        :pswitch_31  #00000003
        :pswitch_2e  #00000004
        :pswitch_2b  #00000005
        :pswitch_20  #00000006
        :pswitch_17  #00000007
        :pswitch_e  #00000008
    .end packed-switch
.end method

.method public static n(Li6/e;Li6/y;ILjava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Li6/y;->l:Li6/y;

    if-ne p1, v0, :cond_16

    check-cast p3, Li6/p;

    shl-int/lit8 p1, p2, 0x3

    or-int/lit8 p2, p1, 0x3

    invoke-virtual {p0, p2}, Li6/e;->y(I)V

    invoke-interface {p3, p0}, Li6/p;->b(Li6/e;)V

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, p1}, Li6/e;->y(I)V

    goto :goto_24

    :cond_16
    const/4 v0, 0x0

    invoke-static {p1, v0}, Li6/g;->g(Li6/y;Z)I

    move-result v0

    shl-int/lit8 p2, p2, 0x3

    or-int/2addr p2, v0

    invoke-virtual {p0, p2}, Li6/e;->y(I)V

    invoke-static {p0, p1, p3}, Li6/g;->o(Li6/e;Li6/y;Ljava/lang/Object;)V

    :goto_24
    return-void
.end method

.method public static o(Li6/e;Li6/y;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_f2

    goto/16 :goto_f0

    :pswitch_9  #0x11
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/4 v0, 0x1

    shl-long v0, p1, v0

    const/16 v2, 0x3f

    shr-long/2addr p1, v2

    xor-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Li6/e;->z(J)V

    goto/16 :goto_f0

    :pswitch_1b  #0x10
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    shl-int/lit8 p2, p1, 0x1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Li6/e;->y(I)V

    goto/16 :goto_f0

    :pswitch_2b  #0xf
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Li6/e;->x(J)V

    goto/16 :goto_f0

    :pswitch_36  #0xe
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Li6/e;->w(I)V

    goto/16 :goto_f0

    :pswitch_41  #0xd
    instance-of p1, p2, Li6/i$a;

    if-eqz p1, :cond_50

    check-cast p2, Li6/i$a;

    invoke-interface {p2}, Li6/i$a;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Li6/e;->o(I)V

    goto/16 :goto_f0

    :cond_50
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Li6/e;->o(I)V

    goto/16 :goto_f0

    :pswitch_5b  #0xc
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Li6/e;->y(I)V

    goto/16 :goto_f0

    :pswitch_66  #0xb
    instance-of p1, p2, Li6/c;

    if-eqz p1, :cond_71

    check-cast p2, Li6/c;

    invoke-virtual {p0, p2}, Li6/e;->m(Li6/c;)V

    goto/16 :goto_f0

    :cond_71
    check-cast p2, [B

    array-length p1, p2

    invoke-virtual {p0, p1}, Li6/e;->y(I)V

    invoke-virtual {p0, p2}, Li6/e;->v([B)V

    goto/16 :goto_f0

    :pswitch_7c  #0xa
    check-cast p2, Li6/p;

    invoke-virtual {p0, p2}, Li6/e;->s(Li6/p;)V

    goto/16 :goto_f0

    :pswitch_83  #0x9
    check-cast p2, Li6/p;

    invoke-interface {p2, p0}, Li6/p;->b(Li6/e;)V

    goto :goto_f0

    :pswitch_89  #0x8
    check-cast p2, Ljava/lang/String;

    const-string p1, "UTF-8"

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p2, p1

    invoke-virtual {p0, p2}, Li6/e;->y(I)V

    invoke-virtual {p0, p1}, Li6/e;->v([B)V

    goto :goto_f0

    :pswitch_99  #0x7
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Li6/e;->t(I)V

    goto :goto_f0

    :pswitch_a3  #0x6
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Li6/e;->w(I)V

    goto :goto_f0

    :pswitch_ad  #0x5
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Li6/e;->x(J)V

    goto :goto_f0

    :pswitch_b7  #0x4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Li6/e;->q(I)V

    goto :goto_f0

    :pswitch_c1  #0x3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Li6/e;->z(J)V

    goto :goto_f0

    :pswitch_cb  #0x2
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Li6/e;->z(J)V

    goto :goto_f0

    :pswitch_d5  #0x1
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Li6/e;->w(I)V

    goto :goto_f0

    :pswitch_e3  #0x0
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Li6/e;->x(J)V

    :goto_f0
    return-void

    nop

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_e3  #00000000
        :pswitch_d5  #00000001
        :pswitch_cb  #00000002
        :pswitch_c1  #00000003
        :pswitch_b7  #00000004
        :pswitch_ad  #00000005
        :pswitch_a3  #00000006
        :pswitch_99  #00000007
        :pswitch_89  #00000008
        :pswitch_83  #00000009
        :pswitch_7c  #0000000a
        :pswitch_66  #0000000b
        :pswitch_5b  #0000000c
        :pswitch_41  #0000000d
        :pswitch_36  #0000000e
        :pswitch_2b  #0000000f
        :pswitch_1b  #00000010
        :pswitch_9  #00000011
    .end packed-switch
.end method


# virtual methods
.method public a(Li6/g$a;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Li6/h$e;

    iget-boolean v0, v0, Li6/h$e;->d:Z

    if-eqz v0, :cond_26

    move-object v0, p1

    check-cast v0, Li6/h$e;

    iget-object v0, v0, Li6/h$e;->c:Li6/y;

    invoke-static {v0, p2}, Li6/g;->m(Li6/y;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Li6/g;->f(Li6/g$a;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_20

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Li6/g;->a:Li6/u;

    invoke-virtual {p0, p1, v0}, Li6/u;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_20
    check-cast v0, Ljava/util/List;

    :goto_22
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Li6/g;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li6/g<",
            "TFieldDescriptorType;>;"
        }
    .end annotation

    new-instance v0, Li6/g;

    invoke-direct {v0}, Li6/g;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Li6/g;->a:Li6/u;

    invoke-virtual {v2}, Li6/u;->e()I

    move-result v2

    if-ge v1, v2, :cond_24

    iget-object v2, p0, Li6/g;->a:Li6/u;

    invoke-virtual {v2, v1}, Li6/u;->d(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/g$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Li6/g;->l(Li6/g$a;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_24
    iget-object v1, p0, Li6/g;->a:Li6/u;

    invoke-virtual {v1}, Li6/u;->f()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/g$a;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Li6/g;->l(Li6/g$a;Ljava/lang/Object;)V

    goto :goto_2e

    :cond_48
    iget-boolean p0, p0, Li6/g;->c:Z

    iput-boolean p0, v0, Li6/g;->c:Z

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    instance-of p0, p1, [B

    if-eqz p0, :cond_f

    check-cast p1, [B

    array-length p0, p1

    new-array p0, p0, [B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0

    :cond_f
    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Li6/g;->b()Li6/g;

    move-result-object p0

    return-object p0
.end method

.method public f(Li6/g$a;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Li6/g;->a:Li6/u;

    invoke-virtual {p0, p1}, Li6/u;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Li6/k;

    if-eqz p1, :cond_10

    check-cast p0, Li6/k;

    invoke-virtual {p0}, Li6/k;->a()Li6/p;

    move-result-object p0

    :cond_10
    return-object p0
.end method

.method public final h(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li6/g$a;

    invoke-interface {p0}, Li6/g$a;->getLiteJavaType()Li6/z;

    move-result-object v0

    sget-object v1, Li6/z;->j:Li6/z;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_51

    invoke-interface {p0}, Li6/g$a;->isRepeated()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_33

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_51

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li6/p;

    invoke-interface {p1}, Li6/q;->isInitialized()Z

    move-result p1

    if-nez p1, :cond_20

    return v0

    :cond_33
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Li6/p;

    if-eqz p1, :cond_44

    check-cast p0, Li6/p;

    invoke-interface {p0}, Li6/q;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_51

    return v0

    :cond_44
    instance-of p0, p0, Li6/k;

    if-eqz p0, :cond_49

    return v2

    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_51
    return v2
.end method

.method public i()V
    .registers 5

    iget-boolean v0, p0, Li6/g;->b:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Li6/g;->a:Li6/u;

    check-cast v0, Li6/t;

    iget-boolean v1, v0, Li6/u;->d:Z

    if-nez v1, :cond_62

    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0}, Li6/u;->e()I

    move-result v2

    if-ge v1, v2, :cond_34

    invoke-virtual {v0, v1}, Li6/u;->d(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/g$a;

    invoke-interface {v3}, Li6/g$a;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_34
    invoke-virtual {v0}, Li6/u;->f()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3c
    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_62

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/g$a;

    invoke-interface {v3}, Li6/g$a;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    :cond_62
    iget-boolean v1, v0, Li6/u;->d:Z

    const/4 v2, 0x1

    if-nez v1, :cond_7e

    iget-object v1, v0, Li6/u;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_7a

    :cond_74
    iget-object v1, v0, Li6/u;->c:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_7a
    iput-object v1, v0, Li6/u;->c:Ljava/util/Map;

    iput-boolean v2, v0, Li6/u;->d:Z

    :cond_7e
    iput-boolean v2, p0, Li6/g;->b:Z

    return-void
.end method

.method public final j(Ljava/util/Map$Entry;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li6/g$a;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Li6/k;

    if-eqz v1, :cond_14

    check-cast p1, Li6/k;

    invoke-virtual {p1}, Li6/k;->a()Li6/p;

    move-result-object p1

    :cond_14
    invoke-interface {v0}, Li6/g$a;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-virtual {p0, v0}, Li6/g;->f(Li6/g$a;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_25
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0, v2}, Li6/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_40
    iget-object p0, p0, Li6/g;->a:Li6/u;

    invoke-virtual {p0, v0, v1}, Li6/u;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    :cond_46
    invoke-interface {v0}, Li6/g$a;->getLiteJavaType()Li6/z;

    move-result-object v1

    sget-object v2, Li6/z;->j:Li6/z;

    if-ne v1, v2, :cond_74

    invoke-virtual {p0, v0}, Li6/g;->f(Li6/g$a;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5e

    iget-object v1, p0, Li6/g;->a:Li6/u;

    invoke-virtual {p0, p1}, Li6/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Li6/u;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    :cond_5e
    check-cast v1, Li6/p;

    invoke-interface {v1}, Li6/p;->toBuilder()Li6/p$a;

    move-result-object v1

    check-cast p1, Li6/p;

    invoke-interface {v0, v1, p1}, Li6/g$a;->c(Li6/p$a;Li6/p;)Li6/p$a;

    move-result-object p1

    invoke-interface {p1}, Li6/p$a;->build()Li6/p;

    move-result-object p1

    iget-object p0, p0, Li6/g;->a:Li6/u;

    invoke-virtual {p0, v0, p1}, Li6/u;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7d

    :cond_74
    iget-object v1, p0, Li6/g;->a:Li6/u;

    invoke-virtual {p0, p1}, Li6/g;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Li6/u;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7d
    return-void
.end method

.method public l(Li6/g$a;Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    invoke-interface {p1}, Li6/g$a;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_34

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Li6/g$a;->getLiteType()Li6/y;

    move-result-object v2

    invoke-static {v2, v1}, Li6/g;->m(Li6/y;Ljava/lang/Object;)V

    goto :goto_18

    :cond_2a
    move-object p2, v0

    goto :goto_3b

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_34
    invoke-interface {p1}, Li6/g$a;->getLiteType()Li6/y;

    move-result-object v0

    invoke-static {v0, p2}, Li6/g;->m(Li6/y;Ljava/lang/Object;)V

    :goto_3b
    instance-of v0, p2, Li6/k;

    if-eqz v0, :cond_42

    const/4 v0, 0x1

    iput-boolean v0, p0, Li6/g;->c:Z

    :cond_42
    iget-object p0, p0, Li6/g;->a:Li6/u;

    invoke-virtual {p0, p1, p2}, Li6/u;->h(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
