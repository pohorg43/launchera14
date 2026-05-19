.class public final Ls5/c;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ls5/c;

.field public static final b:Lh6/f;

.field public static final c:Lh6/f;

.field public static final d:Lh6/f;

.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lh6/c;",
            "Lh6/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Ls5/c;

    invoke-direct {v0}, Ls5/c;-><init>()V

    sput-object v0, Ls5/c;->a:Ls5/c;

    const-string v0, "message"

    invoke-static {v0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    const-string v1, "identifier(\"message\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ls5/c;->b:Lh6/f;

    const-string v0, "allowedTargets"

    invoke-static {v0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    const-string v1, "identifier(\"allowedTargets\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ls5/c;->c:Lh6/f;

    const-string v0, "value"

    invoke-static {v0}, Lh6/f;->f(Ljava/lang/String;)Lh6/f;

    move-result-object v0

    const-string v1, "identifier(\"value\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Ls5/c;->d:Lh6/f;

    const/4 v0, 0x3

    new-array v0, v0, [Lh4/j;

    sget-object v1, Lf5/j$a;->u:Lh6/c;

    sget-object v2, Lr5/f0;->c:Lh6/c;

    new-instance v3, Lh4/j;

    invoke-direct {v3, v1, v2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v3, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lf5/j$a;->x:Lh6/c;

    sget-object v3, Lr5/f0;->d:Lh6/c;

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lf5/j$a;->y:Lh6/c;

    sget-object v3, Lr5/f0;->f:Lh6/c;

    new-instance v4, Lh4/j;

    invoke-direct {v4, v2, v3}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v0, v1

    invoke-static {v0}, Li4/k0;->h([Lh4/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ls5/c;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lh6/c;Ly5/d;Lu5/g;)Lj5/c;
    .registers 5

    const-string p0, "kotlinName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "annotationOwner"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "c"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lf5/j$a;->n:Lh6/c;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    sget-object p0, Lr5/f0;->e:Lh6/c;

    const-string v0, "DEPRECATED_ANNOTATION"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2, p0}, Ly5/d;->f(Lh6/c;)Ly5/a;

    move-result-object p0

    if-nez p0, :cond_2a

    invoke-interface {p2}, Ly5/d;->z()Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2a
    new-instance p1, Ls5/e;

    invoke-direct {p1, p0, p3}, Ls5/e;-><init>(Ly5/a;Lu5/g;)V

    return-object p1

    :cond_30
    sget-object p0, Ls5/c;->e:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh6/c;

    const/4 p1, 0x0

    if-eqz p0, :cond_49

    invoke-interface {p2, p0}, Ly5/d;->f(Lh6/c;)Ly5/a;

    move-result-object p0

    if-eqz p0, :cond_49

    sget-object p1, Ls5/c;->a:Ls5/c;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p3, p2}, Ls5/c;->b(Ly5/a;Lu5/g;Z)Lj5/c;

    move-result-object p0

    move-object p1, p0

    :cond_49
    return-object p1
.end method

.method public final b(Ly5/a;Lu5/g;Z)Lj5/c;
    .registers 5

    const-string p0, "annotation"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "c"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ly5/a;->c()Lh6/b;

    move-result-object p0

    sget-object v0, Lr5/f0;->c:Lh6/c;

    invoke-static {v0}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance p0, Ls5/i;

    invoke-direct {p0, p1, p2}, Ls5/i;-><init>(Ly5/a;Lu5/g;)V

    goto :goto_59

    :cond_20
    sget-object v0, Lr5/f0;->d:Lh6/c;

    invoke-static {v0}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    new-instance p0, Ls5/h;

    invoke-direct {p0, p1, p2}, Ls5/h;-><init>(Ly5/a;Lu5/g;)V

    goto :goto_59

    :cond_32
    sget-object v0, Lr5/f0;->f:Lh6/c;

    invoke-static {v0}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance p0, Ls5/b;

    sget-object p3, Lf5/j$a;->y:Lh6/c;

    invoke-direct {p0, p2, p1, p3}, Ls5/b;-><init>(Lu5/g;Ly5/a;Lh6/c;)V

    goto :goto_59

    :cond_46
    sget-object v0, Lr5/f0;->e:Lh6/c;

    invoke-static {v0}, Lh6/b;->l(Lh6/c;)Lh6/b;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/4 p0, 0x0

    goto :goto_59

    :cond_54
    new-instance p0, Lv5/e;

    invoke-direct {p0, p2, p1, p3}, Lv5/e;-><init>(Lu5/g;Ly5/a;Z)V

    :goto_59
    return-object p0
.end method
