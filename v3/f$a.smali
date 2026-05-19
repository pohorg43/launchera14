.class public Lv3/f$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lv3/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/f;
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
    .registers 5
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

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    instance-of p0, p1, Ljava/lang/reflect/GenericArrayType;

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_18

    :cond_c
    instance-of p0, p1, Ljava/lang/Class;

    if-eqz p0, :cond_17

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_18

    :cond_17
    move-object p0, v0

    :goto_18
    if-nez p0, :cond_1b

    return-object v0

    :cond_1b
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_22

    return-object v0

    :cond_22
    invoke-static {p0}, Lv3/i0;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p3, p0}, Lv3/e0;->b(Ljava/lang/reflect/Type;)Lv3/r;

    move-result-object p0

    new-instance p2, Lv3/f;

    invoke-direct {p2, p1, p0}, Lv3/f;-><init>(Ljava/lang/Class;Lv3/r;)V

    invoke-virtual {p2}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    return-object p0
.end method
