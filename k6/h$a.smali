.class public Lk6/h$a;
.super Ll5/i;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk6/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Li5/e;Li5/v0;Z)V
    .registers 12

    const/4 v0, 0x0

    if-eqz p1, :cond_75

    if-eqz p2, :cond_70

    const/4 v3, 0x0

    sget v1, Lj5/h;->I:I

    sget-object v4, Lj5/h$a;->b:Lj5/h;

    const/4 v5, 0x1

    sget-object v6, Li5/b$a;->a:Li5/b$a;

    move-object v1, p0

    move-object v2, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Ll5/i;-><init>(Li5/e;Li5/k;Lj5/h;ZLi5/b$a;Li5/v0;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    sget v1, Lk6/i;->a:I

    invoke-interface {p1}, Li5/e;->f()Li5/f;

    move-result-object v1

    sget-object v2, Li5/f;->c:Li5/f;

    if-eq v1, v2, :cond_62

    invoke-virtual {v1}, Li5/f;->a()Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_62

    :cond_28
    invoke-static {p1}, Lk6/i;->v(Li5/l;)Z

    move-result v1

    if-eqz v1, :cond_46

    if-eqz p3, :cond_3b

    sget-object p1, Li5/s;->c:Li5/t;

    if-eqz p1, :cond_35

    goto :goto_66

    :cond_35
    const/16 p0, 0x32

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0

    :cond_3b
    sget-object p1, Li5/s;->a:Li5/t;

    if-eqz p1, :cond_40

    goto :goto_66

    :cond_40
    const/16 p0, 0x33

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0

    :cond_46
    invoke-static {p1}, Lk6/i;->n(Li5/l;)Z

    move-result p1

    if-eqz p1, :cond_57

    sget-object p1, Li5/s;->k:Li5/t;

    if-eqz p1, :cond_51

    goto :goto_66

    :cond_51
    const/16 p0, 0x34

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0

    :cond_57
    sget-object p1, Li5/s;->e:Li5/t;

    if-eqz p1, :cond_5c

    goto :goto_66

    :cond_5c
    const/16 p0, 0x35

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0

    :cond_62
    :goto_62
    sget-object p1, Li5/s;->a:Li5/t;

    if-eqz p1, :cond_6a

    :goto_66
    invoke-virtual {p0, p2, p1}, Ll5/i;->O0(Ljava/util/List;Li5/t;)Ll5/i;

    return-void

    :cond_6a
    const/16 p0, 0x31

    invoke-static {p0}, Lk6/i;->a(I)V

    throw v0

    :cond_70
    const/4 p0, 0x1

    invoke-static {p0}, Lk6/h$a;->z(I)V

    throw v0

    :cond_75
    const/4 p0, 0x0

    invoke-static {p0}, Lk6/h$a;->z(I)V

    throw v0
.end method

.method public static synthetic z(I)V
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_c

    const-string p0, "containingClass"

    aput-object p0, v0, v1

    goto :goto_10

    :cond_c
    const-string p0, "source"

    aput-object p0, v0, v1

    :goto_10
    const-string p0, "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory$DefaultClassConstructorDescriptor"

    aput-object p0, v0, v2

    const/4 p0, 0x2

    const-string v1, "<init>"

    aput-object v1, v0, p0

    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
