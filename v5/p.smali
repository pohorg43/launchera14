.class public Lv5/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li7/b$c;


# static fields
.field public static final a:Lv5/p;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lv5/p;

    invoke-direct {v0}, Lv5/p;-><init>()V

    sput-object v0, Lv5/p;->a:Lv5/p;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .registers 2

    check-cast p1, Li5/e;

    sget p0, Lv5/r;->p:I

    invoke-interface {p1}, Li5/h;->h()Ly6/j1;

    move-result-object p0

    invoke-interface {p0}, Ly6/j1;->b()Ljava/util/Collection;

    move-result-object p0

    const-string p1, "it.typeConstructor.supertypes"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Li4/v;->x(Ljava/lang/Iterable;)Lj7/h;

    move-result-object p0

    sget-object p1, Lv5/s;->a:Lv5/s;

    invoke-static {p0, p1}, Lj7/p;->q(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p0

    invoke-static {p0}, Lj7/p;->k(Lj7/h;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method
