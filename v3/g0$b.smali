.class public Lv3/g0$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lv3/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;Ljava/util/Set;Lv3/e0;)Lv3/r;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/util/Set<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lv3/e0;",
            ")",
            "Lv3/r<",
            "*>;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_8

    return-object p2

    :cond_8
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_f

    sget-object p0, Lv3/g0;->b:Lv3/r;

    return-object p0

    :cond_f
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_16

    sget-object p0, Lv3/g0;->c:Lv3/r;

    return-object p0

    :cond_16
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_1d

    sget-object p0, Lv3/g0;->d:Lv3/r;

    return-object p0

    :cond_1d
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_24

    sget-object p0, Lv3/g0;->e:Lv3/r;

    return-object p0

    :cond_24
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_2b

    sget-object p0, Lv3/g0;->f:Lv3/r;

    return-object p0

    :cond_2b
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_32

    sget-object p0, Lv3/g0;->g:Lv3/r;

    return-object p0

    :cond_32
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_39

    sget-object p0, Lv3/g0;->h:Lv3/r;

    return-object p0

    :cond_39
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, p0, :cond_40

    sget-object p0, Lv3/g0;->i:Lv3/r;

    return-object p0

    :cond_40
    const-class p0, Ljava/lang/Boolean;

    if-ne p1, p0, :cond_4b

    sget-object p0, Lv3/g0;->b:Lv3/r;

    invoke-virtual {p0}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    return-object p0

    :cond_4b
    const-class p0, Ljava/lang/Byte;

    if-ne p1, p0, :cond_56

    sget-object p0, Lv3/g0;->c:Lv3/r;

    invoke-virtual {p0}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    return-object p0

    :cond_56
    const-class p0, Ljava/lang/Character;

    if-ne p1, p0, :cond_61

    sget-object p0, Lv3/g0;->d:Lv3/r;

    invoke-virtual {p0}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    return-object p0

    :cond_61
    const-class p0, Ljava/lang/Double;

    if-ne p1, p0, :cond_6c

    sget-object p0, Lv3/g0;->e:Lv3/r;

    invoke-virtual {p0}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    return-object p0

    :cond_6c
    const-class p0, Ljava/lang/Float;

    if-ne p1, p0, :cond_77

    sget-object p0, Lv3/g0;->f:Lv3/r;

    invoke-virtual {p0}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    return-object p0

    :cond_77
    const-class p0, Ljava/lang/Integer;

    if-ne p1, p0, :cond_82

    sget-object p0, Lv3/g0;->g:Lv3/r;

    invoke-virtual {p0}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    return-object p0

    :cond_82
    const-class p0, Ljava/lang/Long;

    if-ne p1, p0, :cond_8d

    sget-object p0, Lv3/g0;->h:Lv3/r;

    invoke-virtual {p0}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    return-object p0

    :cond_8d
    const-class p0, Ljava/lang/Short;

    if-ne p1, p0, :cond_98

    sget-object p0, Lv3/g0;->i:Lv3/r;

    invoke-virtual {p0}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    return-object p0

    :cond_98
    const-class p0, Ljava/lang/String;

    if-ne p1, p0, :cond_a3

    sget-object p0, Lv3/g0;->j:Lv3/r;

    invoke-virtual {p0}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    return-object p0

    :cond_a3
    const-class p0, Ljava/lang/Object;

    if-ne p1, p0, :cond_b1

    new-instance p0, Lv3/g0$l;

    invoke-direct {p0, p3}, Lv3/g0$l;-><init>(Lv3/e0;)V

    invoke-virtual {p0}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    return-object p0

    :cond_b1
    invoke-static {p1}, Lv3/i0;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p3, p1, p0}, Lw3/b;->c(Lv3/e0;Ljava/lang/reflect/Type;Ljava/lang/Class;)Lv3/r;

    move-result-object p1

    if-eqz p1, :cond_bc

    return-object p1

    :cond_bc
    invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z

    move-result p1

    if-eqz p1, :cond_cc

    new-instance p1, Lv3/g0$k;

    invoke-direct {p1, p0}, Lv3/g0$k;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    return-object p0

    :cond_cc
    return-object p2
.end method
