.class public final synthetic Lx8/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lv3/r$a;


# static fields
.field public static final synthetic a:Lx8/a;


# direct methods
.method public static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lx8/a;

    invoke-direct {v0}, Lx8/a;-><init>()V

    sput-object v0, Lx8/a;->a:Lx8/a;

    return-void
.end method

.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;Ljava/util/Set;Lv3/e0;)Lv3/r;
    .registers 8

    sget-object p0, Lx8/b;->c:Lx8/b$a;

    const-class p0, Ljava/lang/String;

    const-class v0, Ljava/lang/Object;

    invoke-static {p1}, Lv3/i0;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "annotations"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    if-eqz p2, :cond_18

    goto :goto_20

    :cond_18
    const-class p2, Ljava/util/HashMap;

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_22

    :goto_20
    const/4 p0, 0x0

    goto :goto_47

    :cond_22
    const-class p2, Ljava/util/Properties;

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne p1, p2, :cond_2f

    new-array p1, v1, [Ljava/lang/reflect/Type;

    aput-object p0, p1, v3

    aput-object p0, p1, v2

    goto :goto_35

    :cond_2f
    new-array p1, v1, [Ljava/lang/reflect/Type;

    aput-object v0, p1, v3

    aput-object v0, p1, v2

    :goto_35
    new-instance p0, Lx8/b;

    const-string p2, "moshi"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aget-object p2, p1, v3

    aget-object p1, p1, v2

    invoke-direct {p0, p3, p2, p1}, Lx8/b;-><init>(Lv3/e0;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    invoke-virtual {p0}, Lv3/r;->b()Lv3/r;

    move-result-object p0

    :goto_47
    return-object p0
.end method
