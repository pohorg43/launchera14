.class public Lv3/d0$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lv3/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/d0;
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
    .registers 9
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

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    const/4 p2, 0x0

    if-nez p0, :cond_8

    return-object p2

    :cond_8
    invoke-static {p1}, Lv3/i0;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    const-class v0, Ljava/util/Map;

    if-eq p0, v0, :cond_11

    return-object p2

    :cond_11
    const-class p2, Ljava/lang/Object;

    const-class v0, Ljava/lang/String;

    const-class v1, Ljava/util/Properties;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v1, :cond_23

    new-array p0, v2, [Ljava/lang/reflect/Type;

    aput-object v0, p0, v3

    aput-object v0, p0, v4

    goto :goto_3a

    :cond_23
    const-class v0, Ljava/util/Map;

    invoke-static {p1, p0, v0}, Lv3/i0;->d(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz p1, :cond_34

    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_3a

    :cond_34
    new-array p0, v2, [Ljava/lang/reflect/Type;

    aput-object p2, p0, v3

    aput-object p2, p0, v4

    :goto_3a
    new-instance p1, Lv3/d0;

    aget-object p2, p0, v3

    aget-object p0, p0, v4

    invoke-direct {p1, p3, p2, p0}, Lv3/d0;-><init>(Lv3/e0;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    invoke-virtual {p1}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    return-object p0
.end method
